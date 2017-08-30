<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/som/css/myPage/paymentdetail.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div style="width: 700px; margin: 10% auto 0 auto;">
		<table id="t01" border="1">
				<tr>
					<th>사용금액</th>
					<th>용도</th>
					<th>사용날짜</th>
					<th>충전금액</th>
				</tr>
			<c:forEach var="list" items="${list}">
				
				<tr>
					<td>${list.usepoint}</td>
					<td>${list.usecontent}</td>
					<td>${list.formatdate}</td>
					<td>${list.chargepoint}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	
</body>

</html>