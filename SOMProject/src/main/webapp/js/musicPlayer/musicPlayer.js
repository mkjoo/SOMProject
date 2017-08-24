/**
 * 
 */
window.onload = initSongInfor;
var prevOnload = window.onload;
window.onload = function() {
   prevOnload();
   setTimeAndTempImg();
};
var songArray = new Array();
var songInfoArray = new Array();

var index = "";
var flag = 0;



function initSongInfor() {
   var form = document.playList;
   var takesongnum = form.m_num;
   var takesonginfor = form.m_info;
   var tempsongs = "";
   var tempsonginfor = "";

   for (var i = 0; i < takesongnum.length; i++) {
      tempsongs += takesongnum[i].value + ",";
   }

   var tempsongs2 = tempsongs.substring(0, tempsongs.length - 1);
   songArray = tempsongs2.split(",");

   for (var i = 0; i < takesonginfor.length; i++) {
      tempsonginfor += takesonginfor[i].value + "%";
   }

   var tempsonginfor2 = tempsonginfor.substring(0, tempsonginfor.length - 1);
   songInfoArray = tempsonginfor2.split("%");
   
   index = 0;
   
   var songInformation = songInfoArray[0].split(",");
   var albumImg = document.getElementById("albumImage");
   var nameNartist = document.getElementById("nameNartist");
   var m_album = document.getElementById("m_album");
   var time = document.getElementById("time");
   var myAudio = document.getElementById("myAudio");
   var myAudiopath = "";
   
   myAudiopath = songInformation[2];
   myAudio.setAttribute("src", myAudiopath);
   myAudio.setAttribute("type", "audio/mp3");

   var albumImg1 = songInformation[5];
   albumImg.setAttribute("src", albumImg1);
   nameNartist.innerHTML = songInformation[3] + " - "
         + songInformation[4];
   m_album.innerHTML = songInformation[7];
   
}

function setTimeAndTempImg() {

   var myAudio = document.getElementById("myAudio");
   var tempImg = document.getElementById("tempoimg");
   
   myAudio.addEventListener("timeupdate", function() {
      curTime.innerHTML = "&nbsp;&nbsp;"
            + parseInt(Math.floor(myAudio.currentTime) / 60) + ":"
            + parseInt(Math.floor(myAudio.currentTime) % 60);
   });
   alert(myAudio.duration);
   duTime.innerHTML = parseInt(myAudio.duration / 60) + ":"
   + parseInt(myAudio.duration% 60);


}

function playandpause() {
   var myAudio = document.getElementById("myAudio");
   var changebutton = document.getElementById("changebutton");
   var tempImg = document.getElementById("tempoimg");
   if (myAudio.paused) {

      if (index == songInfoArray.length) {
         index = 0;
         changeInfor(songInfoArray[index]);
      }
      myAudio.play();
      changebutton.setAttribute("src",
            "/som/images/musicPlayer/pause.png");
      tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar.gif">';
   } else {
      myAudio.pause();
      changebutton.setAttribute("src",
            "/som/images/musicPlayer/playerplay.png");
      tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar1.gif">';
   }
}

function choosedSong(songInformation1) {

   var songInformation = songInformation1;
   var forIndex = songInformation1.split(",");

   index = forIndex[0];
   alert(index);
   changeInfor(songInformation);

}

function nextsong() {
   var changebutton = document.getElementById("changebutton");

   if (songArray.length == 1) {
      alert("다음 노래가 없습니다.");
      return false;
   }
   if (index == songArray.length - 1) {
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
   alert(index);
   alert(songInfoArray[index]);
   if (songArray.length == 1) {
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
   var songInfo = songInfoArray[index];

   changeInfor(songInfo);// abstractInfor후에 chageInfor!!

}

/* "${num.index},${list.songnum},${list.path},${list.songname},${list.singer }" */
function changeInfor(songInformation1) {

   var songInformation = songInformation1.split(",");
   var albumImg = document.getElementById("albumImage");
   var nameNartist = document.getElementById("nameNartist");
   var m_album = document.getElementById("m_album");
   var time = document.getElementById("time");
   var myAudio = document.getElementById("myAudio");
   var myAudiopath = "";

   if (songArray.length == 1) {
      myAudiopath = songInformation[2];
      myAudio.addEventListener("ended", function() {
         this.currentTime = 0;
      }, false);
   }
   if (songArray.length != 1) {
      myAudiopath = songInformation[2];
   }

   // index가 songInfoArray 길이와 같을때.

   myAudio.setAttribute("src", myAudiopath);
   myAudio.setAttribute("type", "audio/mp3");

   var albumImg1 = songInformation[5];
   albumImg.setAttribute("src", albumImg1);
   nameNartist.innerHTML = songInformation[3] + " - "
         + songInformation[4];
   m_album.innerHTML = songInformation[7];
   myAudio.addEventListener("timeupdate", function() {
      time.innerHTML = "&nbsp;&nbsp;"
            + parseInt(Math.floor(myAudio.currentTime) / 60) + ":"
            + parseInt(Math.floor(myAudio.currentTime) % 60) + "/"
            + parseInt(Math.floor(myAudio.duration) / 60) + ":"
            + parseInt(Math.floor(myAudio.duration) % 60);
   });

}

function autoNextSong() {
   if (songInfoArray.length == 1) {
      var songInfo = document.getElementById("m_info");
      songInfoArray[0] = songInfo.value;

   }

   var changebutton = document.getElementById("changebutton");
   var tempImg = document.getElementById("tempoimg");

   index++;

   if (index == songInfoArray.length) {
      var myAudio = document.getElementById("myAudio");
      changebutton.setAttribute("src",
            "/som/images/musicPlayer/playerplay.png");
      tempImg.innerHTML = '&nbsp;<img src="/som/images/musicPlayer/soundbar1.gif">';
      myAudio.currentTime = 0;
      myAudio.pause();
      return;

   }

   changeInfor(songInfoArray[index]);
}

function openAlbumInfor() {

   if (songInfoArray.length == 1) {
      var songInfo1 = document.getElementById("m_info").value;
      var songInfo = songInfo1.split(",");
   } else {
      var songInfo = songInfoArray[index].split(",");
   }
   window.open('albuminfor.do?songnum=' + songinfor[1] + '', '',
         'width=520, height=500,scrollbars=yes, menubar=no');
}