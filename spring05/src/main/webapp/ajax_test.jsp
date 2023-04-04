<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	background: black;
	color: white;
}
</style>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<meta content='width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no' name='viewport'>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/cors.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "list5",
			success : function(x) {
				$('#result').append(x)
			} //success
		}) //ajax
		$('#b1').click(function() {
			//기존의 것 삭제됨.
			$('#result').empty()
			$.ajax({
				url : "list5",
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list6",
				data : {
					bbsno : 3
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list6",
				data : {
					bbsno : 2
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url : "one5",
				data : {
					id: "apple"
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		}) //b4
		$('#b5').click(function() {
			$('#result').empty()
			$.ajax({
				url : "one6",
				data : {
					no : 3
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b5
		$('#b6').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list7",
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b6
		$('#b7').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list8",
				data : {
					writer: "apple"
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b7
		$('#b8').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list9",
				data : {
					writer: "apple"
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b8
		$('#b9').click(function() {
			$.ajax({
				crossOrigin: true,
				url:'http://api.openweathermap.org/data/2.5/weather?q=seoul&units=metirc&lang=kr&appid=43238037f8f84c1b9d70369513a425e6',
				dataType : 'json',
				success: function(x){
					console.log(x);
					$('#result').html("위치 : "+x.name+"<br>"+
							"날씨 : "+x.weather[0].description+"<br>"+
							"풍속 : "+x.wind.speed+"<br>"+
							"최고 기온 : "+x.main.temp_max+"<br>"+
							"최저 기온 : "+x.main.temp_min+"<br>"+
							"체감 온도 : "+x.main.feels_like+"<br>"+
							"구름 : "+x.clouds.all+"<br>")
				} //success
			}) //ajax
		}) //b9
		$('#b10').click(function() {
			$('#result').empty()
			$.ajax({
				url : "update2.multi",
				data : {
					no : $('#no').val(),
					content : $('#content').val()
				},
				success : function() {
					$('#result').append("수정완료");
				} //success
			}) //ajax
		})//b10
		$('#b11').click(function() {
			$('#result').empty()
			$.ajax({
				url : "delete2.multi",
				data : {
					no : $('#no2').val()
				},
				success : function(x) {
					location.href="ajax_test.jsp"
				} //success
			}) //ajax
		})//b11
	})//$
</script>
</head>
<body>
	<button id="b1">bbs리스트 가지고 오기</button>
	<button id="b2">bbs번호 3번 reply리스트 가지고 오기</button>
	<button id="b3">bbs번호 2번 reply리스트 가지고 오기</button>
	<button id="b4">member id가 apple인사람의 정보 가지고 오기</button>
	<button id="b5">bbs no가 3인 게시물의 상세 정보 가지고 오기</button>
	<button id="b6">member의 모든 리스트 가지고 오기</button>
	<button id="b7">apple의 모든 게시글</button>
	<button id="b8">apple의 댓글 리스트</button>
	<hr style="border: 2px solid">
	<button id="b9">날씨 가져오기</button><br>
	
	<hr style="border: 2px solid">
	no : <input id="no"><br>
	content : <input id="content"><br>
	<button id="b10">게시판 수정</button>
	
	<hr style="border: 2px solid">
	no : <input id="no2">
	<button id="b11">게시판 삭제</button>
	 
	<hr style="border: 2px solid">
	<div id="result"></div>
</body>
</html>