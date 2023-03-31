<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원검색 처리 요청이 완료되었습니다.</h3><br>
<!-- bag.getId() -->
<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
<!-- EL : 속성으로 지정한 값 꺼내서 출력 -->
<!-- for (String s : list) {

		} 
-->
<c:forEach items="${list}" var="bag">
<%-- <c:forEach items="${list}" var="bag" begin="1" end="3" step="2"> --%>
<b>검색 id >></b> ${bag.id}<br> <!-- 출력용(expression language-EL) -->
<b>검색 pw >></b> ${bag.pw}<br>
<b>검색 name >></b> ${bag.name}<br>
<b>검색 tel >></b> ${bag.tel}<br>
<hr>
</c:forEach>
</body>
</html>