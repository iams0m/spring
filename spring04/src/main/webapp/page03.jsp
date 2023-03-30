<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background: #96DED1
}
</style>
</head>
<body>
<%
	session.setAttribute("view", 100);
%>
<hr>
서버에 session 속성 등록 완료!
<a href="page04.jsp">session 속성 가져오기</a>
</body>
</html>