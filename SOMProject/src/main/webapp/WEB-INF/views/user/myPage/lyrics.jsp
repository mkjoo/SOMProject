<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/som/css/popular/lyrics.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- ${lyrics}<br>-->
<div id="lyric">
${m_artist}<br>
${m_name}<br><br>
<c:forEach var="lyric" items="${lyric}">
${lyric}<br>
</c:forEach>
</div>
</body>
</html>