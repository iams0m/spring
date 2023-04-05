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
th{
background: pink;
}
/*td{
background: #E5E4E2;
} */
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: pink;}
</style>
<!-- content delivery network : CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel //json에서 tel키로 값 추출
					$('#result').append("id : " + id + "<br>" + "pw : " + pw + "<br>" + "name : " + name + "<br>" + "tel : " + tel + "<br>")
				} //success
			}) //ajax
		}) //b1
		$('#b11').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					table = "<table><tr><th>항목명</th><th>값</th></tr>" + 
					"<tr><td>아이디</td><td>" + id +"</td></tr>" + 
					"<tr><td>패스워드</td><td>" + pw +"</td></tr>" + 
					"<tr><td>이름</td><td>" + name +"</td></tr>" + 
					"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>"
					$('#result').append(table)
				} //success
			}) //ajax
		}) //b11
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json2",
				dataType : "json",
				success: function(json) {
					id1 = json[1].id
					name1 = json[1].name
					$('#result').append("json배열 중 2번째 것>> " + name1 + " " + id1 + "<br>")
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json3",
				dataType : "json",
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer
					table = "<table><tr><th>번호</th><th>제목</th><th>내용</th><th>작성자</th></tr>" + 
					"<tr><td>" + no + "</td><td>" + title + "</td><td>" + content + "</td><td>" + writer + "</td></tr></table>" + 
					$('#result').append(table)
				} //success
			}) //ajax
		})//b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json4",
				dataType : "json",
				success: function(json) {
					title1 = json[0].title
					content1 = json[0].content
					$('#result').append("json배열 중 2번째 것>> " + title1 + " " + content1 + "<br>")
				} //success
			}) //ajax
		})//b2
	})
</script>
</head>
<body>
<button id="b1">컨트롤러에서 JSON(텍스트)을 받아오자!</button>
<button id="b11">컨트롤러에서 JSON을 받아오자!</button>
<button id="b2">컨트롤러에서 JSONArray를 받아오자</button>
<hr style="border: 2px solid">
<button id="b3">컨트롤러에서 JSON3을 받아오자</button>
<!-- url: json3, bbs vo에 값을 하나 넣어서 json으로 받아와서 출력 -->
<button id="b4">컨트롤러에서 JSONArray4를 받아오자</button>
<!-- url: json4, bbs vo 2개가 들어간 arraylist를 만들어서 json array로 받아와서 출력 -->
<hr style="border: 2px solid">
<div id="result"></div>
</body>
</html>