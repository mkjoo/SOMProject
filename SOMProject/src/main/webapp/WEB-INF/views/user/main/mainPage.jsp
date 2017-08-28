<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
   function loginResult(result) {
      if (result == "resultNoId") {
         alert('아디가 틀려요');
      }
      if (result == "resultNoPass") {
         alert('비번이 틀려요');
      }
      if (result == "resultOK") {
         alert('로그인 성공');
      }
      if (result == "noLogin") {
         alert('로그인을 해주세요');
      }
      if (result == "alreadyLogin") {
         alert('이미로그인 되있어요');
      }
   }
   function openSignUp() {
      window.open("regForm1.do", "_blank", "width=550, height=800");
   }
   window.onload = loginResult("${result}");
</script>
<script type="text/javascript" src="/som/js/main/slider.js"></script>
<script type="text/javascript" src="/som/js/main/login.js"></script>
<script type="text/javascript" src="/som/js/main/menu.js"></script>
<script type="text/javascript" src="/som/js/main/signUp.js"></script>


<link href="/som/css/main/modal.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/login.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/slider.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/content.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/menu.css" rel="stylesheet" type="text/css">
<link href="/som/css/main/footer.css" rel="stylesheet" tyep="text/css">
<link href="/som/css/main/mp_header.css" rel="stylesheet"
   type="text/css">

</head>

<body>
   <!-- header -->
   <header>
   <div class="header_menu">
      <jsp:include page="header.jsp" flush="false" />
   </div>
   </header>

   <!-- The Modal -->
   <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close">
               <span aria-hidden="true">&times;</span>
            </button>

            <h4 class="modal-title" id="myModalLabel">Login Page</h4>
         </div>

         <div class="modal-body">
            <div class="login-container animated fadeInDown bootstrap snippets">
               <div class="loginbox bg-white">
                  <div class="loginbox-title">Log In</div>
                  <div class="loginbox-social">
                     <div class="social-title ">sns 계정으로 LogIn 하기</div>
                     <div class="social-buttons">
                        <a href="" class="button-facebook"> <i
                           class="social-icon fa fa-facebook"></i>
                        </a> <a href="" class="button-twitter"> <i
                           class="social-icon fa fa-twitter"></i>
                        </a> <a href="" class="button-google"> <i
                           class="social-icon fa fa-google-plus"></i>
                        </a>
                     </div>
                  </div>
                  <div class="loginbox-or">
                     <div class="or-line"></div>
                     <div class="or">OR</div>
                  </div>
                  <form method="post" action="loginProc.do">
                     <div class="loginbox-textbox">
                        <input type="text" name="email" class="form-control"
                           placeholder="Email">
                     </div>
                     <div class="loginbox-textbox">
                        <input type="text" name="pass" class="form-control"
                           placeholder="Password">
                     </div>

                     <div class="loginbox-submit">
                        <input type="submit" class="btn btn-primary btn-block"
                           value="Login">
                     </div>
                  </form>
                  <div class="loginbox-forgot">
                     <a href="">ID/Password 찾기</a>
                  </div>


                  <div class="loginbox-signup">
                     <button onclick="openSignUp()">회원가입</button>
                  </div>
               </div>
               <div class="logobox"></div>
            </div>




         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div>
      </div>

   </div>

   <script type="text/javascript" src="/som/js/main/modal.js"></script>


   <!-- navigation -->
   <nav>

   <div class="slideshow-container">
      <div class="mySlides fade">
         <div class="numbertext">1 / 3</div>
         <div class="c">
            <div class="slide_num" >
               <h2>최신가요</h2>
               </br> </br>
               <c:forEach var="newestList" items="${newestList}">
                  <li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
                     height="35">&nbsp;&nbsp;${newestList.m_name}</li>
               </c:forEach>

            </div>
         </div>
         <div class="text">music 1</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">2 / 3</div>
         <div class="c">
            <div class="slide_num" >
               <h2>인기가요</h2>
               </br> </br>
               <c:forEach var="popularList" items="${popularList}">
                  <li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
                     height="35">&nbsp;&nbsp;${popularList.m_name}</li>
               </c:forEach>
            </div>
         </div>
         <div class="text">music 2</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">3 / 3</div>
         <div class="c">
            <div class="slide_num" >
               <h2>버스킹</h2>
               </br> </br>
               <c:forEach var="buskingList" items="${buskingList}">
                  <li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
                     height="35">&nbsp;&nbsp;${buskingList.b_name}</li>
               </c:forEach>
            </div>
         </div>
         <div class="text">music 3</div>
      </div>

      <!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
         onclick="plusSlides(1)">&#10095;</a> -->

   </div>
   <br>
   <div style="text-align: center">
      <span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
         onclick="currentSlide(2)"></span> <span class="dot"
         onclick="currentSlide(3)"></span>
   </div>
   </nav>

   <content>
   <div class="num">
      <div class="slide_num" id="최신가요">
         <h2>최신가요</h2>
         </br> </br>
         <c:forEach var="newestList" items="${newestList}">
            <li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
               height="35">&nbsp;&nbsp;${newestList.m_name}</li>
         </c:forEach>


      </div>
      <div class="slide_num" id="인기가요">
         <h2>인기가요</h2>
         </br> </br>
         <c:forEach var="popularList" items="${popularList}">
            <li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
               height="35">&nbsp;&nbsp;${popularList.m_name}</li>
         </c:forEach>

      </div>
      <div class="slide_num" id="버스킹">
         <h2>버스킹</h2>
         </br> </br>
         <c:forEach var="buskingList" items="${buskingList}">
            <li><img alt="" src="images/myPage/레드벨벳.PNG" width="35"
               height="35">&nbsp;&nbsp;${buskingList.b_name}</li>
         </c:forEach>


      </div>
      <div class="slide_num" id="게시판">
         <li><h2 >게시판</h2></li>
         </br> </br>

         <c:forEach var="vo" items="${noticeList}" begin="0" step="1" end="0">
                   <font id="not">[ 공지사항 ]</font>
                   </br></br>
               <a text-align="center"
               href="noticeContent.do?num=${vo.num}&pageNum=1">${vo.subject}</a>
                </br>
                <font id="writer">${vo.writer}</font>
                </br>
                <font id="date">${vo.regdate}</font>
               <br>
         </c:forEach>
      </div>
   </div>
   </content>

   <!-- footer -->
   <footer style="text-align: justify">
   <hr>
   <div class="">
      <div class="" style="text-align: center;">Copyright ⓒ 2017 Apple Inc. 모든 권리 보유.</div>
      <div class="" style="text-align: center;">
         <a class="" href="">개인정보 취급방침</a> <a class="" href="">약관</a> <a
            class="" href="">판매 및 환불</a> <a class="" href="">법적 고지</a> <a
            class="" href="">사이트 맵</a>
      </div>
   </div>
   <br />
   <p style="margin-top: -20px; margin-bottom: 20px; color: #999;">
      <span style="white-space: nowrap;">사업자등록번호 : 120-95-0515 |</span> <span
         style="white-space: nowrap;">통신판매업신고번호 : 제 2011-서울강서-95051호 |</span>
      <span style="white-space: nowrap;">대표이사 : Swanson Choi |</span> <span
         style="white-space: nowrap;">주소 : 서울 특별시 강서구 가로공원로 184-11 |</span> <span
         style="white-space: nowrap;">대표전화 : 010-9252-2095 |</span> <span
         style="white-space: nowrap;">팩스 : 02-9252-2095</span>
   </p>
   </footer>

   <script src="/som/js/main/slider.js" type="text/javascript"></script>
</body>
</html>