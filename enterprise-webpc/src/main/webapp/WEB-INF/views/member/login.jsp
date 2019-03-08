<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<html>
<body>
	<h1>Login Form</h1>
	<c:url var="loginAction" value="/login" />
	<form action="${loginAction}" method="post">
		<table>
			<tbody>
				<tr>
					<td>Login ID:</td>
					<td>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="text" name="loginId" id="loginId" placeholder="Input your id"/>
					</td>
				</tr>
				<tr>
					<td>Login Password:</td>
					<td><input type="password" name="loginPassword" id="loginPassword" placeholder="Input your password" /></td>
				</tr>
				<tr>
					<td>
						<button type="submit">Submit</button>
					</td>
					<td>
						<button type="reset">Reset</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
