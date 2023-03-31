<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h2><b>'충격' 원하지 않았던 영입...홀란 '대기록' 작성하고도 매각된다</b></h2><br>
<img src="https://imgnews.pstatic.net/image/216/2023/03/31/0000126930_001_20230331114601316.jpg?type=w647" width="550" height="400">
<hr>
<% if(session.getAttribute("id") != null){%> <!-- 로그인에 성공해서 ram에 id 저장 -->
<form action="aaa">댓글 : <input name="reply"> <button style="background: #E97451;">댓글달기</button>
</form>
<%} %>
</body>
</html>