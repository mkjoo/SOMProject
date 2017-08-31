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
	<form id="reg" action="regProc.do">
		<div class="container">
			<div class="email">
				<label> <b>Email</b></label> <input type="text" class="emailInput"
					id="email" value="${Address}" name="email" readOnly />
				<div style="display: none;">
					<input type="text" class="certify" id="certify" value="${certify}"
						name="certify" />
				</div>
				<div style="display: none;">
					<input type="text" class="certifyNumber" id="certifyNumber"
						value="${certifyNumber}" name="certifyNumber" />
				</div>
			</div>
			<br> <label><b>비밀번호</b></label> <input type="password"
				placeholder="비밀번호는 숫자와 영문자 조합으로 8~20자리를 사용해야 합니다." name="pass"
				id="psw" required> <br> <label><b>비밀번호확인</b></label> <input
				type="password" placeholder="비밀번호 확인" name="psw-repeat" id="repsw"
				required><br> <label><b>이름</b></label> <input
				type="text" placeholder="이름 입력" name="name" id="name" required><br>
			<label><b>생년월일</b></label> <input type="text"
				placeholder="ex) yyMMdd" name="birth" id="birth" required><br>
			<label><b>전화번호</b></label> <input type="text"
				placeholder="ex) 01012345678" name="phone" id="phone" required /><br>
			<p>
				<input type="checkbox" name="agreementBox" id="agree" /> 계정 생성을 위한
				<a href="#">이용약관 및 개인 정보 보호 정책</a>에 동의합니다.
			</p>
			<div class="clearfix">
				<button type="button" onclick="self.close()" class="cancelbtn">취소</button>
				<input type="button" value="회원가입" onclick="sendIt()">
			</div>
		</div>
	</form>
	<script type="text/javascript">
		function sendIt() {
			var email = document.getElementById('email').value;
			var pass = document.getElementById('psw').value;
			var repass = document.getElementById('repsw').value;
			var name = document.getElementById("name");
			var birth = document.getElementById('birth').value;
			var phone = document.getElementById('phone').value;
			var agree = document.getElementById("agree").checked;
			alert(agree);
			/* 비밀번호 입력  */
			if (pass == "") {
				alert("비밀번호를 입력하지 않았습니다.");
				document.getElementById("psw").focus();
				return;
			}
			var chk_num = pass.search(/[0-9]/g);
			var chk_eng = pass.search(/[a-z]/ig);
			if (!/^[a-zA-Z0-9]{8,20}$/.test(pass)) {
				alert('비밀번호는 숫자와 영문자 조합으로 8~20자리를 사용해야 합니다.');
				document.getElementById("psw").focus();
				return;
			}
			if (chk_num < 0 || chk_eng < 0) {
				alert('비밀번호는 숫자와 영문자를 혼용하여야 합니다.');
				document.getElementById("psw").focus();
				return;
			}
			if (/(\w)\1\1\1/.test(pass)) {
				alert('비밀번호에 같은 문자를 4번 이상 사용하실 수 없습니다.');
				document.getElementById("psw").focus();
				return;
			}
			/* 비밀번호 확인  */
			if (repass == "") {
				alert("비밀번호를 입력하지 않았습니다.");
				document.getElementById("repsw").focus();
				return;
			}
			if (pass != repass) {
				alert("비밀번호가 틀렸습니다. 다시 입력해 주세요.");
				document.getElementById("repsw").focus();
				return;
			}
			/* 이름  */
			if (name == "") {
				alert('2');
				alert("이름을 입력하지 않았습니다.");
				document.getElementById("name").focus();
				return;
			}

			var a = /^[가-힣]{2,4}$/;
			if (!a.test(name.value)) {
				alert("한글만 입력하세요!!!(2글자 이상)");
				document.getElementById("name").focus();
				return;
			}
			/* 생년월일 */
			if (birth == "") {
				alert("생년월일을 입력하지 않았습니다.");
				document.getElementById("birth").focus();
				return;
			}
			var y = parseInt(birth.substr(0, 2));
			var m = parseInt(birth.substr(2, 2));
			var d = parseInt(birth.substr(4, 2));

			var dt = new Date(y + 1900, m - 1, d);

			if (dt.getDate() != d) {
				alert("일이 유효하지 않음");
				document.getElementById("phone").focus();
				return;
			} else if (dt.getMonth() + 1 != m) {
				alert("월이 유효하지 않음");
				document.getElementById("phone").focus();
				return;
			} else if (dt.getFullYear() != y + 1900) {
				alert("년도가 유효하지 않음");
				document.getElementById("phone").focus();
				return;
			}
			/* 전화번호 */
			if (phone == "") {
				alert("전화번호를 입력하지 않았습니다.");
				document.getElementById("phone").focus();
				return;
			}
			phone = phone.split('-').join('');
			var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
			if (!regPhone.test(phone)) {
				alert("전화번호를 다시 입력해주세요.")
				return;
			}
			/* 이용약관 동의 */
			if (agree) {
				alert('3');
				document.getElementById("reg").submit();
			} else {
				alert("이용약관에 동의해 주세요. ");
				//document.reg.agreement.value = "false";
				return;
			}
		}
	</script>
</body>
</html>