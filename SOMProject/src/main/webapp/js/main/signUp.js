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

}

function sendIt() {
	var email = document.getElementById('email');
	var pass = document.getElementById('psw');
	var repass = document.getElementById('repsw');
	var name = document.getElementById('name');
	var birth = document.getElementById('birth');
	var phone = document.getElementById('phone');
	var agreement = document.getElementById('agree');
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	// email 체크0
	if (email == "") {
		alert("이메일을 입력하지 않았습니다.")
		document.reg.email.focus()
		return false;
	}
	if (regex.test(email) === false) {
		alert("잘못된 이메일 형식입니다.");
		document.reg.email.value = ""
		document.reg.email.focus()
		return false;
	}
	// 비밀번호 입력여부 체크
	if (pass == "") {
		alert("비밀번호를 입력하지 않았습니다.")
		document.reg.psw.focus()
		return false;
	}
	// 비밀번호와 비밀번호 확인 일치여부 체크
	if (pass != repass) {
		alert("비밀번호가 일치하지 않습니다")
		document.reg.repsw.value = ""
		document.reg.repsw.focus()
		return false;
	}
	if (name == "") {
		alert("이름을 입력하지 않았습니다.")
		document.f.my_name.focus()
		return false;
	}
	if (name.length < 2) {
		alert("이름을 2자 이상 입력해주십시오.")
		document.reg.name.focus()
		return false;
	}
	if (document.f.my_num.value == "") {
		alert("주민번호를 입력하지 않았습니다.")
		document.f.my_num.focus()
		return false;
	}
	var birthArray = string.split('.');
	var yy = birthArray[0];
	var MM = birthArray[1];
	var dd = birthArray[2];
	// 숫자가 아닌 것을 입력한 경우
	if (!isNumeric(yy) || !isNumeric(MM) || !isNumeric(dd)) {
		alert("생년월일은 숫자로 입력하세요.");
		document.reg.birth.value = ""
		document.reg.birth.focus()
		return false;
	}
	// 첫번째 자료에서 연월일(YYMMDD) 형식 중 기본 구성 검사
	if (yy < "00" || yy > "99" || mm < "01" || mm > "12" || dd < "01"
			|| dd > "31") {
		alert("생년월일이 잘못되었습니다. " + "다시 입력하세요.");
		document.reg.birth.value = ""
		document.reg.birth.focus()
		return false;
	}
	
	
	

	document.reg.submit();
}
