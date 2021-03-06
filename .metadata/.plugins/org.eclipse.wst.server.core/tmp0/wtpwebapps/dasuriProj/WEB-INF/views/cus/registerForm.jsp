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
<h1>유저 등록 화면</h1>
<form:form modelAttribute="member" method="post">
	<table>
		<tr>
			<td><form:label path="userId">유저ID</form:label> </td>
			<td>
				<form:input path="userId"/>
				<form:errors path="userId"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="password">패스워드</form:label> </td>
			<td>
				<form:input path="password"/>
				<form:errors path="password"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="userName">이름</form:label> </td>
			<td>
				<form:input path="userName"/>
				<form:errors path="userName"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="email">E-MAIL</form:label> </td>
			<td>
				<form:input path="email"/>
				<form:errors path="email"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="dateOfBirth">생년월일</form:label> </td>
			<td>
				<form:input type="date" path="dateOfBirth"/>
				<form:errors path="dateOfBirth"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="gender">성별</form:label> </td>
			<td>
				<%-- <form:radiobuttons path="gender" items=""/> --%>
				<form:radiobutton path="gender" value="male" label="Male"/>
				<form:radiobutton path="gender" value="female" label="Female"/>
				<form:radiobutton path="gender" value="other" label="Other"/>
			</td>
		</tr>
		
		<tr>
			<td><form:label path="address.postCode">우편번호</form:label> </td>
			<td>
				<form:input path="address.postCode"/>
				<form:errors path="address.postCode"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="address.location">주소</form:label> </td>
			<td>
				<form:input path="address.location"/>
				<form:errors path="address.location"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="address.location2">상세주소</form:label> </td>
			<td>
				<form:input path="address.location2"/>
				<form:errors path="address.location2"/>
			</td>
		</tr>
		
		<tr>
			<td><form:label path="cardList[0].no">카드1 - 번호</form:label> </td>
			<td>
				<form:input path="cardList[0].no"/>
				<form:errors path="cardList[0].no"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="cardList[0].validMonth">카드1 - 유효년월</form:label> </td>
			<td>
				<form:input type="month" path="cardList[0].validMonth"/>
				<form:errors path="cardList[0].validMonth"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="cardList[1].no">카드2 - 번호</form:label> </td>
			<td>
				<form:input path="cardList[1].no"/>
				<form:errors path="cardList[1].no"/>
			</td>
		</tr>
		<tr>
			<td><form:label path="cardList[1].validMonth">카드2 - 유효년월</form:label> </td>
			<td>
				<form:input type="month" path="cardList[1].validMonth"/>
				<form:errors path="cardList[1].validMonth"/>
			</td>
		</tr>
	</table>
	<form:button name="register">등록</form:button>
</form:form>
</body>
</html>