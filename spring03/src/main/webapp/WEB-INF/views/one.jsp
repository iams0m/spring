<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원검색 처리 요청이 완료되었습니다.</h3><br>
<!-- bag.getId() -->
<b>검색 id >></b> ${bag.id}<br> <!-- 출력용(expression language-EL) -->
<b>검색 pw >></b> ${bag.pw}<br>
<b>검색 name >></b> ${bag.name}<br>
<b>검색 tel >></b> ${bag.tel}

</body>
</html>