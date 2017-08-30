<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/som/js/musicPlayer/musicPlayer.js"></script>
<script type="text/javascript" src="/som/js/musicPlayer/html5slider.js"></script>

<link href="/som/css/musicPlayer/musicPlayer.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>

   <form name="changemusic">
      <!-- 오디오 만들기 -->
      <audio id="myAudio" autoplay onended="autoNextSong()" src="">
      <font color="#FFFFFF">Your user agent does not support the
         HTML5 Audio element.</font> </audio>
      <table id="playerTable">
         <tr height="6"></tr>
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
         <tr>

            <td><font id="curTime" color="#FFFFFF"></font></td>
            <td><input type="range" id="control"></td>
            <td><font id="duTime" color="#ffffff"></font></td>

         </tr>

         <tr>
            <td colspan="2"><a href="#" onclick="openPlayList()"><img
               src="/som/images/musicPlayer/list.png" border="0" width="20px"
               height="25px" /></a>
               <a href="#" onclick="selectRepeat()"><img
               src="/som/images/musicPlayer/Repeat.png" border="0" width="20px"
               height="25px" /></a>
               <a href="#" onclick="selectRandom()"style="margin=4px;"><img id="selectRandom"
               src="/som/images/musicPlayer/mix.png" style="border: 0; width: 20px;
               height: 15px;"/></a>
               </td>
            <td align="center"><a href="#" onclick="presong()"><img
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

   <table id="playListTable">
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
            <table
               style="width: 90%; padding: 5px; background-color: #2d3380; border-right-style: inset; border-right-width: 5px; border-right-color: white; border-bottom-style: double;">
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
            </table>
            <form name="playList">
               <table width="100%" height="10"
                  style="border-right-style: inset; background-color: #2d09d5; border-right-width: 5px; border-right-color: white; border-bottom-style: outset; border-bottom-width: 5px; border-bottom-color: white; overflow-y: scroll; width: 90%; height: 160px; padding: 5px;">
                  <c:forEach var="m_list" items="${list}" varStatus="num">
                     <input type="hidden" id="m_num" value="${m_list.m_num}" />
                     <input type="hidden" id="m_info"
                        value="${num.index},${m_list.m_num},${m_list.m_path},${m_list.m_name},${m_list.m_artist},${m_list.src},${m_list.m_album},${m_list.m_lyrics}" />
                     <c:set var="songInformation1"
                        value="${num.index},${m_list.m_num},${m_list.m_path},${m_list.m_name},${m_list.m_artist},${m_list.src},${m_list.m_album},${m_list.m_lyrics}" />

                     <tr style="text-align: center">
                        <td width="8%"><input type="checkbox" name="check"
                           value="${m_list.m_num }" /></td>
                        <td width="6%"><font size="1px" color="#ffffff">${num.count }</font></td>
                        <td width="40%"><font size="1px" color="#ffffff">${m_list.m_name}</font></td>
                        <td width="30%"><font size="1px" color="#ffffff">${m_list.m_artist}</font></td>
                        <td width="16%"><font id="m_time"size="1px" color="#ffffff"><script>timeSet();</script></font></td>
                     </tr>
                  </c:forEach>
               </table>
            </form>
         </td>
      </tr>
   </table>


</body>
</html>