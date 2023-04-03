<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button {
	background: black;
	color: white;
}
.t1{ /* .은 클래스 선택! 여러개 선택할 때 클래스 사용  */
	background : #89c2c9;
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
<%-- 현재 게시물 조회수 ${count}<br> --%>
<% if(session.getAttribute("id") != null){ %>
<h2><b>게시물 등록 화면입니다.</b></h2>
<hr style="border: 2px solid">
<form action="insert2.multi" method="get">
	title : <input name="title" value="1234"><br>
	content : <input name="content" value="park"><br>
	writer : <input name="writer" value="${id}"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr style="border: 2px solid">
<h2><b>게시판 수정 화면입니다.</b></h2>
<hr style="border: 2px solid">
<form action="update2.multi" method="get">
	no : <input name="no" value="1"><br>
	content : <input name="content" value="화요일"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr style="border: 2px solid">

<h2><b>게시판 삭제 화면입니다.</b></h2>
<hr style="border: 2px solid">
<form action="delete2.multi" method="get">
	no : <input name="no" value="1">
	<button type="submit">서버로 전송</button>
</form>
<hr style="border: 2px solid">
<%}else{ %>
<br><a href="login.jsp">
<button style="background: black; color: white;">로그인</button>
</a>
<hr style="border: 2px solid">
<%} %>
<h2><b>게시판 검색 화면입니다.</b></h2>
<a href="list2.multi"><b>모든 게시글 가져오기</b></a>
<hr style="border: 2px solid">
<form action="one2.multi" method="get">
	<b>no : </b> <input name="no" value="1">
	<button type="submit">서버로 전송</button>
</form>
</body>
</html>