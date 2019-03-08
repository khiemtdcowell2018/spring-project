<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<html>
<body>
	<h2>Hello World!</h2>
	<table class="table table-striped table-borderless table-vcenter">
		<thead>
			<tr>
				<th>会員ID</th>
				<th>ログインID</th>
				<th>姓</th>
				<th>名</th>
				<th>メールアドレス</th>
				<th>電話番号</th>
				<th>郵便番号</th>
				<th>自宅住所</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.userId}</td>
					<td>${user.loginId}</td>
					<td>${user.nameSei}</td>
					<td>${user.nameMei}</td>
					<td>${user.mailAddress }</td>
					<td>${user.phoneNumber}</td>
					<td>${user.postNumber}</td>
					<td>${user.homeAddress}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
