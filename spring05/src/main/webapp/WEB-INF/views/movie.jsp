<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
th, td{
font-size: 20px; text-align: center; width: 1000px; height: 50px;
}
</style>
</head>
<body>
<!-- computer호출했을 때 결과 담을 곳! -->
<table border=1>
<tr>
	<th style="background: #89CFF0">영화제목</th>
	<th style="background: #89CFF0">영화가격</th>
</tr>
<tr>
	<td style="background: #9FE2BF">${vo.title}</td>
	<td style="background: #9FE2BF">${vo.price}</td>
</tr>
<tr>
	<td colspan="2"><a href="">문자인증받기</a></td>
</tr>
</table>
</body>
</html>