<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background: #93C572
}
</style>
</head>
<body>
<% session.setAttribute("count", 100); %>
<!-- 속성으로 지정한 것은 EL로 표시할 수 있다! -->
<!-- 두개 동일 -->
시작 현재 카운트 : <%= session.getAttribute("count")%>, ${count}
<hr>
<a href="session속성가지고오기2.jsp">session 속성 가지고 오기2</a>
</body>
</html>