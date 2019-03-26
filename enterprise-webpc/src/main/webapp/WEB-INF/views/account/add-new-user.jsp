<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js">
<!--<![endif]-->
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<body>
	<div id="page-wrapper" class="page-loading">
		<jsp:include page="/WEB-INF/common/loader.jsp"></jsp:include>
		<div id="page-container" class="sidebar-visible-lg-full fixed-width">
			<jsp:include page="/WEB-INF/common/sidebar.jsp"></jsp:include>
			<div id="main-container">
				<jsp:include page="/WEB-INF/common/page-header.jsp"></jsp:include>
				<div id="page-content">
					<!-- Static Layout Header -->
					<div class="content-header">
						<div class="row">
							<div class="col-sm-6">
								<div class="header-section">
									<h1><spring:message code="manage.settings.user.add" /></h1>
								</div>
							</div>
							<sec:authorize access="hasRole('KANRISHA')">
							<div class="col-sm-6">
								<div class="header-section text-right">
									<a href="${accountListUrl}" class="btn btn-sm btn-default"><i class="fa fa-reply"></i><spring:message code="system.action.list.text"/></a>
								</div>
							</div>
							</sec:authorize>
						</div>
					</div>
					<!-- END Static Layout Header -->

					<!-- Table Styles Block -->
					<div class="block">
						<!-- Create new user form -->
						<form:form acceptCharset="UTF-8" id="add-new-user-form" modelAttribute="mstUser" method="post" cssClass="form-horizontal form-bordered">
							<!-- First Step -->
							<div id="clickable-first" class="step">
								<!-- Step Info -->
								<div class="form-group">
									<div class="col-xs-12">
										<ul class="nav nav-pills nav-justified clickable-steps">
											<li class="active"><a href="javascript:void(0)"><i class="fa fa-user"></i> <strong><spring:message code="common.form.3steps.input"/></strong></a></li>
											<li><a href="javascript:void(0)"><i class="fa fa-eye"></i> <strong><spring:message code="common.form.3steps.confirm"/></strong></a></li>
											<li><a href="javascript:void(0)"><i class="fa fa-check"></i> <strong><spring:message code="common.form.3steps.complete"/></strong></a></li>
										</ul>
									</div>
								</div>
								<c:if test="${hasError eq true}">
									<div class="form-group">
										<label class="col-md-4"></label>
										<div class="col-md-6">
											<div class="alert alert-enterprise-error alert-dismissable">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
											<spring:message code="system.action.error.notification"/>
											<ul>
											<c:forEach var="error" items="${errors}">
												<li><spring:message code="${error.defaultMessage}"/></li>
											</c:forEach>
											</ul>
											</div>
										</div>
									</div>
								</c:if>
								<!-- END Step Info -->
								<div class="form-group">
									<label class="col-md-4 control-label" for="loginId">
										<c:set var="loginIdLabel"><spring:message code="manage.account.loginId.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${loginIdLabel}" argumentSeparator=";"/></c:set>
										<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${loginIdLabel};5;50" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${loginIdLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${loginIdLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:input path="loginId" 
												id="loginId"
												name="loginId"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="fa fa-lock"></i></span>
										</div>
										
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label" for="loginPassword">
										<c:set var="loginPasswordLabel"><spring:message code="manage.account.loginPassword.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${loginPasswordLabel}" argumentSeparator=";"/></c:set>
										<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${loginPasswordLabel};5;100" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${loginPasswordLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${loginPasswordLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:password path="loginPassword" 
												id="loginPassword"
												name="loginPassword"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="fa fa-key"></i></span>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="reLoginPassword">
										<c:set var="reLoginPasswordLabel"><spring:message code="manage.account.reLoginPassword.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${reLoginPasswordLabel}" argumentSeparator=";"/></c:set>
										<c:set var="notMatchedMessage"><spring:message code="account.form.3steps.validate.notMatched" arguments="${reLoginPasswordLabel};${loginPasswordLabel}" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${reLoginPasswordLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${reLoginPasswordLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<input type="password" name="reLoginPassword" 
												id="reLoginPassword"
												required-message="${requiredMessage}"
												range-length-message="${notMatchedMessage}"
												not-matched-message="${notMatchedMessage}"
												class="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="gi gi-keys"></i></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="nameMei">
										<c:set var="fullNameLabel"><spring:message code="manage.account.fullname.text"/></c:set>
										<c:out value="${fullNameLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div>
										<div class="col-sm-3">
											<c:set var="firstNameLabel"><spring:message code="manage.account.firstname.text"/></c:set>
											<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${firstNameLabel}" argumentSeparator=";"/></c:set>
											<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${firstNameLabel};1;50" argumentSeparator=";"/></c:set>
											<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${firstNameLabel}" argumentSeparator=";"/></c:set>
											<form:input path="nameMei" 
												id="nameMei"
												name="nameMei"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											
										</div>
										<div class="col-sm-3">
											<c:set var="lastNameLabel"><spring:message code="manage.account.lastname.text"/></c:set>
											<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${lastNameLabel}" argumentSeparator=";"/></c:set>
											<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${lastNameLabel};1;50" argumentSeparator=";"/></c:set>
											<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${lastNameLabel}" argumentSeparator=";"/></c:set>
											<form:input path="nameSei" 
												id="nameSei"
												name="nameSei"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="mailAddress">
										<spring:message code="manage.account.email.text"/>
										<c:set var="mailAddressLabel"><spring:message code="manage.account.email.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${mailAddressLabel}" argumentSeparator=";"/></c:set>
										<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${mailAddressLabel};5;50" argumentSeparator=";"/></c:set>
										<c:set var="invalidFormatMessage"><spring:message code="account.form.3steps.validate.invalidFormat" arguments="${mailAddressLabel}" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${mailAddressLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${mailAddressLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:input path="mailAddress" 
												id="mailAddress"
												name="mailAddress"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												invalid-format-message="${invalidFormatMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="phoneNumber">
										<c:set var="phoneNumberLabel"><spring:message code="manage.account.phonenumber.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${phoneNumberLabel}" argumentSeparator=";"/></c:set>
										<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${phoneNumberLabel};9;20" argumentSeparator=";"/></c:set>
										<c:set var="invalidFormatMessage"><spring:message code="account.form.3steps.validate.invalidFormat" arguments="${phoneNumberLabel}" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${phoneNumberLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${phoneNumberLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:input path="phoneNumber" 
												id="phoneNumber"
												name="phoneNumber"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												invalid-format-message="${invalidFormatMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="fa fa-mobile"></i></span>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="homeAddress">
										<c:set var="homeAddressLabel"><spring:message code="manage.account.homeAddress.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${homeAddressLabel}" argumentSeparator=";"/></c:set>
										<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${homeAddressLabel};10;100" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${homeAddressLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${homeAddressLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:input path="homeAddress" 
												id="homeAddress"
												name="homeAddress"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="gi gi-home"></i></span>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="postCode">
										<c:set var="postCodeLabel"><spring:message code="manage.account.postCode.text"/></c:set>
										<c:set var="requiredMessage"><spring:message code="account.form.3steps.validate.required" arguments="${postCodeLabel}" argumentSeparator=";"/></c:set>
										<c:set var="rangeLengthMessage"><spring:message code="account.form.3steps.validate.invalidLength" arguments="${postCodeLabel};5;10" argumentSeparator=";"/></c:set>
										<c:set var="invalidFormatMessage"><spring:message code="account.form.3steps.validate.invalidFormat" arguments="${postCodeLabel}" argumentSeparator=";"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${postCodeLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${postCodeLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:input path="postNumber" 
												id="postNumber"
												name="postNumber"
												required-message="${requiredMessage}"
												range-length-message="${rangeLengthMessage}"
												invalid-format-message="${invalidFormatMessage}"
												cssClass="form-control"
												placeholder="${placeHolder}" />
											<span class="input-group-addon"><i class="hi hi-send"></i></span>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="roles">
										<c:set var="roleLabel"><spring:message code="manage.account.roles.text"/></c:set>
										<c:set var="placeHolder"><spring:message code="common.form.3steps.input.required.placeholder" arguments="${roleLabel}" argumentSeparator=";"/></c:set>
										<c:out value="${roleLabel}"></c:out>
										<br/>
										<span class="btn btn-xs btn-success">[<spring:message code="system.action.required.text"/>]</span>
										<c:set var="roleTypeNameI18N"><spring:message code="manage.account.role.i18n.field.mapping" /></c:set>
									</label>
									<div class="col-md-6">
										<form:select path="roles" multiple="multiple" name="kenries" id="kenries" cssClass="select-chosen" data-placeholder="${placeHolder}">
											<form:options items="${kenries}" itemValue="roleId" itemLabel="${roleTypeNameI18N}"/>
										</form:select>
									</div>
								</div>
							</div>
							<!-- END First Step -->


							<!-- Form Buttons -->
							<div class="form-group form-actions">
								<div class="col-md-8 col-md-offset-4">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									<button type="reset" class="btn btn-effect-ripple btn-default"><spring:message code="system.action.clear.text"/></button>
									<button type="submit" class="btn btn-effect-ripple btn-primary"><spring:message code="system.action.nextToConfirm.text"/></button>
								</div>
							</div>
							<!-- END Form Buttons -->
						</form:form>
						<!-- END Create new user form -->
					</div>
					<!-- END Table Styles Block -->
				</div>
				<!-- END Page Content -->
			</div>
		</div>
	</div>

	<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
	<script src="<c:url value='/static-resources/js/vendor/jquery-2.2.4.min.js'/>"></script>
	<script src="<c:url value='/static-resources/js/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/static-resources/js/plugins.js'/>"></script>
	<script src="<c:url value='/static-resources/js/app.js'/>"></script>
	<!-- Load and execute javascript code used only in this page -->
	<script src="<c:url value='/static-resources/js/pages/formsComponents.js'/>"></script>
	<script src="<c:url value='/static-resources/js/pages/readyAddNewUser.js'/>"></script>
	<script>
		$(function() {
			FormsComponents.init();
			AddNewUserForm.init();
		});
	</script>
</body>
</html>