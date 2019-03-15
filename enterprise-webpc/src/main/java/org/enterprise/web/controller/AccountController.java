package org.enterprise.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.enterprise.entity.MstRole;
import org.enterprise.entity.MstUser;
import org.enterprise.service.RoleService;
import org.enterprise.service.UserService;
import org.enterprise.web.config.EnterpriseConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller
@RequestMapping("/account-management")
@SessionAttributes("roles")
public class AccountController {

	private static final Logger logger = Logger.getLogger(AccountController.class);

	@Autowired
	UserService userService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	RoleService roleService;

	@Autowired
	EnterpriseConfiguration enterpriseConfiguration;

	/**
	 * Get default fist 10 records of MstUser
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String goListAccountPage(ModelMap model) {
		logger.info("pager:{limit:" + enterpriseConfiguration.getPagesLimit() + ", pagerSizeLimit: "
				+ enterpriseConfiguration.getPagesInPagerLimit() + "}");
		// Get list account
		List<MstUser> users = userService.getAllUsersWithPager(true, 1, enterpriseConfiguration.getPagesLimit());
		model.addAttribute("totalCount", userService.getTotalCount());
		model.addAttribute("currentPage", 1);
		model.addAttribute("users", users);
		model.addAttribute("limit", enterpriseConfiguration.getPagesLimit());
		model.addAttribute("pagingSize", enterpriseConfiguration.getPagesInPagerLimit());
		return "/account/list";
	}

	/**
	 * Get data of MstUser indicated by paging
	 * 
	 * @param pageIndex
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/{pageIndex}", "/{pageIndex}/" }, method = RequestMethod.GET)
	public String getListAccountWithPaging(@PathVariable String pageIndex, ModelMap model) {
		Integer pageIdx = 1;
		try {
			pageIdx = Integer.valueOf(pageIndex);
		} catch (Exception e) {
			pageIdx = 1;
		}
		logger.info("pager:{pageIndex: " + pageIdx + ", limit:" + enterpriseConfiguration.getPagesLimit()
				+ ", pagerSizeLimit: " + enterpriseConfiguration.getPagesInPagerLimit() + "}");
		// Get list account
		List<MstUser> users = userService.getAllUsersWithPager(true, pageIdx, enterpriseConfiguration.getPagesLimit());
		model.addAttribute("totalCount", userService.getTotalCount());
		model.addAttribute("currentPage", pageIdx);
		model.addAttribute("users", users);
		model.addAttribute("limit", enterpriseConfiguration.getPagesLimit());
		model.addAttribute("pagingSize", enterpriseConfiguration.getPagesInPagerLimit());
		return "/account/list";
	}

	@RequestMapping(value = { "/add-new-user", "/add-new-user/" }, method = RequestMethod.GET)
	public String goCreateNewAccountPage(ModelMap model, HttpServletRequest request) {
		Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
		MstUser mstUser = null;
		try {
			mstUser = (MstUser) flashMap.get("redirectMstUser");
		} catch (Exception e) {
			mstUser = new MstUser();
		}
		model.addAttribute("mstUser", mstUser);
		return "/account/add-new-user";
	}

	/**
	 * Data validation from database
	 * 
	 * @param mstUser ModelAttribute
	 * @param request HttpServletRequest
	 * @return List<FieldError>
	 */
	private List<FieldError> userRegistValidationFromServer(MstUser mstUser, HttpServletRequest request,
			boolean isFirstStepCheck) {
		List<FieldError> errors = new ArrayList<FieldError>();
		// Check password confirm correct (Only for input screen)
		if (isFirstStepCheck) {
			if (!userService.isConfirmPasswordMatched(mstUser.getLoginPassword(),
					request.getParameter("reLoginPassword"))) {
				// Add error message to view page
				FieldError duplicatedLoginId = new FieldError("mstUser", "loginPassword",
						messageSource.getMessage("Customized.mstUser.confirmPassword.notCorrect", new String[] {},
								LocaleContextHolder.getLocale()));
				errors.add(duplicatedLoginId);
			}
		}
		// Check duplicated by login id
		if (userService.isDuplicatedLoginId(mstUser.getLoginId())) {
			// Add error message to view page
			FieldError duplicatedLoginId = new FieldError("mstUser", "loginId",
					messageSource.getMessage("Customized.mstUser.loginId", new String[] { mstUser.getLoginId().trim() },
							LocaleContextHolder.getLocale()));
			errors.add(duplicatedLoginId);
		}
		// Check duplicated by mail address
		if (userService.isDuplocatedMailAddress(mstUser.getMailAddress())) {
			// Add error message to view page
			FieldError duplicatedEmail = new FieldError("mstUser", "mailAddress",
					messageSource.getMessage("Customized.mstUser.mailAddress",
							new String[] { mstUser.getMailAddress().trim() }, LocaleContextHolder.getLocale()));
			errors.add(duplicatedEmail);
		}
		return errors;
	}

