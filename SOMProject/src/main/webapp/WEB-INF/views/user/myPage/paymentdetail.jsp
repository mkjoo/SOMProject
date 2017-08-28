<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
				<table border="1">
				<c:forEach var="list" items="${list}">
				<tr>
					<td>사용금액</td>
					<td>용도</td>
					<td>사용날짜</td>
					<td>충전금액</td>
				</tr>
				<tr>
					<td>${list.usepoint}</td>
					<td>${list.usecontent}</td>
					<td>${list.usedate}</td>
					<td>${list.chargepoint}</td>
				</tr>
				</c:forEach>
				</table>
</body>
</html>