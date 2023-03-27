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
	background: #3a7cba;
}
.t1{ /* .은 클래스 선택! 여러개 선택할 때 클래스 사용  */
	background : #89c2c9;
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
<h2>회원가입 화면입니다.</h2>
<hr>
<form action="insert.jsp" method="get">
<table border="1">
		<tr>
			<td class="t1"><b>아이디</b></td>
			<td>
				<input name="id">
			</td>
		</tr>
		<tr>
			<td class="t1"><b>비밀번호</b></td>
			<td>
				<input name="pw">
			</td>
		</tr>
		<tr>
			<td class="t1"><b>회원이름</b></td>
			<td>
				<input name="name">
			</td>
		</tr>
		<tr>
			<td class="t1"><b>전화번호</b></td>
			<td>
				<input name="tel">
			</td>
		</tr>
		<tr>
			<td colspan="2" class="t1">
				<button><b>회원가입</b></button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>