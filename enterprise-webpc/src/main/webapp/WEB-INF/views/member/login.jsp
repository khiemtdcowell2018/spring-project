<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">

<title><spring:message code="login_action.page.title"/></title>

<meta name="description" content="Enterprise System">
<meta name="author" content="khiemtd90@gmail.com">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- URL definition -->
<c:url var="loginAction" value="/login" />
<!-- END URL -->
<!-- ICONS -->
<link rel="shortcut icon" href="<c:url value='/static-resourses/img/favicon.png'/>">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon57.png'/>" sizes="57x57">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon72.png'/>" sizes="72x72">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon76.png'/>" sizes="76x76">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon114.png'/>" sizes="114x114">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon120.png'/>" sizes="120x120">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon144.png'/>" sizes="144x144">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon152.png'/>" sizes="152x152">
<link rel="apple-touch-icon" href="<c:url value='/static-resourses/img/icon180.png'/>" sizes="180x180">
<!-- END Icons -->

<!-- CSS -->
<link rel="stylesheet" href="<c:url value='/static-resources/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/static-resources/css/plugins.css'/>">
<link rel="stylesheet" href="<c:url value='/static-resources/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/static-resources/css/themes.css'/>">

<!-- JS -->
<script src="<c:url value='/static-resources/js/vendor/modernizr-3.3.1.min.js'/>"></script>
</head>
<body>
	<!-- Full Background -->
	<img src="<c:url value='/static-resources/img/placeholders/layout/login2_full_bg.jpg'/>" alt="Full Background" class="full-bg animation-pulseSlow">
	<!-- END Full Background -->

	<!-- Login Container -->
	<div id="login-container">
		<!-- Login Header -->
		<h1 class="h2 text-light text-center push-top-bottom animation-pullDown">
			<i class="fa fa-cube text-light-op"></i>
			<strong><spring:message code="login_action.page.form.name" /></strong>
		</h1>
		<!-- END Login Header -->

		<!-- Login Block -->
		<div class="block animation-fadeInQuick">
			<!-- Login Title -->
			<div class="block-title">
				<div class="block-options pull-right">
					<div class="btn-group">
						<a href="javascript:void(0)" class="btn btn-effect-ripple btn-primary dropdown-toggle enable-tooltip" 
							data-toggle="dropdown" title="<spring:message code='common.language.title'/>"><i class="fa fa-globe"></i></a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li><a href="?language=ja_JP"> <spring:message code="common.language.japan"/> </a></li>
							<li class="divider"></li>
							<li><a href="?language=en_US"> <spring:message code="common.language.english"/> </a></li>
							<li class="divider"></li>
							<li><a href="?language=vi_VN"> <spring:message code="common.language.vietnamese"/> </a></li>
						</ul>
					</div>
				</div>
				<h2><spring:message code="login_action.page.form.login.please"/></h2>
			</div>
			<!-- END Login Title -->

			<!-- Login Form -->
			<form id="form-login" action="${loginAction}" method="post" class="form-horizontal">
				<c:if test="${param.error != null}">
					<div class="alert alert-danger">
						<p>
							<i class="fa fa-exclamation-triangle">&nbsp;</i>
							<spring:message code="login_action.validation.invalid"/>
						</p>
					</div>
				</c:if>
				<c:if test="${param.logout != null}">
					<div class="alert alert-success">
						<p>
							<i class="fa fa-power-off">&nbsp;</i>
							<spring:message code="login_action.logout.success"/>
						</p>
					</div>
				</c:if>
				<div class="form-group">
					<label for="login-email" class="col-xs-12"><spring:message code="login_action.page.form.login.loginId" /></label>
					<div class="col-xs-12">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<input type="text" id="loginId" min_length_check="<spring:message code="login_action.validation.loginId.minlength"/>" name="loginId" class="form-control" placeholder="<spring:message code='login_action.page.form.login.loginId.placeholder'/>" />
					</div>
				</div>
				<div class="form-group">
					<label for="login-password" class="col-xs-12"><spring:message code="login_action.page.form.login.loginPassword" /></label>
					<div class="col-xs-12">
						<input type="password" id="loginPassword" name="loginPassword" class="form-control" placeholder="<spring:message code='login_action.page.form.login.loginPassword.placeholder'/>">
					</div>
				</div>
				<div class="form-group form-actions">
					<div class="col-xs-8">
						<label class="csscheckbox csscheckbox-primary">
							<input type="checkbox" id="setRemember" name="setRemember"><span></span>
							<spring:message code="login_action.page.form.login.remember"/>
						</label>
					</div>
					<div class="col-xs-4 text-right">
						<button type="submit" class="btn btn-effect-ripple btn-success">
							<spring:message code="login_action.page.form.login.button.login"/>
						</button>
					</div>
				</div>
			</form>
			<!-- END Login Form -->
		</div>
		<!-- END Login Block -->

		<!-- Footer -->
		<footer class="text-muted text-center animation-pullUp">
			<small><span id="year-copy"></span> &copy; 
				<a href="https://www.facebook.com/khiemtd.aries" target="_blank">
					Copyright of Trần Duy Khiêm
				</a>
			</small>
		</footer>
		<!-- END Footer -->
	</div>
	<!-- END Login Container -->

	<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
	<script src="<c:url value='/static-resources/js/vendor/jquery-2.2.4.min.js'/>"></script>
	<script src="<c:url value='/static-resources/js/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/static-resources/js/plugins.js'/>"></script>
	<script src="<c:url value='/static-resources/js/app.js'/>"></script>

	<!-- Load and execute javascript code used only in this page -->
	<script src="<c:url value='/static-resources/js/pages/readyLogin.js'/>"></script>
	<script>
		$(function() {
			ReadyLogin.init();
		});
	</script>
</body>
</html>
