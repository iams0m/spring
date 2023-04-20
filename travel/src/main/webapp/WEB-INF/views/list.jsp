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
<h3>전체 목록입니다.</h3><br>
<!-- bag.getId() -->
<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
<!-- EL : 속성으로 지정한 값 꺼내서 출력 -->
<!-- for (String s : list) {

		} 
-->
<c:forEach items="${list}" var="bag">
<!-- items : 뭘 가지고 foreach문 돌릴래 ? => EL로 작성해야합니다. 
bag 꺼내어 list에 있는 거 돌려주세요. -->
<%-- <c:forEach items="${list}" var="bag" begin="1" end="3" step="2"> --%>
<img src=resources/img/광안리어방축제.jpg><br> <!-- 출력용(expression language-EL) -->
${bag.title}<br>
${bag.area}<br>
${bag.brief_contents}
<hr>
</c:forEach>
</body>
</html>