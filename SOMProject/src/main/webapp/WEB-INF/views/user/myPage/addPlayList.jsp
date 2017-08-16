<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script>
function updateResult(value) {
	if (value == "success") {
		alert('추가성공');
		self.close();
	}
}
window.onload = updateResult("${value}");

</script>
</head>
<body>
<form action="addPlaylistProc.do" method="GET">
<input type="text" name="name"><br>
<input type="submit" value="추가"><input type="button" value="취소">
</form>
</body>
</html>