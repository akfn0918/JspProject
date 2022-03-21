<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<jsp:include page = "Top.jsp" flush = "false"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="style.css" type="text/css" />
    <link rel="stylesheet" href="css/swiper.css" type="text/css" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>가입정보 확인</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<title>Welcome to BowWow</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="content-wrap">
         	<div class="container clearfix">
            <div class="container-fluid" style="margin-top:80px">
            <h1 class="page-description text-center"><i class='	far fa-thumbs-up' style='font-size:60px;color:black'>바우에 오신것을 환영합니다</i></h1>
            <div class="clear" style="margin-top:80px"></div>
          </div>
         <form class="row was-validated form-signin" action="main.jsp" method="POST">
          <div class="container-fluid clearfix" style="mergin-top:100px">
             <div class="col-sm-12">
              <div class="feature-box fbox-left topmargin">
                 <h2><i class="fas fa-phone" > 예약 및 상담시간</i></h2> 
                <h4>11:00 ~ 20:00</h4>
              </div>
              <div class="feature-box fbox-left topmargin">
               <h2><i class="fas fa-comments" > 플러스친구</i></h2>
                <h4>[바우] 으로 검색</h4>
              </div>
              <div class="feature-box fbox-left topmargin">
                </div>
                <h2><i class="fas fa-exclamation-triangle">안내사항</i></h2>
                <h4>이용 시 주의사항</h4>
                <br /><br />
              </div>
              <ul class="list-group">
                <li class="list-group-item">
                  1년 이내 5가지 접종(종합, 코로나, 켄넬코프, 신종 인플루엔자, 광견병) 받지 않은 반려견은 입실이 제한됩니다.<br />* 접종기록은 접종병원명이 꼭
                  필요하므로 증빙 자료는 미리 준비해주세요.
                </li>
                <li class="list-group-item">1살 미만의 반려견인 경우 항체 검사가 필수 입니다.<br />(단, 1살 이상 시 재접종 기록 확인)</li>
                <li class="list-group-item">생리,건강문제 또는 공격성이 강해 타 고객의 이용에 피해가 되는 반려견 일 경우 입실이 제한됩니다.</li>
                <li class="list-group-item">펫택시 이용 시, 별도의 예약이 필요합니다.<br />(* 픽업 서비스 페이지 참고)</li>
              </ul>
              <div class="form-check-inline" style="margin:10px">
  					<label class="form-check-label">
    				<input type="checkbox" class="form-check-input" value="" REQUIRED> 주의사항을 다 읽어보셨으면 확인해주세요.
 					</label>
			</div>
            </div>
            
                        

             <div class="col-sm-12" style="margin:10px">
                  <button type="submit" name="btn-send" id="btn-send" class="btn btn-primary btn-lg btn-block col-12 bg-warning">메인으로</button>
                </div>
                
            </div>
            </div>
 
     
<jsp:include page = "Bottom.jsp" flush = "false"/>