	@RequestMapping(value = { "/add-new-user", "/add-new-user/" }, method = RequestMethod.POST)
	public String doConfirm(HttpServletRequest request, @Valid MstUser mstUser, BindingResult result, ModelMap model) {
		boolean firstValidation = true;
		if (result.hasErrors()) {
			model.addAttribute("mstUser", mstUser);
			model.addAttribute("hasError", true);
			model.addAttribute("errors", result.getAllErrors());
			return "/account/add-new-user";
		} else {
			List<FieldError> constraintDataErrors = userRegistValidationFromServer(mstUser, request, true);
			firstValidation = constraintDataErrors.size() == 0;
			for (FieldError fieldError : constraintDataErrors) {
				result.addError((FieldError) fieldError);
			}
		}
		if (!firstValidation) {
			model.addAttribute("mstUser", mstUser);
			model.addAttribute("hasError", true);
			model.addAttribute("errors", result.getAllErrors());
			return "/account/add-new-user";
		} else {
			model.addAttribute("mstUser", mstUser);
			return "/account/confirm-new-user";
		}
	}

	@RequestMapping(value = { "/regist", "/regist/" }, method = RequestMethod.POST)
	public String doRegist(HttpServletRequest request, @Valid MstUser mstUser, BindingResult result, ModelMap model,
			RedirectAttributes redirect) {
		String action = request.getParameter("action");
		logger.info("action:" + action);
		boolean secondValidation = true;
		if ("backToInput".equals(action)) {
			redirect.addFlashAttribute("redirectMstUser", mstUser);
			return "redirect:/account-management/add-new-user";
		} else if ("doRegist".equals(action)) {
			model.addAttribute("mstUser", mstUser);
			if (result.hasErrors()) {
				secondValidation = false;
			} else {
				// Re-validate before save to database
				List<FieldError> constraintDataErrors = userRegistValidationFromServer(mstUser, request, false);
				secondValidation = constraintDataErrors.size() == 0;
				for (FieldError fieldError : constraintDataErrors) {
					result.addError((FieldError) fieldError);
				}
			}
			if (!secondValidation) {
				// Has error when validate from database
				model.addAttribute("hasError", true);
				model.addAttribute("errors", result.getAllErrors());
				return "/account/add-new-user";
			} else {
				// Save to database
				userService.addNewUser(mstUser);
				model.addAttribute("createdUser", mstUser);
				// Send notification mail to user

				return "/account/complete-created-new-user";
			}
		} else {
			return "redirect:/";
		}
	}

	@RequestMapping(value = { "/detail/{loginId}", "/detail/{loginId}/" }, method = RequestMethod.GET)
	public String viewUserDetail(ModelMap model, @PathVariable String loginId) {
		MstUser mstUserDetail = userService.getByLoginId(loginId);
		if (mstUserDetail != null) {
			model.addAttribute("mstUser", mstUserDetail);
			return "/account/user-detail";
		} else {
			return "/404";
		}
	}

	@ModelAttribute("kenries")
	public List<MstRole> initialKenries() {
		return roleService.getAllRoles();
	}
}
