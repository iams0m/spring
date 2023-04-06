<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	background: black;
	color: white;
}
</style>
</head>
<body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8ab6186bb587538d75199b2dc9588259"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url : "jsonResponse5",
				dataType : "json",
				success : function(json) {
					lat = json.lat
					lon = json.lon
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(lat,lon), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 마커가 표시될 위치입니다 
					var markerPosition = new kakao.maps.LatLng(lat, lon);

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position : markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
				} //success
			}) //ajax
		})//b1
		
		$("#b2").click(function() {
			$.ajax({
				url: "jsonResponse6",
				dataType: "json",
				success: function(json) {
					lat = json.lat
					lon = json.lon
					loc = "코엑스"
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(lat, lon); 
	
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});
	
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
				} //success
			}) //ajax
		}) //b2
	}) //start
</script>
	<button id="b1">카카오 맵에 코엑스 좌표 찍어보기</button>
	<button id="b2">카카오 맵2에 코엑스 좌표 찍어보기</button>
	
	<hr style="border: 2px solid">
	<div id="map" style="width:100%;height:350px;"></div>
</body>
</html>