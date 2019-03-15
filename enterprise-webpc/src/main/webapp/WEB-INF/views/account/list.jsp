<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="ePager" uri="http://localhost:8080/enterprise-webapp/tags/enterprisePager"%>
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
<c:url var="accountListUrl" value="/account-management/" />
<c:url var="logoutUrl" value="/logout/"/>
<c:url var="addNewUser" value="/account-management/add-new-user/"/>
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
									<h1><spring:message code="manage.settings.user.list" /></h1>
								</div>
							</div>
							<sec:authorize access="hasRole('KANRISHA')">
							<div class="col-sm-6">
								<div class="header-section text-right">
									<a href="${addNewUser}" class="btn btn-sm btn-info"><i class="fa fa-plus"></i><spring:message code="manage.settings.user.add"/></a>
									<button class="btn btn-sm btn-primary"><spring:message code="manage.settings.user.export" /> <i class="fa fa-cloud-download"></i></button>
								</div>
							</div>
							</sec:authorize>
						</div>
					</div>
					<!-- END Static Layout Header -->

					<!-- Table Styles Block -->
                        <div class="block">

                            <!-- Table Styles Content -->
                            <div class="table-responsive">
                                <table id="general-table" class="table table-striped table-bordered table-vcenter">
                                    <thead>
                                        <tr>
                                            <th style="width: 80px;" class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></th>
                                            <th><spring:message code="manage.account.loginId.text"/></th>
                                            <th><spring:message code="manage.account.firstname.text"/></th>
                                            <th><spring:message code="manage.account.lastname.text"/></th>
                                            <th><spring:message code="manage.account.email.text"/></th>
                                            <sec:authorize access="hasRole('KANRISHA')">
                                            	<th><spring:message code="manage.account.roles.text"/></th>
                                            </sec:authorize>
                                            <th style="width: 140px;" class="text-center"><i class="fa fa-flash"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="user" items="${users}">
                                    		<tr>
	                                            <td class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></td>
	                                            <td><strong> ${user.loginId}</strong></td>
	                                            <td>${user.nameMei}</td>
	                                            <td>${user.nameSei}</td>
	                                            <td>${user.mailAddress}</td>
	                                            <sec:authorize access="hasRole('KANRISHA')">
	                                            	<td>
	                                            		<c:forEach var="role" items="${user.roles}">
	                                            			<c:choose>
	                                            				<c:when test="${role.roleId == 1}">
		                                            				<button class="btn btn-xs btn-success"><i class="fa fa-user"></i>
		                                            					<spring:message code="manage.account.role.shoukai"/>
		                                            				</button>
		                                            			</c:when>
		                                            			<c:otherwise>
		                                            				<button class="btn btn-xs btn-danger"><i class="fa fa-user-plus"></i>
		                                            					<spring:message code="manage.account.role.kanri"/>
		                                            				</button>
		                                            			</c:otherwise>
	                                            			</c:choose>
	                                            		</c:forEach>
	                                            	</td>
	                                            </sec:authorize>
	                                            <td class="text-center">
	                                            	<c:url var="detailUrl" value="/account-management/detail/${user.loginId}" />
	                                            	<a href="${detailUrl}" data-toggle="tooltip" title="<spring:message code='system.action.detail.text'/>" class="btn btn-effect-ripple btn-xs btn-default"><i class="fa fa-folder-open-o"></i></a>
	                                            	 <sec:authorize access="hasRole('KANRISHA')">
	                                            	 	<a href="javascript:void(0)" data-toggle="tooltip" title="<spring:message code='system.action.modify.text'/>" class="btn btn-effect-ripple btn-xs btn-success"><i class="fa fa-pencil"></i></a>
	                                                	<a href="javascript:void(0)" data-toggle="tooltip" title="<spring:message code='system.action.delete.text'/>" class="btn btn-effect-ripple btn-xs btn-danger"><i class="fa fa-times"></i></a>
	                                            	 </sec:authorize>
	                                            </td>
	                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- END Table Styles Content -->
                            <!-- Paging -->
                            <div class="text-right">
                            	<c:set var="previousLabel"><spring:message code="system.action.paging.previous" /></c:set>
                            	<c:set var="nextLabel"><spring:message code="system.action.paging.next" /></c:set>
                            	<c:url var="urlPath" value="/account-management/" />
							<ePager:enterprisePager nextLabel="${nextLabel}" totalCount="${totalCount}" urlPath="${urlPath}" currentPage="${currentPage}" previousLabel="${previousLabel}" limit="${limit}" pagingSize="${pagingSize}" />
						</div>
                            <!-- Paging -->
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
	<script src="<c:url value='/static-resources/js/pages/uiTables.js'/>"></script>
	<script>
		$(function() {
			UiTables.init();
		});
	</script>

</body>
</html>
