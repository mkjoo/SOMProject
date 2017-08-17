<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 게시판-관리자-</title>
<link type="text/css" rel="stylesheet" href="../htmls/myPage_style.css">
<link type="text/css" rel="stylesheet" href="../htmls/board_style.css">
</head>
<body>
	<nav>
		<h2>게시판 목록</h2>
	</nav>
	<hr style="width: 90%; margin-left: 40px" />
	<div id="board_content">
		<div class="tab">
			<button class="tablinks"><a href="../jsp/admin_board_notice.jsp">공지사항</a></button>
			<button class="tablinks"><a href="../jsp/admin_board_qna.jsp">Q&A</a></button>
			<button class="tablinks"><a href="../jsp/admin_board_free.jsp">자유게시판</a></button>
		</div>
		<!-- 
		<div class="tab">
			<button class="tablinks" onclick="openBoard(event, 'notice_board')" id="defaultOpen">공지사항</button>
			<button class="tablinks" onclick="openBoard(event, 'qna_board')">Q&A</button>
			<button class="tablinks" onclick="openBoard(event, 'free_board')">자유게시판</button>
		</div>
		 -->
		<div id="notice_board" class="tabcontent">
			<table width="700" height="350">
			<colgroup>
				<col width="50"></col>
				<col width="*"></col>
				<col width="60"></col>
				<col width="60"></col>
				<col width="60"></col>
				<col width="60"></col>
			</colgroup>
				<thead align="center">
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
						<th>관리자</th>
					</tr>
				</thead>
				<tbody align="center">
					<tr>
						<td>165</td>
						<td align="left">이제 곧 Bootstrap 4가 나온다면서요?</td>
						<td>신가람</td>
						<td>2016.12.02</td>
						<td>2</td>
						<td><input type="button" value="관리"></td>
					</tr>
					<tr>
						<td>164</td>
						<td align="left">Bootstrap 강좌입니다</td>
						<td>관리자</td>
						<td>2016.11.30</td>
						<td>10</td>
						<td><input type="button" value="관리"></td>
					</tr>
					<tr>
						<td>163</td>
						<td align="left">2016년을 지나 곧 2017년 새해가 머지 않았네요.</td>
						<td>신가람</td>
						<td>2016.11.27</td>
						<td>5</td>
						<td><input type="button" value="관리"></td>
					</tr>
				</tbody>
			</table>
			<hr style="width:95%; margin-left:18px" />
			<div class="pagination">
				<a class="active" href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<button class="write"><a href="">글쓰기</a></button>
			</div>
		</div>
</div>

	<footer>
		<br> <br>
		<div id="footer">
			<p id="about">
				Back to <a href="../jsp/myPage_home.jsp">main</a> / Go to <a
					href="../jsp/myMusic_list.jsp">Home</a>
			</p>
			<br>
			<hr />
			<table border="0" id="foot1" width="870" height="50">
				<tr>
					<td>회사소개&nbsp; |</td>
					<td>이용약관&nbsp; |</td>
					<td>개인정보처리방침&nbsp; |</td>
					<td>청소년보호정책&nbsp; |</td>
					<td>제휴/프로모션문의&nbsp; |</td>
					<td>이메일주소무단수집거부&nbsp; |</td>
					<td>파트너센터&nbsp; |</td>
					<td>사업자정보확인</td>
				</tr>
			</table>
			<table border="0" id="foot2" width="1000" height="80">
				<tr>
					<td>서울시 성동구 무학로2길 54 신방빌딩&nbsp; |</td>
					<td>대표 : 주민경,신가람,김한누리,최시온&nbsp; |</td>
					<td>사업자등록번호 : ***-**-*****&nbsp; |</td>
					<td>통신판매업 신고번호 : 제2017-서울성동-*****호</td>
				</tr>
				<tr>
					<td>문의전화(평일 13:00~15:00) : 1588-0000&nbsp; |</td>
					<td>이메일 : mymusic_som@gmail.com&nbsp; |</td>
					<td colspan="2" align="left">ⓒ2017. SOM Entertainment, Inc,
						ALL RIGHTS RESERVED.</td>
				</tr>
			</table>
			<br> <br>
		</div>
	</footer>
<!-- 
	<script>
		function openBoard(event, boardName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(boardName).style.display = "block";
			event.currentTarget.className += " active";
		}

		document.getElementById("defaultOpen").click();
	</script>
 -->
</body>
</html>
