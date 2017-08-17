<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/som/js/musicPlayer/musicPlayer.js"></script>
<title>Insert title here</title>
</head>
<body bgcolor="#15183c">

	<form name="changemusic">
		<!-- 오디오 만들기 -->
		<audio id="myAudio" controls autoplay onended="autoNextSong()"
			src="/som/music/소주한잔-임창정.mp3""> <font color="#FFFFFF">Your
			user agent does not support the HTML5 Audio element.</font> </audio>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td></td>
				<td colspan="3" class="subTitle"><font color="#a9d6fe">&nbsp;&nbsp;<img
						src="/som/images/main/som_logo.png" width="42" height="15">&nbsp;&nbsp;&nbsp;Music
						Player
				</font></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="5" height="5"></td>
			</tr>
			<tr>
				<td width="10"></td>
				<td width="100" rowspan="3"><img id="albumimage" width="70"
					height="70" src="/som/images/myPage/블랙핑크.PNG" /></td>
				<td colspan="2" width="*" align="center"><font color="#FFFFFF"; size="3px" >소주한잔 - 임창정 </font></td>
				<td width="10"></td>
			</tr>
			<tr height="6"></tr>
			<tr>
				<td></td>
				<td colspan="2" width="*" align="center"><font color="#FFFFFF"; size="2px">Bye</font></td>
				<td></td>
			</tr>
			<tr><td></td>
			<td><font id="time" color="#FFFFFF"></font><span id="tempoimg"></span>
					<a href="#" onclick="openAlbumInfor()"><img
						src="/som/images/musicPlayer/albuminfo.gif" border="0" /></a></td>
				<td></td>
			</tr>
			
			<tr>
				<td></td>
				<td colspan="2" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="presong()"><img
						src="/som/images/musicPlayer/preplay.png" border="0" width="35px"
						height="35px" /></a> <a href="#" onclick="playandpause()"><img
						id="changebutton" src="/som/images/musicPlayer/pause.png"
						border="0" width="35px" height="35px" /></a> <a href="#"
					onclick="nextsong()"><img
						src="/som/images/musicPlayer/nextplay.png" border="0" width="35px"
						height="35px" /></a></td>
		
			
		
				
			</tr>
			<tr>
				<td colspan="5" height="5"></td>
			</tr>
		</table>
	</form>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="10"></td>
			<td>
				<table border="0" cellpadding="5" cellspacing="0">
					<tr bgcolor="#3d45ad">
						<td><img src="/som/images/musicPlayer/music.png"></td>
						<td><font color="#FFFFFF"
							style="font-weight: bold; font-size: 8pt;">LIST -
								(${songcount})</font></td>
					</tr>
				</table>
				<form name="playList">
					<table width="280" height="10" bgcolor="white"
						style="border-right-style: inset; border-right-width: 5px; border-right-color: white; border-bottom-style: outset; border-bottom-width: 5px; border-bottom-color: white">
						<tr>
							<td>
								<div
									style="overflow-y: scroll; width: 270px; height: 160px; padding: 5px;">
									<c:forEach var="list" items="${musicPlayerList}"
										varStatus="num">
										<input type="hidden" id="songnums" value="${list.songnum}" />
										<input type="hidden" id="songinfor"
											value="${num.index},${list.songnum},${list.path},${list.songname},${list.singer}" />
										<c:set var="songinformation1"
											value="${num.index},${list.songnum},${list.path},${list.songname},${list.singer }"
											scope="page" />
										${num.count}. <a href="#"
											onclick="choosedSong('${songinformation1}')"><b>${list.songname }</b></a>
										<br />
									</c:forEach>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</td>
			<td width="10"></td>
		</tr>
	</table>


</body>
</html>