<%@page import="com.multi.mvc05.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<a href="bbs.jsp"><b>처음페이지로</b></a>
<a href="list2.multi"><b>게시물 전체 목록페이지</b></a>
<hr style="border: 2px solid">
<h3>게시글 검색 처리 요청이 완료되었습니다.</h3>
${bag.no}, ${bag.title}, 
${bag.content}, ${bag.writer}
<hr style="border: 2px solid">
<h3>댓글</h3>
<input id="reply">
<button style="background: black; color: white;">댓글달기</button>
<hr style="border: 2px solid">
<div id="result">
<c:forEach items="${list}" var="bag">
<h4 style="color: #5F9EA0;">${bag.writer} : ${bag.content}</h4>
<hr style="border: 1px solid">
</c:forEach>
</div>
</body>
</html>