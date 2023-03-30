<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button {
	background: #2DB400;
}
.top {
	background: black;
	color: white;
}

.down {
	background: #B2BEB5;
}

td {
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
<a href="webtoon.jsp">
		<button>첫 페이지로</button>
	</a>
	<button>삭제</button>
	<br>
	<h3>웹툰 전체 목록입니다.</h3>
	<hr>
	<c:forEach items="${list}" var="bag">
			검색된 id : ${bag.id}<br>
			검색된 title : <a href="one4.multi?no=${bag.id}">${bag.title}</a><br>
			검색된 cartoonist : ${bag.cartoonist}<br>
			검색된 star : ${bag.star}<br>
			<img src="resources/img/${bag.img}">
			<hr>
	</c:forEach>
</body>
</html>