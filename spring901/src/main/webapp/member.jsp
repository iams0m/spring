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
<h2>로그인 화면입니다.</h2>
<hr>
<form action="login" method="get">
	id : <input name="id" value="apple"><br>
	pw : <input name="pw" value="1234"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr>

<h2>회원가입 화면입니다.</h2>
<hr>
<form action="insert" method="get">
	id : <input name="id" value="samsung"><br>
	pw : <input name="pw" value="1234"><br>
	name : <input name="name" value="lee"><br>
	tel : <input name="tel" value="011"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr>

<h2>회원수정 화면입니다.</h2>
<hr>
<form action="update" method="get">
	id : <input name="id" value="apple"><br>
	tel : <input name="tel" value="011"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr>

<h2>회원탈퇴 화면입니다.</h2>
<hr>
<form action="delete" method="get">
	id : <input name="id" value="apple"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr>

<h2>회원검색 화면입니다.</h2>
<a href="list">모든 회원정보 가져오기</a>
<hr>
<form action="one" method="get">
	id : <input name="id" value="apple"><br>
	<button type="submit">서버로 전송</button>
</form>
</body>
</html>
</html>