<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background: #9FE2BF
}
</style>
</head>
<body>
로그인한 사람의 id는 <%= session.getAttribute("user") %><br>
현재 방문횟수는 <%= session.getAttribute("count") %>번
</body>
</html>