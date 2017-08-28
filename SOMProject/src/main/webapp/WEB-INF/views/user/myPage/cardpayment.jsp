<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
카드:
<select name="job">
    <option>농협</option>
    <option>신한</option>
    <option>우체국</option>
    <option>카카오뱅크</option>
</select>
<br>
카드번호:
<input type="text" size="5">-<input type="text" size="5">-<input type="text" size="5">-<input type="text" size="5">
<form action="payment.do" method="post">
<input type="hidden" name="m_point" value="${point}">
<input type="submit" value="충전">
</form>
</body>
</html>