<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
   <center>
      <h4>공지사항</h4>
      <table width="700" border="1">
      <tr>
          <td align="right" colspan="5">
 		    <input type="button" value="전체목록" onclick="window.location='noticeList.do'" />
            <input type="button" value="글쓰기" onclick="window.location='noticeWriteForm.do'"/>
      	  </td>
      </tr>
      <tr>
         <td align="center" width="60">번호</td>
         <td align="center" width="380">제목</td>
         <td align="center" width="100">작성자</td>
         <td align="center" width="100">작성일</td>
         <td align="center" width="60">조회수</td>
      </tr>
      <!-- 글이 없을 경우 -->
      <c:if test="${count==0 }">
      	
         <tr>
            <td colspan="6" align="center">게시판에 저장된 글이 없습니다.</td>
         </tr>
      </c:if>
      <c:if test="${count !=0 }">
         <c:forEach var="vo" items="${boardList }">
            <tr>
               <td align="center">${number}<c:set var="number" value="${number-1 }" scope="page"/></td>
               <td align="left">
               
               <a align="center" href="noticeContent.do?num=${vo.num}&pageNum=${bp.cur_Page}">${vo.subject}</a>

            </td>
               <td align="center">${vo.writer}</td>
               <td align="center">${vo.regdate }</td>
            </tr>
         </c:forEach>
      </c:if>
      </table>
      <br/>
      <c:if test="${bp.isPre() }">
      <a href="noticeList.do?pageNum=${bp.getPage_Start()-bp.p_size}">[이전]</a>
      </c:if>
      <c:forEach var="counter" begin="${bp.getPage_Start() }" end="${bp.getPage_End() }">
      <c:if test="${search_text ne ''}">
      <a href="javascript:window.location='noticeList.do?pageNum=${counter }&search_type=${search_type}&search_text=${search_text}'">
      [${counter }]</a>
      </c:if>
      <c:if test="${search_text eq ''}">
      <a href="javascript:window.location='noticeList.do?pageNum=${counter }'">
      [${counter }]</a>
      </c:if>
      </c:forEach>
      <c:if test="${bp.isNext() }">
      <a href="noticeList.do?pageNum=${bp.getPage_Start()+bp.p_size }">[다음]</a>
      </c:if>
      <p><p>
    
   </center>
</body>
</html>