<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="ePager" uri="http://localhost:8080/enterprise-webapp/tags/enterprisePager"%>
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
									<c:url var="addNewAccountUrl" value="/account-management/add-new-user/" />
									<a href="${addNewAccountUrl}" class="btn btn-sm btn-info"><i class="fa fa-plus"></i><spring:message code="manage.settings.user.add"/></a>
									<button class="btn btn-sm btn-primary"><spring:message code="manage.settings.user.export" /> <i class="fa fa-cloud-download"></i></button>
								</div>
							</div>
							</sec:authorize>
						</div>
					</div>
					<div class="block">
						<div class="table-responsive">
							<table id="general-table" class="table table-striped table-bordered table-vcenter">
								<thead>
									<tr>
										<th style="width: 80px;" class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></th>
										<th><spring:message code="manage.account.loginId.text" /></th>
										<th><spring:message code="manage.account.firstname.text" /></th>
										<th><spring:message code="manage.account.lastname.text" /></th>
										<th><spring:message code="manage.account.email.text" /></th>
										<sec:authorize access="hasRole('KANRISHA')">
											<th><spring:message code="manage.account.roles.text" /></th>
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
												<td><c:forEach var="role" items="${user.roles}">
														<c:choose>
															<c:when test="${role.roleId == 1}">
																<button class="btn btn-xs btn-success">
																	<i class="fa fa-user"></i>
																	<spring:message code="manage.account.role.shoukai" />
																</button>
															</c:when>
															<c:otherwise>
																<button class="btn btn-xs btn-danger">
																	<i class="fa fa-user-plus"></i>
																	<spring:message code="manage.account.role.kanri" />
																</button>
															</c:otherwise>
														</c:choose>
													</c:forEach></td>
											</sec:authorize>
											<td class="text-center"><c:url var="detailUrl" value="/account-management/detail/${user.loginId}" /> <a href="${detailUrl}" data-toggle="tooltip" title="<spring:message code='system.action.detail.text'/>" class="btn btn-effect-ripple btn-xs btn-default"><i
													class="fa fa-folder-open-o"></i></a> <sec:authorize access="hasRole('KANRISHA')">
													<a href="javascript:void(0)" data-toggle="tooltip" title="<spring:message code='system.action.modify.text'/>" class="btn btn-effect-ripple btn-xs btn-success"><i class="fa fa-pencil"></i></a>
													<a href="javascript:void(0)" data-toggle="tooltip" title="<spring:message code='system.action.delete.text'/>" class="btn btn-effect-ripple btn-xs btn-danger"><i class="fa fa-times"></i></a>
												</sec:authorize></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- Paging -->
						<div class="text-right">
							<c:set var="previousLabel">
								<spring:message code="system.action.paging.previous" />
							</c:set>
							<c:set var="nextLabel">
								<spring:message code="system.action.paging.next" />
							</c:set>
							<c:url var="urlPath" value="/account-management/" />
							<ePager:enterprisePager nextLabel="${nextLabel}" totalCount="${totalCount}" urlPath="${urlPath}" currentPage="${currentPage}" previousLabel="${previousLabel}" limit="${limit}" pagingSize="${pagingSize}" />
						</div>
						<!-- Paging -->
					</div>
				</div>
			</div>
		</div>
	</div>

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
