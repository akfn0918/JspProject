<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

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
    
<title>강아지 정보입력</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

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

<section id="content" >
        
            <div class="col-half bottommargin-sm col-last" style="margin:80px">
            <h1 class="page-description text-center"><i class='	far fa-hand-pointer' style='font-size:60px;color:black'>강아지 정보를 입력하세요.</i></h1>
            <div  style="margin-top:80px" ></div>
              <form class="row was-validated form-signin" action="reservation1.do" method="POST">
             
                
                <div class="col-sm-6 form-group topmargin">
                  <label>강아지명</label>
                  <input type="text" name="pname" id="pname" class="form-control " value="" placeholder="" required/>

                </div>
                 <div class="col-sm-6 form-group topmargin">
                  <label>강아지 몸무게</label>
                  <input type="text" name="pweight" id="pweight" class="form-control " value="" placeholder="숫자만 써주세요" required/>

                </div>
                

                <div class="col-sm-6 form-group">
                  <label>반려견출생년도</label>
                  <input type="text" name="pbirth" id="pbirth" class="form-control" value="" placeholder="연도를 필수로 입력해주세요" required/>
                  <input type="hidden" name="tel" value="${mVO.tel}">
                </div>
        
                
                <div class="col-sm-12 form-group">
                  <label>기타</label>
                  <textarea
                    name="memo"
                    id="memo"
                    class="form-control"
                    cols="30"
                    rows="6"
                    placeholder="효과적인 서비스 추천을 위해 중성화 여부, 문제행동 등 자세한 사항을 작성해 주세요.">
                  </textarea>
                </div>
                
                 <div class="col-sm-12 form-group">
                  <button type="submit" name="btn-send" id="btn-send" class="btn btn-primary btn-lg btn-block col-12 bg-warning">다음단계</button>
                </div>
				
					</form>
		     </div>
      </section>
	<!-- Page Content -->

			<!-- my = margin y축 mb =  -->
			
<!-- /.col-lg-9 -->



<!-- /.container -->


<!-- Footer -->
<footer class="py-3 "  style="margin-top:10%;background-color:lightgray">
	<div class="container">
		<p class="m-0 text-center text-black">
				만든 사람들 2 조 이동호 신채민 김민규 이창현
		</p>
	</div>
</footer>
</body>
</html>