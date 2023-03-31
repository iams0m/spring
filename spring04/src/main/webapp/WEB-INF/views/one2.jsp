<%@page import="com.multi.mvctest.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: #cbe66c;
}
</style>
</head>
<body>
	<a href="bbs.jsp"><b>첫 페이지로</b></a>
	<a href="list2.multi"><b>모든 게시글 가져오기</b></a>
	<hr>
	<%
		//세션에서 값을 꺼내는 방법
	String id = (String) session.getAttribute("id");
	//모델에서 값을 꺼내는 방법
	//model.addAttribute("bag", bag);
	BbsVO bag = (BbsVO) request.getAttribute("bag");
	String writer = bag.getWriter();
	if(id != null){
	if (id.equals(writer)) {
	%>
	<a href="update2.jsp">
		<button style="background: #E97451;">수정</button>
	</a>
	<a href="delete2.multi?no=${bag.no}">
		<button style="background: #E97451;">삭제</button>
	</a>
	<%}}%>
	<h3>게시판 검색 처리 요청이 완료되었습니다.</h3>
	<hr>
	<b>no >></b> ${bag.no}
	<br>
	<!-- 출력용(expression language-EL) -->
	<b>title >></b> ${bag.title}
	<br>
	<b>content >></b> ${bag.content}
	<br>
	<b>writer >></b> ${bag.writer}
</body>
</html>