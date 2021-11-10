<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Spring Form</h2>
<form:form modelAttribute="member" method="post" action="/emp/registerForm02" >
	<table>
		<tr>
			<td>user id</td>
			<td><form:input path="userId"/>
				<form:errors path="userId" color="red"></form:errors>
			</td>
		</tr>
		<tr>
			<td>name</td>
			<td>
				<form:input path="userName"/>
				<form:errors path="userName" color="red"></form:errors>
			</td>
		</tr>
	</table>
	<form:button name="register">submit</form:button>
</form:form>
</body>
</html>