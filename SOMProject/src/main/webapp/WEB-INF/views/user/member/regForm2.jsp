<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOM | Registration Page</title>

<link href="/som/css/main/signUp.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="/som/js/main/signUp.js"></script>
</head>
<body>
	<form id="reg2" action="regForm.do">
		<div class="container">
			<div class="email">
			<label><b>Email</b></label> 
				<input type="text" class="emailInput"	id="email" value="${Address}" name="Address" readOnly />
				<div style="display:none;"><input type="text" class="certifyNumber"id="certifyNumber" value="${certifyNumber}" name="certifyNumber" /></div>
				<label><b>인증번호</b></label> <br>
				<input type="text" class="certify" id="certify" placeholder="인증번호 입력" name="certify" required /> 
				<button class="confirm" id="confitm" >확인</button>
			</div>
			</br>
		</div>
	</form>
</body>
</html>