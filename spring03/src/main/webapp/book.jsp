<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<style>
body{
	background: #f0f567;
}
button {
	background: #2DB400;
}
input{ /* .은 클래스 선택! 여러개 선택할 때 클래스 사용  */
	background : #b7ebc6;
	width: 180px;
	text-align: center;
}
</style>
</head>
<body>
<h3>북마크 페이지 입니다.</h3>
<hr>
<br><h2><b>북마크 글쓰기</b></h2><br>
<hr>
<form action="insert3.multi" method="get">
	name : <input name="name"><br>
	url : <input name="url"><br>
	img : <input name="img"><br>
	<button type="submit" class="btn btn-success">서버로 전송</button>
</form>
<hr>
<br><h2><b>북마크 삭제하기</b></h2><br>
<hr>
<!--  -->
<form action="delete3.multi" method="get">
	id : <input name="id"><br>
	<button type="submit" class="btn btn-success">북마크 삭제하기</button>
</form>
<hr>
<br><h2><b>북마크 수정하기</b></h2><br>
<hr>
<form action="update3.multi" method="get">
	url : <input name="url"><br>
	id : <input name="id"><br>
	<button type="submit" class="btn btn-success">북마크 수정하기</button>
</form>
<hr>
<br><h2><b>북마크 검색하기</b></h2><br>
<hr>
<form action="one3.multi" method="get">
	id : <input name="id"><br>
	<button type="submit" class="btn btn-success">북마크 검색</button>
</form>
<hr>
<a href="list.multi"><b>전체 목록 가지고오기</b></a>
</body>
</html>