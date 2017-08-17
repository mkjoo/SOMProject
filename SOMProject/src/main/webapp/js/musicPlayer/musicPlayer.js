/**
 * 
 */
window.onload = initSongInfor;
var prevonload = window.onload;
window.onload = function() {
	prevonload();
	setTimeAndTempImg();
};
var songarray = new Array();
var songinforarray = new Array();

var index = "";
var flag = 0;

function initSongInfor() {
	var form = document.playList;
	var takesongnum = form.songnums;
	var takesonginfor = form.songinfor;
	var tempsongs = "";
	var tempsonginfor = "";

	for (var i = 0; i < takesongnum.length; i++) {
		tempsongs += takesongnum[i].value + ",";
	}

	var tempsongs2 = tempsongs.substring(0, tempsongs.length - 1);
	songarray = tempsongs2.split(",");

	for (var i = 0; i < takesonginfor.length; i++) {
		tempsonginfor += takesonginfor[i].value + "%";
	}


	var tempsonginfor2 = tempsonginfor.substring(0, tempsonginfor.length - 1);
	songinforarray = tempsonginfor2.split("%");
	index = 0;
	// 노래 리스트에 대한 모든 정보를 hidden처리된 태그로부터 정보를 얻는다.
}

function setTimeAndTempImg() {

	var somAudio = document.getElementById("somAudio");
	var tempImg = document.getElementById("tempoimg");
	var audioDur= parseInt(Math.floor(somAudio.duration) / 60) + ":"	+ parseInt(Math.floor(somAudio.duration) % 60);
	somAudio.addEventListener("timeupdate", function() {
		time.innerHTML = "&nbsp;&nbsp;"
				+ parseInt(Math.floor(somAudio.currentTime) / 60) + ":"
				+ parseInt(Math.floor(somAudio.currentTime) % 60) + audioDur;
	});

	tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar.gif">';

}

function setAudioDuration(){
	var somAudio = document.getElementById("somAudio");
	var audioDur= parseInt(Math.floor(somAudio.duration) / 60) + ":"	+ parseInt(Math.floor(somAudio.duration) % 60);
}
function setAudioController(){
	var somAudio = document.getElementById("somAudio");
	
	
}

function playandpause() {
	var somAudio = document.getElementById("somAudio");
	var changebutton = document.getElementById("changebutton");
	var tempImg = document.getElementById("tempoimg");
	if (somAudio.paused) {

		if (index == songinforarray.length) {
			index = 0;
			changeInfor(songinforarray[index]);
		}
		somAudio.play();
		changebutton.setAttribute("src",
				"/som/images/musicPlayer/pause.png");
		tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar.gif">';
	} else {
		somAudio.pause();
		changebutton.setAttribute("src",
				"/som/images/musicPlayer/playerplay.png");
		tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar1.gif">';
	}
}

function choosedSong(songinformation1) {

	var songinformation = songinformation1;
	var forindex = songinformation1.split(",");

	index = forindex[0];
	alert(index);
	changeInfor(songinformation);

}

function nextsong() {
	var changebutton = document.getElementById("changebutton");

	if (songarray.length == 1) {
		alert("다음 노래가 없습니다.");
		return false;
	}
	if (index == songarray.length - 1) {
		alert("다음 노래가 없습니다.");
		return false;
	}
	index++;
	abstractInfor(index);
	changebutton.setAttribute("src",
			"/som/images/musicPlayer/pause.png");
}

function presong() {
	var changebutton = document.getElementById("changebutton");
	if (songarray.length == 1) {
		alert("이전 노래가 없습니다.");
		return false;
	}
	if (index == 0) {
		alert("이전 노래가 없습니다.");
		return false;
	}
	index--;
	abstractInfor(index);
	changebutton.setAttribute("src",
			"/som/images/musicPlayer/pause.png");
}

function abstractInfor(index) {
	var songinfor = songinforarray[index];

	changeInfor(songinfor);// abstractInfor후에 chageInfor!!

}

/* "${num.index},${list.songnum},${list.path},${list.songname},${list.singer }" */
function changeInfor(songinformation1) {

	var songinformation = songinformation1.split(",");
	var albumimage = document.getElementById("albumimage");
	var songnameandsinger = document.getElementById("songnameandsinger");
	var time = document.getElementById("time");
	var somAudio = document.getElementById("somAudio");
	var somAudiopath = "";

	if (songarray.length == 1) {
		somAudiopath = "../mp3files" + songinformation[2] + "/"
				+ songinformation[1] + ".mp3";
		somAudio.addEventListener("ended", function() {
			this.currentTime = 0;
		}, false);
	}
	if (songarray.length != 1) {
		somAudiopath = "../mp3files" + songinformation[2] + "/"
				+ songarray[songinformation[0]] + ".mp3";
	}

	// index가 songinforarray 길이와 같을때.

	somAudio.setAttribute("src", somAudiopath);
	somAudio.setAttribute("type", "audio/mp3");

	var albumimagestr = "../albumimage/" + songinformation[2] + "/"
			+ songinformation[1] + ".jpg";
	albumimage.setAttribute("src", albumimagestr);
	songnameandsinger.innerHTML = songinformation[3] + " | "
			+ songinformation[4];
	somAudio.addEventListener("timeupdate", function() {
		time.innerHTML = "&nbsp;&nbsp;"
				+ parseInt(Math.floor(somAudio.currentTime) / 60) + ":"
				+ parseInt(Math.floor(somAudio.currentTime) % 60) + "/"
				+ parseInt(Math.floor(somAudio.duration) / 60) + ":"
				+ parseInt(Math.floor(somAudio.duration) % 60);
	});

}

function autoNextSong() {
	if (songinforarray.length == 1) {
		var songinfor = document.getElementById("songinfor");
		songinforarray[0] = songinfor.value;

	}

	var changebutton = document.getElementById("changebutton");
	var tempImg = document.getElementById("tempoimg");

	index++;

	if (index == songinforarray.length) {
		var somAudio = document.getElementById("somAudio");
		changebutton.setAttribute("src",
				"/som/images/musicPlayer/playerplay.png");
		tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar1.gif">';
		somAudio.currentTime = 0;
		somAudio.pause();
		return;

	}

	changeInfor(songinforarray[index]);
}

function openAlbumInfor() {

	if (songinforarray.length == 1) {
		var songinfor1 = document.getElementById("songinfor").value;
		var songinfor = songinfor1.split(",");
	} else {
		var songinfor = songinforarray[index].split(",");
	}
	window.open('albuminfor.do?songnum=' + songinfor[1] + '', '',
			'width=520, height=500,scrollbars=yes, menubar=no');
}