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
padding: 8px;
text-align: center;
border-bottom: 1px solid #ddd;
}
table {
  border-collapse: collapse;
  width: 100%;
}
td {
  background: #E5E4E2;
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url : "jsonResponse3",
				dataType: "json",
				success : function(json) {
					$('#result').empty()
					$('#result').append("<b><h2>Table</h2></b>")
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					table = "<table><tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th></tr>" + 
					"<tr><td>" + id + "</td><td>" + pw + "</td><td>" + name + "</td><td>" + tel + "</td></tr></table>"
					$('#result').append(table)
				} //success
			}) //ajax
		})//b1
		$('#b2').click(function() {
			$.ajax({
				url : "jsonResponse4",
				dataType: "json",
				success : function(json) {
					$('#result').empty()
					$('#result').append("<b><h2>List</h2></b>")
					for (i = 0; i < json.length; i++){
						$('#result').append("<ul><li>" + json[i].id + "</li><li>" + json[i].pw + "</li><li>" + json[i].name + "</li><li>" + json[i].tel + "</li></ul>"
						) //result
					} //for
					$('#result').append("</table>")
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$.ajax({
				url : "jsonResponse4",
				dataType: "json",
				success : function(json) {
					$('#result').empty()
					$('#result').append("<b><h2>Table</h2></b>")
					$('#result').append("<table><tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th></tr>")
					for (i = 0; i < json.length; i++){
						$('#result').append("<tr><td>" + json[i].id + "</td><td>" + json[i].pw + "</td><td>" + json[i].name + "</td><td>" + json[i].tel + "</td></tr>"
						) //result
					} //for
					$('#result').append("</table>")
				} //success
			}) //ajax
		})//b3
	})//$
</script>
</head>
<body>
	<button id="b1">member table</button>
	<button id="b2">member list</button>
	<button id="b3">member table2</button>
	<hr style="border: 2px solid">
	<div id="result"></div>
</body>
</html>