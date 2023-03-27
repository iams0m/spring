<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    //MVC방법론 버전 1 => MVC1(JSP로 만들었을 때)
    //MVC방법론 버전 2 => MVC2(spring으로 만든다.)
    //1.브라우저에서 넘어오는 값 서버에서 받아주세요.
    //넘어오는 값 제어해주는 코드(자바코드)
    //Controller(자바코드)
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    
    //2.dao에 데이터 값을 주면서 Insert 요청하세요.(자바코드)
    //DAO(JDBC 4단계에 의해 코딩됨. 항상 방법 동일!)
    //Model(자바코드)
    
    //3.결과를 html에 담아서 클라이언트로 전송해주세요.(html)
    //보여주는 부분
    //View(html)
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
</head>
<body>
<b>가입한 아이디</b> : <%= id %><br>
<b>가입한 비밀번호</b> : <%= pw %><br>
<b>가입한 이름</b> : <%= name %><br>
<b>가입한 전화번호</b> : <%= tel %>
</body>
</html>