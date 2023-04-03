<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() { //body부분이 dom tree로 메모리에 준비가 되었을 때, 입력값으로 넣은 함수 실행
		$('#b1').click(function() {
			$.ajax({
				url : "movie",
				data : {
					title : $('#title').val(),
					price : $('#price').val(),
				},
				success : function(x) {
					$('#result').append(x + '<br>')
				},
				error : function() {
					alert('computer요청 실패!')
				}
			}) //ajax
		}) //b1
		
		$('#b2').click(function() {
			$.ajax({
				url : "fruit",
				success : function(x) {
					$('#result').append(x + '<br>')
				}
			}) //ajax
		}) //b2
		
		$('#b3').click(function() {
			$.ajax({
				url : "tour",
				success : function(x) {
					$('#result').append(x + '<br>')
				}
			}) //ajax
		}) //b3	
	}) //start
</script>
</head>
<body>
		<b>영화 제목: </b><input id="title"><br>
		<b>영화 관람료: </b><input id="price"><br>
		<input id="b1" type="button" style="background: black; color: white;"
			value="영화 관람 확인"><br>
	<br>
	<input id="b2" type="button" style="background: black; color: white;" value="과일 목록">
	<br>
	<input id="b3" type="button" style="background: black; color: white;" value="여행 목록">
	<hr style="border: 2px solid">
	<div id="result"></div>
</body>
</html>