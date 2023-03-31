<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="https://imgnews.pstatic.net/image/009/2023/03/31/0005109840_001_20230331142403800.jpg?type=w647" width="500" height="500">
<hr>
<% if(session.getAttribute("id") != null){%> <!-- 로그인이 되지 않았을 때 -->
	<a href="bbb"><button style="background: #E97451;">공동구매 참여</button></a>
<%} else{%>
	<a href="login.jsp"><button style="background: #E97451;">로그인</button></a>
<%} %>
</body>
</html>