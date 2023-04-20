<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>검색 결과입니다.</h3>
<hr>
<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
<!-- EL : 속성으로 지정한 값 꺼내서 출력 -->
${bag.img}<br> <!-- 출력용(expression language-EL) -->
${bag.title}<br>
${bag.area}<br>
${bag.brief_contents}

</body>
</html>