<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<link rel="stylesheet" href="<c:url value='/static-resources/css/themes/passion.css'/>">
<script src="<c:url value='/static-resources/js/vendor/modernizr-3.3.1.min.js'/>"></script>
</head>
<!-- URL definition -->
<c:url var="accountListUrl" value="/account-management" />
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

				<!-- Sidebar Extra Info -->
				<div id="sidebar-extra-info" class="sidebar-content sidebar-nav-mini-hide">
					<div class="push-bit">
						<span class="pull-right"> <a href="javascript:void(0)" class="text-muted"><i class="fa fa-plus"></i></a>
						</span> <small><strong>78 GB</strong> / 100 GB</small>
					</div>
					<div class="progress progress-mini push-bit">
						<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%"></div>
					</div>
					<div class="text-center">
						<small>Crafted with <i class="fa fa-heart text-danger"></i> by <a href="https://www.facebook.com/khiemtd.aries" target="_blank">Trần Duy Khiêm</a></small><br> <small><span id="year-copy"></span> &copy; <a href="https://www.facebook.com/khiemtd.aries" target="_blank"><spring:message code="login_action.page.form.name"/></a></small>
					</div>
				</div>
				<!-- END Sidebar Extra Info -->
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
						<li class="hidden-xs animation-fadeInQuick"><a href=""><strong>UI LAYOUTS</strong></a></li>
						<!-- END Header Link -->
					</ul>
					<!-- END Left Header Navigation -->

					<!-- Right Header Navigation -->
					<ul class="nav navbar-nav-custom pull-right">
						<!-- Search Form -->
						<li>
							<form action="page_ready_search_results.html" method="post" class="navbar-form-custom">
								<input type="text" id="top-search" name="top-search" class="form-control" placeholder="Search..">
							</form>
						</li>
						<!-- END Search Form -->

						<!-- Alternative Sidebar Toggle Button -->
						<li><a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar-alt');this.blur();"> <i class="gi gi-settings"></i>
						</a></li>
						<!-- END Alternative Sidebar Toggle Button -->

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
								<li><a href="page_ready_login.html"> <i class="fa fa-power-off fa-fw pull-right"></i> Log out
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
									<h1>Static Fixed Width</h1>
								</div>
							</div>
							<div class="col-sm-6 hidden-xs">
								<div class="header-section">
									<ul class="breadcrumb breadcrumb-top">
										<li>UI Layouts</li>
										<li><a href="">Static Fixed Width</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- END Static Layout Header -->

					<!-- Demo Article -->
					<div class="block full">
						<div class="row">
							<div class="col-md-10 col-md-offset-1 col-lg-6 col-lg-offset-3">
								<article>
									<div class="text-center">
										<img src="<c:url value='/static-resources/img/placeholders/avatars/avatar9.jpg'/>" alt="image" class="img-circle">
										<h3 class="sub-header text-right">
											<a href="javascript:void(0)" class="pull-left"><strong>John Doe</strong></a> <small class="text-muted"><em>August 25, 2014</em></small>
										</h3>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices, justo vel imperdiet gravida, urna ligula hendrerit nibh, ac cursus nibh sapien in purus. Mauris tincidunt tincidunt turpis in porta. Integer fermentum tincidunt auctor. Vestibulum ullamcorper, odio sed
										rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce
										purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque?</p>
									<p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et
										facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									<div class="row push-top-bottom">
										<div class="col-xs-6 push">
											<img src="<c:url value='/static-resources/img/placeholders/photos/photo8.jpg'/>" alt="image" class="img-responsive center-block">
										</div>
										<div class="col-xs-6 push">
											<img src="<c:url value='/static-resources/img/placeholders/photos/photo12.jpg'/>" alt="image" class="img-responsive center-block">
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices, justo vel imperdiet gravida, urna ligula hendrerit nibh, ac cursus nibh sapien in purus. Mauris tincidunt tincidunt turpis in porta. Integer fermentum tincidunt auctor. Vestibulum ullamcorper, odio sed
										rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce
										purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque?</p>
									<p>Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales! Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec ultrices. Sed at mi velit. Ut egestas tempor est, in cursus enim venenatis eget! Nulla quis ligula ipsum. Donec vitae ultrices dolor? Donec lacinia venenatis
										metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non.
										Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									<div class="row push-top-bottom">
										<div class="col-xs-6 push">
											<img src="<c:url value='/static-resources/img/placeholders/photos/photo7.jpg'/>" alt="image" class="img-responsive center-block">
										</div>
										<div class="col-xs-6 push">
											<img src="<c:url value='/static-resources/img/placeholders/photos/photo6.jpg'/>" alt="image" class="img-responsive center-block">
										</div>
									</div>
									<p>Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et
										facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									<p>Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales! Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec ultrices. Sed at mi velit. Ut egestas tempor est, in cursus enim venenatis eget! Nulla quis ligula ipsum. Donec vitae ultrices dolor? Donec lacinia venenatis
										metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non.
										Suspendisse potenti. Pellentesque non accumsan orci. Praesent at lacinia dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								</article>
							</div>
						</div>
					</div>
					<!-- END Demo Article -->
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
