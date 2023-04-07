<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>검색 처리 요청이 완료되었습니다.</h3><br>
<!-- bag.getId() -->
<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
<!-- EL : 속성으로 지정한 값 꺼내서 출력 -->
<b>지역 >></b> ${bag.area}<br> <!-- 출력용(expression language-EL) -->
<b>장소 >></b> ${bag.place}<br>
<b>후기 >></b> ${bag.review}<br>
<b>평점 >></b> ${bag.grade}

</body>
</html>