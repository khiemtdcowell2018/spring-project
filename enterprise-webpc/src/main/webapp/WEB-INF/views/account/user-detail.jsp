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
<c:url var="createNewUser" value="/account-management/add-new-user/" />
<c:url var="modifyUser" value="/account-management/modify-user/" />
<c:url var="deleteUser" value="/account-management/delete-user/" />
<c:url var="logoutUrl" value="/logout/" />
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
				<div id="page-content">
					<div class="content-header">
						<div class="row">
							<div class="col-sm-6">
								<div class="header-section">
									<h1>
										<spring:message code="manage.settings.user.detail" />
									</h1>
								</div>
							</div>
							<sec:authorize access="hasRole('KANRISHA')">
								<div class="col-sm-6">
									<div class="header-section text-right">
										<a href="${accountListUrl}" class="btn btn-sm btn-default"><i class="fa fa-reply"></i> <spring:message code="system.action.list.text" /></a>
									</div>
								</div>
							</sec:authorize>
						</div>
					</div>
					<div class="block">
						<div class="form-horizontal form-bordered">
							<div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.loginId.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<p class="text-primary">${mstUser.loginId}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.fullname.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<p class="text-primary">${mstUser.nameMei}${mstUser.nameSei}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.email.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<p class="text-primary">${mstUser.mailAddress}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.phonenumber.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<p class="text-primary">${mstUser.phoneNumber}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.homeAddress.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<p class="text-primary">${mstUser.homeAddress}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.postCode.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<p class="text-primary">${mstUser.postNumber}</p>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-4 control-label"><spring:message code="manage.account.roles.text" /></label>
									<div class="col-md-6">
										<div class="input-group">
											<c:forEach var="role" items="${kenries}">
												<c:choose>
													<c:when test="${role.roleType =='KANRISHA'}">
														<p class="btn btn-xs btn-primary">
															<i class="fa fa-check"></i>
															<spring:message code="manage.account.role.kanri" />
														</p>
														&nbsp;
													</c:when>
													<c:when test="${role.roleType =='SHOUKAISHA'}">
														<p class="btn btn-xs btn-success">
															<i class="fa fa-check"></i>
															<spring:message code="manage.account.role.shoukai" />
														</p>
														&nbsp;
													</c:when>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<!-- Form Buttons -->
							<div class="form-group form-actions">
								<div class="text-right">
									<c:url var="createNewUser" value="/account-management/add-new-user/" />
									<c:url var="modifyUser" value="/account-management/modify-user/${mstUser.loginId}" />
									<c:url var="deleteUser" value="/account-management/delete-user/${mstUser.loginId}" />
									<a class="btn btn-sm btn-success" href="${createNewUser}"><i class="fa fa-plus"></i>&nbsp;<spring:message code="system.action.add.text"/></a>
									<a class="btn btn-sm btn-primary" href="${modifyUser}"><i class="fa fa-pencil"></i>&nbsp;<spring:message code="system.action.modify.text"/></a>
									<a class="btn btn-sm btn-danger" href="${deleteUser}"><i class="fa fa-times"></i>&nbsp;<spring:message code="system.action.delete.text"/></a>
								</div>
							</div>
							<!-- END Form Buttons -->
						</div>
					</div>
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