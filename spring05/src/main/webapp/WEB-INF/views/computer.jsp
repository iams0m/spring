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
	<th style="background: #89CFF0">항목명</th>
	<th style="background: #89CFF0">가격</th>
</tr>
<tr>
	<td>${vo.com}</td>
	<td>${vo.price}</td>
</tr>
<tr>
	<td>${vo.mouse}</td>
	<td>${vo.price2}</td>
</tr>
<tr>
	<th style="background: #6495ED">총계</th>
	<td style="background: #6495ED">${vo.sum}</td>
</tr>
</table>
</body>
</html>