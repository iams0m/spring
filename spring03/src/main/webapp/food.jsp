<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<style>
button {
	background: #2DB400;
}
</style>
</head>
<body>
<form action="food" method="get">
좋아하는 음식 : <input name = "like" type="text"><br>
싫어하는 음식 : <input name = "dislike" type="text"><br>
<button type="submit">서버로 전송</button>
</form>
</body>
</html>