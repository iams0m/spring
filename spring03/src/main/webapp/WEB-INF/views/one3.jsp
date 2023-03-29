<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	background: #f0f567;
}
</style>
</head>
<body>
<h2>북마크 검색 결과입니다.</h2>
<hr>
<b>검색 id >></b> ${bag.id}<br>
<b>검색 name >></b> ${bag.name}<br>
<b>검색 url >></b> ${bag.url}<br>
<b>검색 img >></b> ${bag.img}
<img src="resources/img/${bag.img}">
</body>
</html>