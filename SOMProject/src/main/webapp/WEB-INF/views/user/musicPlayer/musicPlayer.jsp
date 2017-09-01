<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/som/js/musicPlayer/musicPlayer.js"></script>
<script type="text/javascript" src="/som/js/musicPlayer/html5slider.js"></script>

<script type="text/javascript">
var songcount=${songcount};
var checkvalue='';


function hi(){
   for(var i=0;i<songcount;i++){
      var obj=document.getElementsByName("check");
      if(obj[i].checked){
      //alert(obj[i].value);
      checkvalue= checkvalue+obj[i].value+";";
      }
   }//end for문
      window.location='deleteMusicPlayer.do?turn='+checkvalue;
}//end hi() 메서드
</script>

<link href="/som/css/musicPlayer/musicPlayer.css?ver=1" rel="stylesheet"
	type="text/css">
<title>Insert title here</title>
</head>
<body>

	<form name="changemusic">
		<!-- 오디오 만들기 -->
		<audio id="myAudio" autoplay onended="autoNextSong()" src="">
		<font color="#FFFFFF">Your user agent does not support the
			HTML5 Audio element.</font> </audio>
		<table id="playerTable">
			<tr height="7"></tr>
			<tr>
				<td rowspan="7" width="10"></td>
				<td colspan="3" class="subTitle"><font color="#a9d6fe"><img
						src="/som/images/main/som_logo.png" width="42" height="15">&nbsp;&nbsp;&nbsp;Music
						Player </font></td>
				<td rowspan="7" width="10"></td>
			</tr>
			<tr>
				<td colspan="5" height="5"></td>
			</tr>
			<tr>
				<td rowspan="3"><img id="albumImage" width="50" height="50"
					src="" /></td>

				<td colspan="2" align="center"><font id="nameNartist"
					color="#FFFFFF" size="2px">${m_info.name} - ${m_info.artist}
				</font></td>
			</tr>
			<tr>
				<td height="6"></td>
				<td height="6"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><font id="m_album"
					color="#FFFFFF" size="2px">${m_info.m_album} </font></td>
			</tr>
		</table>
		<table id="playerTable" bgcolor="#262d4a">
			<tr>
				<td width="10"></td>
				<td><font id="curTime" size="1px" color="#FFFFFF"></font></td>
				<td><input type="range" id="control"></td>
				<td><font id="duTime" size="1px" color="#ffffff"></font></td>
				<td width="10"></td>
			</tr>
		</table>
		<table id="playerTable">
			<tr>
				<td width="10"></td>
				<td colspan="2"><a href="#" onclick="openPlayList()"><img
						src="/som/images/musicPlayer/list.png" border="0" width="20px"
						height="25px" /></a> <a href="#" onclick="selectRepeat()"><img
						src="/som/images/musicPlayer/Repeat.png" border="0" width="20px"
						height="25px" /></a> <a href="#" onclick="selectRandom()" style=""><img
						id="selectRandom" src="/som/images/musicPlayer/mix.png"
						style="border: 0; width: 20px; height: 15px;" /></a></td>
				<td align="center"><a href="#" onclick="presong()"><img
						src="/som/images/musicPlayer/bb.png" border="0" width="35px"
						height="35px" /></a> <a href="#" onclick="playandpause()"><img
						id="changebutton" src="/som/images/musicPlayer/pp.png" border="0"
						width="35px" height="35px" /></a> <a href="#" onclick="nextsong()"><img
						src="/som/images/musicPlayer/nb.png" border="0" width="35px"
						height="35px" /></a></td>
				<td width="10"></td>
			</tr>
			<tr>
				<td colspan="5" height="5"></td>
			</tr>
		</table>
	</form>

	<div id="playListTable">
		<table bgcolor="#c0c6de" width="100%">
			<tr>
				<td width=10></td>

				<td><font size="2" color="#3a4370">현재 재생 목록 -
						${songcount}</font></td>
			</tr>
		</table>
		<table id="pList">
			<tr style="text-align: center">
				<td width="8%"><input type="checkbox" name="allcheck"
					value="${m_list.m_num }" /></td>
				<td width="6%"><font size="1px" color="#ffffff"
					style="font-weight: bold;">No.</font></td>
				<td width="40%"><font size="1px" color="#ffffff"
					style="font-weight: bold;">제목</font></td>
				<td width="30%"><font size="1px" color="#ffffff"
					style="font-weight: bold;">아티스트</font></td>
				<td width="16%"><font size="1px" color="#ffffff"
					style="font-weight: bold;">시간</font></td>
			</tr>

			<form name="playList" overflow-y="scoll">
				<c:forEach var="m_list" items="${list}" varStatus="num">
					<input type="hidden" id="m_num" value="${m_list.m_num}" />
					<input type="hidden" id="m_info"
						value="${num.index},${m_list.m_num},${m_list.m_path},${m_list.m_name},${m_list.m_artist},${m_list.src},${m_list.m_album},${m_list.m_lyrics}" />
					<c:set var="songInformation1"
						value="${num.index},${m_list.m_num},${m_list.m_path},${m_list.m_name},${m_list.m_artist},${m_list.src},${m_list.m_album},${m_list.m_lyrics}" />
					<tr style="text-align: center">
						<td width="8%"><input type="checkbox" name="check"
							value="${m_list.turn}" /></td>
						<td width="6%"><font id="listCon" size="1px" color="#ffffff">${num.count }</font></td>
						<td width="40%"><font id="listCon" size="1px" color="#ffffff">${m_list.m_name}</font></td>
						<td width="30%"><font id="listCon" size="1px" color="#ffffff">${m_list.m_artist}</font></td>
						<audio id="newAudio" src="${m_list.m_path}">
						<td width="16%"><font id="m_time" size="1px" color="#ffffff">
						</font></td>
					</tr>
				</c:forEach>
			</form>
		</table>
		<img onclick="javascript:hi();"
			src="/som/images/musicPlayer/music.png">
	</div>


</body>
</html>