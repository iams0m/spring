<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table border="1">
		<tr>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">no</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">title</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">content</th>
			<th style="font-size: 20px; text-align: center; width: 1000px; height: 50px; background: #89CFF0">writer</th>
		</tr>
		<tr>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.no}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.title}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.content}</td>
			<td style="font-size: 20px; text-align: center; width: 1000px; height: 50px;">${bag.writer}</td>
		</tr>
</table>