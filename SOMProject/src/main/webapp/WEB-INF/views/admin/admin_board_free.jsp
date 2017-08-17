<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유 게시판-관리자-</title>
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
			<button class="tablinks">
				<a href="../jsp/admin_board_notice.jsp">공지사항</a>
			</button>
			<button class="tablinks">
				<a href="../jsp/admin_board_qna.jsp">Q&A</a>
			</button>
			<button class="tablinks">
				<a href="../jsp/admin_board_free.jsp">자유게시판</a>
			</button>
		</div>
		<div id="free_board" class="tabcontent">
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
						<td>423</td>
						<td align="left">요새 예능은 비긴 어겐이 갑인듯</td>
						<td>유재석</td>
						<td>2017.08.02</td>
						<td>72</td>
						<td><input type="button" value="관리"></td>
					</tr>
					<tr>
						<td>422</td>
						<td align="left">윤도현은 진짜 노래 잘하는 거 같더라...</td>
						<td>김종국</td>
						<td>2017.08.02</td>
						<td>44</td>
						<td><input type="button" value="관리"></td>
					</tr>
					<tr>
						<td>421</td>
						<td align="left">한국 천만 영화 중 진정한 천만영화.jpg</td>
						<td>백윤식</td>
						<td>2017.07.29</td>
						<td>110</td>
						<td><input type="button" value="관리"></td>
					</tr>
					<tr>
						<td>420</td>
						<td align="left">피자가 너무 먹고싶은 강아지..</td>
						<td>박보검</td>
						<td>2017.07.29</td>
						<td>96</td>
						<td><input type="button" value="관리"></td>
					</tr>
				</tbody>
			</table>
			<hr style="width: 95%; margin-left: 18px" />
			<div class="pagination">
				<a class="active" href="#">1</a> <a href="#">2</a> <a href="#">3</a>
				<a href="#">4</a> <a href="#">5</a>
				<button class="write">
					<a href="">글쓰기</a>
				</button>
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
</body>
</html>