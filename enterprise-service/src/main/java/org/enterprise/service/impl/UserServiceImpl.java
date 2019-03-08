package org.enterprise.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.enterprise.common.utils.CommonUtils;
import org.enterprise.entity.MstUser;
import org.enterprise.repository.UserDao;
import org.enterprise.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

/**
 * 
 * @author KHIEMTD
 *
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public List<MstUser> getAllUsers(boolean isGetRoles) {
		return userDao.findAll(isGetRoles);
	}

	@Override
	public List<MstUser> getAllUsersWithPager(boolean isGetRoles, int pageIndex, int pageSize) {
		Integer[] indicated = CommonUtils.pagingCalculated(pageIndex, userDao.getTotalCount(), pageSize);
		return userDao.findAllWithPager(isGetRoles, indicated[0], indicated[1]);
	}

	@Override
	public MstUser getByUserId(Integer id) {
		return userDao.findById(id);
	}

	@Override
	public MstUser getByLoginId(String loginId) {
		return userDao.findByLoginId(loginId);
	}

	@Override
	public Integer getTotalCount() {
		return userDao.getTotalCount();
	}

	@Override
	public void addNewUser(MstUser mstUser) {
		mstUser.setLoginPassword(passwordEncoder.encode(mstUser.getLoginPassword()));
		userDao.insert(mstUser);
	}

	@Override
	public void updateUser(MstUser mstUser) {
		MstUser currentUser = userDao.findById(mstUser.getUserId());
		if (currentUser != null) {
			if (!currentUser.getLoginPassword().equals(passwordEncoder.encode(mstUser.getLoginPassword()))) {
				currentUser.setLoginPassword(passwordEncoder.encode(mstUser.getLoginPassword()));
			}
			currentUser.setNameMei(mstUser.getNameMei());
			currentUser.setNameSei(mstUser.getNameMei());
			currentUser.setMailAddress(mstUser.getMailAddress());
			currentUser.setPhoneNumber(mstUser.getPhoneNumber());
			currentUser.setPostNumber(mstUser.getPostNumber());
			currentUser.setRoles(mstUser.getRoles());
			userDao.update(currentUser);
		}
	}

	@Override
	public void removeUser(String loginId) {
		userDao.deleteByLoginId(loginId);
	}

}
