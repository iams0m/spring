<%@page import="com.multi.mvc05.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="1">
		<tr>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">id</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">pw</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">name</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">tel</th>
		</tr>
	<c:forEach items="${list}" var="bag">
		<tr>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.id}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.pw}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.name}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.tel}</td>
		</tr>
	</c:forEach>
</table>