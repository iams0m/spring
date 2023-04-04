<%@page import="com.multi.mvc05.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="1">
		<tr>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">no</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">bbsno</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">content</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">writer</th>
		</tr>
	<c:forEach items="${list}" var="bag">
		<tr>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px">${bag.no}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px">${bag.bbsno}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px">${bag.content}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px">${bag.writer}</td>
		</tr>
	</c:forEach>
</table>