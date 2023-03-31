<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
button {
	background: #2DB400;
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
<hr>
<form action="insert2.multi" method="get">
	title : <input name="title" value="1234"><br>
	content : <input name="content" value="park"><br>
	writer : <input name="writer" value="${id}"><br>
	<button type="submit" class="btn btn-success">서버로 전송</button>
</form>
<hr>
<h2><b>게시판 수정 화면입니다.</b></h2>
<hr>
<form action="update2.multi" method="get">
	no : <input name="no" value="1"><br>
	content : <input name="content" value="화요일"><br>
	<button type="submit" class="btn btn-success">서버로 전송</button>
</form>
<hr>

<h2><b>게시판 삭제 화면입니다.</b></h2>
<hr>
<form action="delete2.multi" method="get">
	no : <input name="no" value="1">
	<button type="submit" class="btn btn-success">서버로 전송</button>
</form>
<hr>
<%}else{ %>
<br><a href="login.jsp">
<button style="background: #FA8072;">로그인</button>
</a>
<%} %>
<h2><b>게시판 검색 화면입니다.</b></h2>
<a href="list2.multi">모든 게시글 가져오기</a>
<hr>
<form action="one2.multi" method="get">
	no : <input name="no" value="1">
	<button type="submit" class="btn btn-success">서버로 전송</button>
</form>
</body>
</html>