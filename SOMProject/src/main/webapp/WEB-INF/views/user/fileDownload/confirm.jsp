<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function updateResult(value) {
	if (value == "success") {alert('����Ʈ����');}
}

window.onload = updateResult("${value}");
</script>
</head>
<body>
500point�� �����˴ϴ� �����Ͻðڽ��ϱ�?<br>
<input type="button" onclick="window.location='download.do?path=${path}&fileName=${fileName}'" value="����">
<input type="button" onclick="javascript:self.close();" value="���">
<br>

${fileName}<br>
${path}
</body>
</html>