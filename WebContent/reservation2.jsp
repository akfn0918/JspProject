<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<jsp:include page = "Top.jsp" flush = "false"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
      <link rel="stylesheet" href="gallery.css">
<title>날짜 예약하기</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

</head>
<body>


<section id="content" >
            <div class="col-half bottommargin-sm col-last " style="margin-top:80px">
            
            	<h1 class="page-description text-center"><i class='far fa-hand-peace' style='font-size:60px;color:black'>예약정보를 입력하세요.</i></h1>
            <div  style="margin-top:80px" ></div>
              <form class="row was-validated form-signin" action="reservation2.do" method="POST">
             
 
                
                <div class="col-sm-6 form-group topmargin">
                  <label>희망 서비스</label>
                  <select class="form-control " name="service" id="service" required>
                    <option value="데이케어">데이케어</option>
                    <option value="유치원">유치원</option>
                    <option value="호텔링">호텔링</option>
                  </select>
                  
                </div>
                
                <div class="col-sm-6 form-group topmargin">
                  <label>체크인</label>
                  <input type="date" class="form-control datepicker " name="desire-date" id="desire-date"  placeholder="MM/DD/YYYY" required/>
                  <div class="valid-feedback">입력되었습니다.</div>
  					<div class="invalid-feedback">날짜를 선택해주세요.</div>
                </div>
                <div class="col-sm-6 form-group topmargin">
                  <label>체크아웃</label>
                  <input type="date" class="form-control datepicker" name="checkout-date" id="checkout-date" placeholder="MM/DD/YYYY"  required/>
                  <input type="hidden" name="tel" value="${mVO.tel}">
                  <input type="hidden" name="pname" value="${pVO.p_name}">
                  <input type="hidden" name="pweight" value="${pVO.p_weight}">
                  
                  <div class="valid-feedback">입력되었습니다.</div>
  					<div class="invalid-feedback">날짜를 선택해주세요.</div>
                </div>


 
                <div class="col-sm-6">
                  <button type="submit" name="btn-send" id="btn-send" class="btn btn-primary btn-lg btn-block col-12 bg-warning">예약하기</button>
                </div>
                
				
					</form>
		</div>	
      </section>
	<!-- Page Content -->







<!-- Footer -->
<jsp:include page = "Bottom.jsp" flush = "false"/>
