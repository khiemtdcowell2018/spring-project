<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<!-- URL definition -->
<c:url var="accountListUrl" value="/account-management/" />
<c:url var="registUserUrl" value="/account-management/regist" />
<c:url var="logoutUrl" value="/logout/"/>
<!-- END URL -->
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
						<form:form id="confirm-new-user-form" action="${registUserUrl}" modelAttribute="mstUser" method="post" cssClass="form-horizontal form-bordered">
							<!-- First Step -->
							<div id="clickable-first" class="step">
								<!-- Step Info -->
								<div class="form-group">
									<div class="col-xs-12">
										<ul class="nav nav-pills nav-justified clickable-steps">
											<li><a href="javascript:void(0)"><i class="fa fa-user"></i> <strong><spring:message code="common.form.3steps.input"/></strong></a></li>
											<li class="active"><a href="javascript:void(0)"><i class="fa fa-eye"></i> <strong><spring:message code="common.form.3steps.confirm"/></strong></a></li>
											<li><a href="javascript:void(0)"><i class="fa fa-check"></i> <strong><spring:message code="common.form.3steps.complete"/></strong></a></li>
										</ul>
									</div>
								</div>
								<!-- END Step Info -->
								<div class="form-group">
									<label class="col-md-4 control-label" for="loginId">
										<spring:message code="manage.account.loginId.text"/>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:hidden path="loginId"/>
											<form:hidden path="loginPassword"/>
											<p class="form-control-static">${mstUser.loginId}</p>
										</div>
										
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-4 control-label" for="nameMei">
										<spring:message code="manage.account.fullname.text"/>
									</label>
									<div>
										<div class="col-md-6">
											<form:hidden path="nameMei"/>
											<form:hidden path="nameSei"/>
											<p class="form-control-static">${mstUser.nameMei}${mstUser.nameSei}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="mailAddress">
										<spring:message code="manage.account.email.text"/>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:hidden path="mailAddress" />
											<p class="form-control-static">${mstUser.mailAddress}</p>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="phoneNumber">
										<spring:message code="manage.account.phonenumber.text"/>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:hidden path="phoneNumber" />
											<p class="form-control-static">${mstUser.phoneNumber}</p>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="homeAddress">
										<spring:message code="manage.account.homeAddress.text"/>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:hidden path="homeAddress" />
											<p class="form-control-static">${mstUser.homeAddress}</p>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="postCode">
										<spring:message code="manage.account.postCode.text"/>
									</label>
									<div class="col-md-6">
										<div class="input-group" >
											<form:hidden path="postNumber" />
											<p class="form-control-static">${mstUser.postNumber}</p>
										</div>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label" for="roles">
										<spring:message code="manage.account.roles.text"/>
									</label>
									<div class="col-md-6">
										<c:forEach var="role" items="${kenries}">
											<c:choose>
												<c:when test="${role.roleType =='KANRISHA'}">
													<p class="btn btn-xs btn-primary">
														<i class="fa fa-check"></i>
														<spring:message code="manage.account.role.kanri"/>
													</p>
												</c:when>
												<c:when test="${role.roleType =='SHOUKAISHA'}">
													<p class="btn btn-xs btn-success">
														<i class="fa fa-check"></i>
														<spring:message code="manage.account.role.shoukai"/>
													</p>
												</c:when>
											</c:choose>
											
										</c:forEach>
										<c:set var="roleTypeNameI18N"><spring:message code="manage.account.role.i18n.field.mapping" /></c:set>
										<form:select path="roles" multiple="multiple" cssStyle="display:none;">
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
									<button name="action" value="backToInput" type="submit" class="btn btn-effect-ripple btn-default"><spring:message code="system.action.back.text"/></button>
									<button name="action" value="doRegist" type="submit" class="btn btn-effect-ripple btn-primary"><spring:message code="system.action.regist.text"/></button>
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
