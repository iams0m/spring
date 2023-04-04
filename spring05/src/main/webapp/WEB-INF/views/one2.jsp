<%@page import="com.multi.mvc05.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			//1. 화면을 이동하지 않고 서버에 insert해달라고 요청==>url
			//2. 성공하면, result아래에 append!
			//insert4?bbsno=1&content=best&writer=apple
			content = $('#reply').val() //id가 reply인 input값
			writer = "apple" //로그인 아이디에 따라 달라지는 작성자
			$.ajax({
				url : "insert4",
				data : {
					bbsno : ${bag.no},
					content : content,
					writer : writer
				},
				success : function() {
					alert('성공!')
					$('#result').append("<b>" + writer + " : " + content +"</b>" + "<br>")
					$('#reply').val('')
				} //success
			}) //ajax
		}) //b1
	}) //start
</script>
</head>
<body>
<a href="bbs.jsp"><b>처음페이지로</b></a>
<a href="list2.multi"><b>게시물 전체 목록페이지</b></a>
<hr style="border: 2px solid">
<h3>게시글 검색 처리 요청이 완료되었습니다.</h3>
${bag.no}, ${bag.title}, 
${bag.content}, ${bag.writer}
<hr style="border: 2px solid">
<h3>댓글</h3><input id="reply"> <button id="b1" style="background: black; color: white;">댓글달기</button><br>
<hr style="border: 2px solid">
<div id="result">
<!-- for-each를 이용해 댓글 목록을 프린트!! -->
	<c:forEach items="${list}" var="bag"> 
	<b>${bag.writer} : ${bag.content}</b><br>
	</c:forEach>
</div>
</body>
</html>