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
<h2>영화 장르 검색 화면입니다.</h2>
<hr>
<form action="movie" method="get">
영화 장르 : <input name = "movie" value = "드라마"><br>
<button type="submit">서버로 전송</button>
</form>
</body>
</html>