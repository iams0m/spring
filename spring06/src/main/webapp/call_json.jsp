<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button{
background: black;
color: white;
}
</style>
<!-- content delivery network : CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json.jsp",
				success: function(json) {
					$('#result').append(json)
				} //success
			}) //ajax
		}) //b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json2.jsp",
				dataType : "json",
				success: function(json) {
					age1 = json[1].age
					name1 = json[1].name
					id1 = json[1].id
					$('#result').append(age1 + " " + name1 + " " + id1 + "<br>")
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json3.jsp",
				dataType : "json",
				success: function(json) {
					today = json.today
					temp = json.temp
					hum = json.hum
					$('#result').append("오늘의 날씨 : " + today + "<br>" + "온도 : " + temp + "<br>" + "습도 : " + hum + "<br>")
					if(today == 'rain') {
						$('#result').append("<img src=resources/img/rain.jpg><br>")
					}else if(today == 'sun'){
						$('#result').append("<img src=resources/img/sun.jpg><br>")
					}
				} //success
			}) //ajax
		})//b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json4.jsp",
				dataType: "json",
				success: function(json) {
					high = json[0].high
					low = json[0].low
					end = json[0].end
					
					high2 = json[1].high2
					low2 = json[1].low2
					end2 = json[1].end2
					$('#result').append("<b><어제 주가></b> " + "<br>" + "최고 : " + high + "<br>" + "최저 : " + low + "<br>" + "종가 : " + end + "<br><br>" +
							"<b><오늘 주가></b> " + "<br>" + "최고 : " + high2 + "<br>" + "최저 : " + low2 + "<br>" + "종가 : " + end2)
				} //success
			}) //ajax
		}) //b4
	})
</script>
</head>
<body>
<button id="b1">JSON을 받아오자!</button>
<button id="b2">JSONArray를 받아오자</button>
<button id="b3">JSON3을 받아오자</button>
<button id="b4">JSONArray4를 받아오자</button>
<hr style="border: 2px solid">
<div id="result"></div>
</body>
</html>