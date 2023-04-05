<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//스크립트릿
	JSONObject json = new JSONObject();
	json.put("high", "2,747.85"); //{name : hong}
	json.put("low", "2,134.77");
	json.put("end", "2,480.51");
	
	JSONObject json2 = new JSONObject();
	json2.put("high2", "2,737.54"); //{name : hong}
	json2.put("low2", "2,134.77");
	json2.put("end2", "2,486.81");
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	
	//out.print(json.toJSONString());
	//json.toJSONString(); //{name : hong} 모양으로 만들어주는 함수
%><%= array.toJSONString() %> 
