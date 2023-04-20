<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원검색 처리 요청이 완료되었습니다.</h3>
<hr>
<!-- bag.getId() -->
<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
<!-- EL : 속성으로 지정한 값 꺼내서 출력 -->
<b>검색 id >></b> ${bag.id}<br> <!-- 출력용(expression language-EL) -->
<b>검색 pw >></b> ${bag.pw}<br>
<b>검색 name >></b> ${bag.name}<br>
<b>검색 tel >></b> ${bag.tel}

</body>
</html>