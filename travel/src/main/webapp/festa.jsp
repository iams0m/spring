<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button {
	background: #7ac0cf;
}
.t1{ /* .은 클래스 선택! 여러개 선택할 때 클래스 사용  */
	background : #89c2c9;
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
<h2><b>축제 검색 화면입니다.</b></h2>
<a href="list" style="text-decoration: none; color: black;"><b>전체</b></a>
<hr>
<form action="one" method="get">
	title : <input name="no" placeholder="어떤 축제를 찾으시나요?">
	<button type="submit">검색</button>
</form>
</body>
</html>