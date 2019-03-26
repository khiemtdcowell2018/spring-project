<%@ page contentType="text/html;charset=UTF-8" language="java"%>
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
		</div>
	</div>

	<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
	<script src="<c:url value='/static-resources/js/vendor/jquery-2.2.4.min.js'/>"></script>
	<script src="<c:url value='/static-resources/js/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/static-resources/js/plugins.js'/>"></script>
	<script src="<c:url value='/static-resources/js/app.js'/>"></script>

</body>
</html>
