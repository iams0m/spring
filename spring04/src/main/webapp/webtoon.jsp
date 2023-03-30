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
.t1{ /* .은 클래스 선택! 여러개 선택할 때 클래스 사용  */
	background : #89c2c9;
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
<h2>웹툰 검색 화면입니다.</h2>
<a href="list4.multi"><b>모든 웹툰 정보 가져오기</b></a>
<hr>
<form action="one4.multi" method="get">
	id : <input name="id">
	<button type="submit" class="btn btn-success">서버로 전송</button>
</form>
</body>
</html>
</html>