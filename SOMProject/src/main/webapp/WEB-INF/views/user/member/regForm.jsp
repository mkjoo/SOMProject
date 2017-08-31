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
	<form id="reg" onsubmit="return false;" action="regProc.do">
		<div class="container">
			<div class="email">
				<label><b>Email</b></label> 
				<input type="text" class="emailInput"	id="email" value="${Address}" name="email" readOnly />
				<div style="display:none;"><input type="text" class="certify"id="certify" value="${certify}" name="certify" /></div>
				<div style="display:none;"><input type="text" class="certifyNumber"id="certifyNumber" value="${certifyNumber}" name="certifyNumber" /></div>
			</div><br> 
			<label><b>비밀번호</b></label> 
			<input type="password" placeholder="비밀번호 입력" name="pass" id="psw" required><br> 
			<label><b>비밀번호확인</b></label>
			<input type="password" placeholder="비밀번호 확인" name="psw-repeat"id="repsw" required><br> 
			<label><b>이름</b></label> 
			<input type="text" placeholder="이름 입력" name="name" id="name" required><br>
			<label><b>생년월일</b></label> 
			<input type="text" placeholder="ex) yy.MM.dd" name="birth" id="birth" required><br>
			<label><b>전화번호</b></label> 
			<input type="text" placeholder="ex) 010-1234-5678" name="phone" id="phone" required /><br>
			<p>
				<input type="checkbox" name="agreementBox" id="agree" value="false"/> 계정 생성을 위한
				<a href="#">이용약관 및 개인 정보 보호 정책</a>에 동의합니다.
			</p>
			<div class="clearfix">
				<button type="button" onclick="self.close()" class="cancelbtn">취소</button>
				<input type="submit" value="회원가입"/>
			</div>
		</div>
	</form>
</body>
</html>