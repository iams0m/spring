<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<h1><b>여행 정보 사이트입니다.</b></h1>
<a href="list"><b>여행 정보 전체 목록</b></a><br>
<hr style="border: 2px solid">
<h2><b>여행 정보 검색 화면입니다.</b></h2>
<form action="one" method="get">
	<b>place :</b> <input name="place">
	<button type="submit" >검색</button>
</form>
<hr style="border: 2px solid">
<h2><b>여행 정보 등록 화면입니다.</b></h2>
<form action="insert" method="get">
	<b>번호 :</b> <input name="no"><br>
	<b>지역 :</b> <input name="area"><br>
	<b>장소 :</b> <input name="place"><br>
	<b>후기 :</b> <input name="review"><br>
	<b>평점 :</b> <input name="grade"><br>
	<button type="submit">등록</button>
</form>
<hr style="border: 2px solid">
<h2><b>여행 정보 수정 화면입니다.</b></h2>
<hr style="border: 2px solid">
<form action="update" method="get">
	<b>장소 :</b> <input name="place" ><br>
	<b>후기 :</b> <input name="review"><br>
	<button type="submit">수정</button>
</form>
<hr style="border: 2px solid">
<h2><b>여행 정보 삭제 화면입니다.</b></h2>
<hr style="border: 2px solid">
<form action="delete3.multi" method="get">
	<b>번호 :</b> <input name="no" >
	<button type="submit">삭제</button>
</form>
</body>
</html>