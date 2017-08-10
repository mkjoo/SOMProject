/**
 * 
 */
// Get the modal
var window;

function openSignUp() {
	window.open("regForm1.do", "_blank", "width=550, height=800");
}

function closeWin() {
	window.close();
}
// 인증번호 확인
function certify() {
	window.open("regForm2.do", "_blank", "width=550, height=300");
}

function sendIt() {
	alert("오류");
	var email = document.getElementById('email').value;
	var pass = document.getElementById('psw').value;
	var repass = document.getElementById('repsw').value;
	var name = document.getElementById('name').value;
	var birth = document.getElementById('birth').value;
	var phone = document.getElementById('phone').value;
	var agreement = document.getElementById('agree').value;
	alert("오류1");

	// email 체크0
	if (email == "") {
		alert("이메일을 입력하지 않았습니다.");
		document.reg.email.focus();
		return;
	}
	alert("오류2");

	// 비밀번호 입력여부 체크
	if (pass == "") {
		alert("비밀번호를 입력하지 않았습니다.");
		document.reg.psw.focus();
		return;
	}
	alert("오류3");
	// 비밀번호와 비밀번호 확인 일치여부 체크
	if (pass != repass) {
		alert("비밀번호가 일치하지 않습니다");
		document.reg.repsw.value = "";
		document.reg.repsw.focus();
		return;
	}
	
	alert("오류4");
	if (name == "") {
		alert("이름을 입력하지 않았습니다.");
		document.f.my_name.focus();
		return;
	}
	alert("오류5");
	
	if (name.length < 2) {
		alert("이름을 2자 이상 입력해주십시오.");
		document.reg.name.focus();
		return;
	}
	alert("오류6");

	var birthArray = birth.split('.');
	alert('birthArray');
	var yy = birthArray[0];
	alert("yy");
	var MM = birthArray[1];
	alert(MM);
	var dd = birthArray[2];
	alert(dd);
	// 숫자가 아닌 것을 입력한 경우
	if (!isNumeric(yy) || !isNumeric(MM) || !isNumeric(dd)) {
		alert("생년월일은 숫자로 입력하세요.");
		document.reg.birth.value = "";
		document.reg.birth.focus();
		return;
	}
	alert("오류7");
	// 첫번째 자료에서 연월일(YYMMDD) 형식 중 기본 구성 검사
	if (yy < "00" || yy > "99" || mm < "01" || mm > "12" || dd < "01"
			|| dd > "31") {
		alert("생년월일이 잘못되었습니다. " + "다시 입력하세요.");
		document.reg.birth.value = "";
		document.reg.birth.focus();
		return;
	}
	alert("오류8");
	
	
	
	var phoneArray = string.split('-');
	var fis = phoneArray[0];
	var mid = phoneArray[1];
	var las = phoneArray[2];
	if (fis.length() != 3 || mid.lenght() != 4 || las.length() != 4) {
		alert("전화번호가 잘못되었습니다. " + "다시 입력하세요.");
		document.reg.phone.value = "";
		document.reg.phone.focus();
		return;
	}
	alert("오류9");
	
	if(agreemen.equals("true")){
		alert("이용약관에 동의해 주세요. ");
		document.reg.agreement.value = "false";
		return
	}
	alert("오류10");

	
	document.reg.submit();
}
