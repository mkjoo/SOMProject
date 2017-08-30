<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="/som/css/popular/confirm.css?ver=1" rel="stylesheet" type="text/css">

<script>
function updateResult(value) {
	if (value == "success") {alert('포인트부족');}
}

window.onload = updateResult("${value}");
</script>
</head>
<body>
<div id="buy">

<br>
${fileName}<br>
${path}<br><br>
500point가 차감됩니다 구매하시겠습니까?<br>
<br>
</div>

<center><input id="button" type="button" onclick="window.location='download.do?fileName=${fileName}&path=aa'" value="구매">
<input id="button" type="button" onclick="javascript:self.close();" value="취소"></center>

</body>
</html>