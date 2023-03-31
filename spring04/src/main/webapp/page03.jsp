<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background: #F5DEB3
}
</style>
</head>
<body>
<%
	session.setAttribute("view", 100);
//세션의 값으로는 아무 타입이나 다 넣어도 됌.
//==> 주차장 생각! Car면 다 됌.
//==> Car(큰) <-- 트럭, 승용차, 버스, ...(작)
//==> 타입변환(형변환), 자동형변환
%>
<hr>
서버에 session 속성 등록 완료!
<a href="page04.jsp">session 속성 가져오기</a>
</body>
</html>