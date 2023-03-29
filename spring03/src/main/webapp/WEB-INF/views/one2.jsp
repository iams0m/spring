<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	background: #cbe66c;
}
</style>
</head>
<body>
<h3>게시판 검색 처리 요청이 완료되었습니다.</h3>
<hr>
<b>no >></b> ${bag.no}<br> <!-- 출력용(expression language-EL) -->
<b>title >></b> ${bag.title}<br>
<b>content >></b> ${bag.content}<br>
<b>writer >></b> ${bag.writer}
</body>
</html>