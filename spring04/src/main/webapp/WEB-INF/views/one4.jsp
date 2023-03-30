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
button {
	background: #2DB400;
}
</style>
</head>
<body>
<a href="webtoon.jsp">
		<button>첫 페이지로</button>
	</a>
	<button>삭제</button>
	<br>
<h2>웹툰 검색 결과입니다.</h2>
<hr>
<b>검색 id >></b> ${bag.id}<br>
<b>검색 title >></b> ${bag.title}<br>
<b>검색 cartoonist >></b> ${bag.cartoonist}<br>
<b>검색 star >></b> ${bag.star}<br>
<img src="resources/img/${bag.img}"><br>
</body>
</html>