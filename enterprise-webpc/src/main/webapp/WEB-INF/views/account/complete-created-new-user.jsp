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
<c:url var="registUserUrl" value="/account-management/regist" />
<c:url var="logoutUrl" value="/logout/" />
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
							<li><a href="#" class="sidebar-nav-menu"> <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i> <i class="fa fa-rocket sidebar-nav-icon"></i> <span class="sidebar-nav-mini-hide"> <spring:message code="manage.settings.user.text" />
								</span>
							</a>
								<ul>
									<li><a href="${accountListUrl}"><spring:message code="manage.settings.user.list" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting" /></a></li>
								</ul></li>
							<li>
							<li><a href="#" class="sidebar-nav-menu"> <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i> <i class="fa fa-rocket sidebar-nav-icon"></i> <span class="sidebar-nav-mini-hide"> <spring:message code="manage.settings.user.text" />
								</span>
							</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting" /></a></li>
								</ul></li>
							<li>
							<li><a href="#" class="sidebar-nav-menu"> <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i> <i class="fa fa-rocket sidebar-nav-icon"></i> <span class="sidebar-nav-mini-hide"> <spring:message code="manage.settings.user.text" />
								</span>
							</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting" /></a></li>
								</ul></li>
							<li>
							<li><a href="#" class="sidebar-nav-menu"> <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i> <i class="fa fa-rocket sidebar-nav-icon"></i> <span class="sidebar-nav-mini-hide"> <spring:message code="manage.settings.user.text" />
								</span>
							</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting" /></a></li>
								</ul></li>
							<li>
							<li><a href="#" class="sidebar-nav-menu"> <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i> <i class="fa fa-rocket sidebar-nav-icon"></i> <span class="sidebar-nav-mini-hide"> <spring:message code="manage.settings.user.text" />
								</span>
							</a>
								<ul>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.add" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.find" /></a></li>
									<li><a href="javascript:void(0)"><spring:message code="manage.settings.user.setting" /></a></li>
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
						<li class="hidden-xs animation-fadeInQuick"><a href=""> <strong><spring:message code="manage.settings.user.text" /></strong>
						</a></li>
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
									<h1>
										<spring:message code="manage.settings.user.add" />
									</h1>
								</div>
							</div>
							<sec:authorize access="hasRole('KANRISHA')">
								<div class="col-sm-6">
									<div class="header-section text-right">
										<a href="${accountListUrl}" class="btn btn-sm btn-default"><i class="fa fa-reply"></i>
										<spring:message code="system.action.list.text" /></a>
									</div>
								</div>
							</sec:authorize>
						</div>
					</div>
					<!-- END Static Layout Header -->

					<!-- Table Styles Block -->
					<div class="block">
						<!-- Create new user form -->
						<div id="clickable-first" class="step">
							<!-- Step Info -->
							<div class="form-group">
								<div class="col-xs-12">
									<ul class="nav nav-pills nav-justified clickable-steps">
										<li><a href="javascript:void(0)"><i class="fa fa-user"></i> <strong><spring:message code="common.form.3steps.input" /></strong></a></li>
										<li><a href="javascript:void(0)"><i class="fa fa-eye"></i> <strong><spring:message code="common.form.3steps.confirm" /></strong></a></li>
										<li class="active"><a href="javascript:void(0)"><i class="fa fa-check"></i> <strong><spring:message code="common.form.3steps.complete" /></strong></a></li>
									</ul>
								</div>
							</div>
							<!-- END Step Info -->
							<div class="form-group">
								<div class="col-xs-12">
									<br/>
									<!-- Info Alert -->
									<div class="alert alert-info alert-dismissable">
										<h4>
											<strong><spring:message code="account.created.success.info" /></strong>
										</h4>
										<p>
											<spring:message code="account.created.success.content.p1" arguments="${createdUser.loginId}" argumentSeparator=";"/>
										</p>
										<p>
											<spring:message code="account.created.success.content.p2" arguments="${createdUser.mailAddress}" argumentSeparator=";"/>
										</p>
										<p>
											<c:url var="userDetailUrl" value="/account-management/detail/${createdUser.loginId}"></c:url>
											<spring:message code="account.created.success.content.p3" arguments="${userDetailUrl}" argumentSeparator=";"/>
										</p>
										<div class="text-right"><a href="${accountListUrl}" class="btn btn-mx btn-success"><i class="fa fa-reply"></i>
											<spring:message code="system.action.list.text" />
										</a></div>
									</div>
									<!-- END Info Alert -->
								</div>
							</div>
						</div>
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
</body>
</html>
