<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.top {
	background: black;
	color: white;
}
.down{
	background:#B2BEB5;
}
td {
	width: 150px;
	text-align: center;
}
</style>
</head>
<body>
	<h3>게시글 검색 처리 요청이 완료되었습니다.</h3>
	<hr>
	<br>
	<!-- bag.getId() -->
	<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
	<!-- EL : 속성으로 지정한 값 꺼내서 출력 -->
	<!-- for (String s : list) {

		} 
-->
	<table border="1">
		<thead>
			<tr>
				<th class="top">no</th>
				<th class="top">title</th>
				<th class="top">content</th>
				<th class="top">writer</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="bag">
			<tr>
				<td class="down">${bag.no}</td>
				<td class="down"><a href="one2.multi?no=${bag.no}">${bag.title}</a></td>
				<td class="down">${bag.content}</td>
				<td class="down">${bag.writer}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>