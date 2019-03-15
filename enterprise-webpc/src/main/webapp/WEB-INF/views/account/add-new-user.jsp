<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">

<title>Home</title>

<meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Icons -->
<!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->

<link rel="shortcut icon" href="<c:url value='/static-resources/img/favicon.png'/>" />
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon57.png'/>" sizes="57x57">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon72.png'/>" sizes="72x72">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon76.png'/>" sizes="76x76">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon114.png'/>" sizes="114x114">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon120.png'/>" sizes="120x120">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon144.png'/>" sizes="144x144">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon152.png'/>" sizes="152x152">
<link rel="apple-touch-icon" href="<c:url value='/static-resources/img/icon180.png'/>" sizes="180x180">
<!-- END Icons -->

<link rel="stylesheet" href="<c:url value='/static-resources/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/static-resources/css/plugins.css'/>">
<link rel="stylesheet" href="<c:url value='/static-resources/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/static-resources/css/themes/flat.css'/>">
<script src="<c:url value='/static-resources/js/vendor/modernizr-3.3.1.min.js'/>"></script>
</head>
<!-- URL definition -->
<c:url var="accountListUrl" value="/account-management/" />
<c:url var="logoutUrl" value="/logout/"/>
<!-- END URL -->
<body>
	<div id="page-wrapper" class="page-loading">
		<div class="preloader">
			<div class="inner">
				<div class="preloader-spinner themed-background hidden-lt-ie10"></div>
				<h3 class="text-primary visible-lt-ie10">
					<strong>Loading..</strong>
				</h3>
			</div>
		</div>

		<div id="page-container" class="sidebar-visible-lg-full fixed-width">
			<!-- Main Sidebar -->
			<div id="sidebar">
				<!-- Sidebar Brand -->
				<div id="sidebar-brand" class="themed-background">
					<a href="javascript:void(0)" class="sidebar-title"> <i class="fa fa-cube"></i> <span class="sidebar-nav-mini-hide">Functions</span>
					</a>
				</div>
				<!-- END Sidebar Brand -->

				<!-- Wrapper for scrolling functionality -->
				<div id="sidebar-scroll">
					<!-- Sidebar Content -->
					<div class="sidebar-content">
						<!-- Sidebar Navigation -->
						<ul class="sidebar-nav">
							<li>
								<a href="#" class="sidebar-nav-menu">
									<i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
									<i class="fa fa-rocket sidebar-nav-icon"></i>
									<span class="sidebar-nav-mini-hide">
										<spring:message code="manage.settings.user.text"/>
									</span>
								</a>
								<ul>
									<li><a href="${accountListUrl}"><spring:message code="manage.settings.user.list"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting"/></a></li>
								</ul></li>
							<li>
							
							<li>
								<a href="#" class="sidebar-nav-menu">
									<i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
									<i class="fa fa-rocket sidebar-nav-icon"></i>
									<span class="sidebar-nav-mini-hide">
										<spring:message code="manage.settings.user.text"/>
									</span>
								</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting"/></a></li>
								</ul></li>
							<li>
							
							<li>
								<a href="#" class="sidebar-nav-menu">
									<i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
									<i class="fa fa-rocket sidebar-nav-icon"></i>
									<span class="sidebar-nav-mini-hide">
										<spring:message code="manage.settings.user.text"/>
									</span>
								</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting"/></a></li>
								</ul></li>
							<li>
							
							<li>
								<a href="#" class="sidebar-nav-menu">
									<i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
									<i class="fa fa-rocket sidebar-nav-icon"></i>
									<span class="sidebar-nav-mini-hide">
										<spring:message code="manage.settings.user.text"/>
									</span>
								</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting"/></a></li>
								</ul></li>
							<li>
							
							<li>
								<a href="#" class="sidebar-nav-menu">
									<i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
									<i class="fa fa-rocket sidebar-nav-icon"></i>
									<span class="sidebar-nav-mini-hide">
										<spring:message code="manage.settings.user.text"/>
									</span>
								</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find"/></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting"/></a></li>
								</ul></li>
							<li>
						</ul>
						<!-- END Sidebar Navigation -->
					</div>
					<!-- END Sidebar Content -->
				</div>
				<!-- END Wrapper for scrolling functionality -->
			</div>
			<!-- END Main Sidebar -->

			<!-- Main Container -->
			<div id="main-container">
				<header class="navbar navbar-inverse">
					<!-- Left Header Navigation -->
					<ul class="nav navbar-nav-custom">
						<!-- Main Sidebar Toggle Button -->
						<li><a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();"> <i class="fa fa-ellipsis-v fa-fw animation-fadeInRight" id="sidebar-toggle-mini"></i> <i class="fa fa-bars fa-fw animation-fadeInRight" id="sidebar-toggle-full"></i>
						</a></li>
						<!-- END Main Sidebar Toggle Button -->

						<!-- Header Link -->
						<li class="hidden-xs animation-fadeInQuick">
							<a href="">
								<strong><spring:message code="manage.settings.user.text"/></strong>
							</a>
						</li>
						<!-- END Header Link -->
					</ul>
					<!-- END Left Header Navigation -->

					<!-- Right Header Navigation -->
					<ul class="nav navbar-nav-custom pull-right">
						<!-- User Dropdown -->
						<li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"> <img src="<c:url value='/static-resources/img/placeholders/avatars/avatar9.jpg'/>" alt="avatar">
						</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li class="dropdown-header"><strong>ADMINISTRATOR</strong></li>
								<li><a href="page_app_email.html"> <i class="fa fa-inbox fa-fw pull-right"></i> Inbox
								</a></li>
								<li><a href="page_app_social.html"> <i class="fa fa-pencil-square fa-fw pull-right"></i> Profile
								</a></li>
								<li><a href="page_app_media.html"> <i class="fa fa-picture-o fa-fw pull-right"></i> Media Manager
								</a></li>
								<li class="divider">
								<li>
								<li><a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar-alt');"> <i class="gi gi-settings fa-fw pull-right"></i> Settings
								</a></li>
								<li><a href="page_ready_lock_screen.html"> <i class="gi gi-lock fa-fw pull-right"></i> Lock Account
								</a></li>
								<li><a href="${logoutUrl}"> <i class="fa fa-power-off fa-fw pull-right"></i> Log out
								</a></li>
							</ul></li>
						<!-- END User Dropdown -->
					</ul>
					<!-- END Right Header Navigation -->
				</header>
				<!-- END Header -->

				<!-- Page content -->
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
						<form:form id="add-new-user-form" modelAttribute="mstUser" method="post" cssClass="form-horizontal form-bordered">
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
			<!-- END Main Container -->
		</div>
		<!-- END Page Container -->
	</div>
	<!-- END Page Wrapper -->

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
			//AddNewUserForm.init();
		});
	</script>

</body>
</html>
