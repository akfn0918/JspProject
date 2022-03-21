<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Welcome to BowWow</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-warning text-white fixed-top">
		<div class="container">
			<a class="navbar-brand" href="main.jsp">BowWow</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="telCheck.jsp">예약하기</a></li>
					<li class="nav-item"><a class="nav-link" href="password1.jsp">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="gallery.jsp">갤러리</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div style="margin-top:70px;">	
      <img src="./picture/racoon1.jpg" alt="" class="mx-auto d-block rounded-circle" width="900"height="600">
	</div>
	<div style="margin-left:30%">
		<h1>BowWow에 오신것을 환영합니다!</h1>
	</div>
	
	<h3 style="margin-top:100px;margin-left:30%">오시는 길</h3>
	<div id="map" style="margin-top:30px;margin-left:25%;width:700px;height:350px;"></div>
	
	

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86265ee2a8a0c3e697dac57e53820a97"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.57097018210591, 126.99246334307693), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.57097018210591, 126.99246334307693); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<footer class="py-3 "  style="margin-top:10%;background-color:lightgray">
	<div class="container">
		<p class="m-0 text-center text-black">
				만든 사람들 2 조 이동호 신채민 김민규 이창현
		</p>
	</div>
</footer>	
	
</body>
</html>