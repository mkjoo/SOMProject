<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function a(m_num){
	
	var select = document.getElementById("select_id");
	var option_value = select.options[select.selectedIndex].value;
	window.location='addMusicList.do?list_num='+option_value+'&m_num='+m_num;
}

function updateResult(value) {
	if (value == "ok") {
		alert('담기성공');
	}
}

window.onload = updateResult("${value}");


</script>
</head>
<body>
<select id="select_id">
	<c:forEach var="playListVo" items="${list}">
	<option id="option" value="${playListVo.list_num}">${playListVo.list_name}</option>
	</c:forEach>
</select>
<input type="button" value="플레이리스트 추가" onclick="window.open('addPlayList.do','popup1','height=400px, width=400px')">
<br><br><br><br><br><br>
<!--<input type="button" value="담기" onclick="window.location='addMusicList.do?list_num=${list_num}&m_num=${m_num}'">  -->
<input type="button" value="담기" onclick="a('${m_num}');">
<input type="button" value="취소">
</body>
</html>