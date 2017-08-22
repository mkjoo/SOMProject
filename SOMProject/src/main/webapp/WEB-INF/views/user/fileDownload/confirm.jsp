<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function updateResult(value) {
	if (value == "success") {alert('포인트부족');}
}

window.onload = updateResult("${value}");
</script>
</head>
<body>
500point가 차감됩니다 구매하시겠습니까?<br>
<input type="button" onclick="window.location='download.do?path=${path}&fileName=${fileName}'" value="구매">
<input type="button" onclick="javascript:self.close();" value="취소">
<br>

${fileName}<br>
${path}
</body>
</html>