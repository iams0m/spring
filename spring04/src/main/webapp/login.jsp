<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.t1{ /* .은 클래스 선택! 여러개 선택할 때 클래스 사용  */
	background : #89c2c9;
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
<% if(session.getAttribute("id") == null){%> <!-- 로그인이 되지 않았을 때 -->
<h2>로그인 화면입니다.</h2>
<hr>
<form action="login" method="get">
	id : <input name="id" value="apple"><br>
	pw : <input name="pw" value="1234"><br>
	<button type="submit">서버로 전송</button>
</form>
<%}else{%>
<hr>
<b>${id}님이 로그인 중입니다!</b>
<a href="bbs.jsp">
<button style="background: #E97451;">게시판 바로가기</button>
</a>
<a href="news.jsp">
<button style="background: #E97451;">뉴스 바로가기</button>
</a>
<a href="cafe.jsp">
<button style="background: #E97451;">카페 바로가기</button>
</a>
<hr>
<img src="https://cdn.pixabay.com/photo/2021/07/04/20/11/octopus-6387502__340.png" width="550" height="400">
<%}%>
</body>
</html>