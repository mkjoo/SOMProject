/**
 * 
 */
// Get the modal
var window ;

function openSignUp(){
	window.open("regForm.do","_blank", "width=550, height=800");
}
function closeWin(){
	window.close();
}

function sendIt(){
	var email = document.getElementByName('email');
	var pass = document.getElementByName('psw');
	var repass = document.getElementByName('psw-repeat');
	var name = document.getElementByName('name');
	var birth = document.getElementByName('birth');
	var phone = document.getElementByName('phone');
	var agreement = document.getElementByName('agreementBox');
	//email 체크0
	if (email == "") {
        alert("Emalil을 입력하지 않았습니다.")
        document.reg.email.focus()
        return false;
    }
	//비밀번호 입력여부 체크
    if (pass == "") {
        alert("비밀번호를 입력하지 않았습니다.")
        document.reg.psw.focus()
        return false;
    }
	
}

