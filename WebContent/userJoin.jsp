<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="style.css" type="text/css" />
    <link rel="stylesheet" href="css/swiper.css" type="text/css" />
    <link rel="stylesheet" href="css/dark.css" type="text/css" />
    <link rel="stylesheet" href="css/font-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>예약하기 페이지</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<script>
   if(stv.id = null)
      alert("msg");
</script>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-dark bg-warning text-white fixed-top">
      <div class="container">
         <a class="navbar-brand" href="Main.jsp">BowWow</a>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item"><a class="nav-link" href="order.jsp">예약하기</a></li>
               <li class="nav-item"><a class="nav-link" href="UserInfo.jsp">마이페이지</a></li>
               <li class="nav-item"><a class="nav-link" href="Gallery.jsp">갤러리</a></li>
            </ul>
         </div>
      </div>
   </nav>   
<section id="content" >
        <div class="content-wrap">
            <div class="container clearfix">
            <div class="container-fluid" style="margin-top:80px">
            <div class="clear"></div>
          </div>
          <div class="container-fluid clearfix" style="mergin-top:100px">
            <div class="col-md-12">
              <div class="feature-box fbox-left topmargin">
                 <h2><i class="fas fa-phone" > 예약 및 상담시간</i></h2> 
                <p>11:00 ~ 20:00</p>
              </div>
              <div class="feature-box fbox-left topmargin">
               <h2><i class="fas fa-comments" > 플러스친구</i></h2>
                <p>[바우] 으로 검색</p>
              </div>
              <div class="feature-box fbox-left topmargin">
               <!--  <div class="fbox-icon">
                  <a href="#"><i class="icon-clipboard-list"></i></a>
                </div> -->
                </div>
                <div class="col-md-5">
                <h2><i class="fas fa-exclamation-triangle">안내사항</i></h2>
                <p>이용 시 주의사항</p>
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
            </div>
            <div class="col_half bottommargin-sm col_last">
              <form class="row was-validated form-signin" action=join.do method="POST">
             
                <div class="col-12 form-group topmargin">
                  <label for=unamel>보호자명</label>
                  <input type="text" name="name" id="name" class="form-control" value="${stv.name}" placeholder="" required autofocus/>
                  <div class="valid-feedback">입력되었습니다.</div>
              <div class="invalid-feedback">입력해주세요.</div>
                </div>
                
                <div class="col-12 form-group">
                  <label>연락처</label><br />
                  <div class="input-group">
                    <select class="custom-select " name="prefix" id="prefix" style="max-width: 100px;" required>
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                    <input type="text" name="phone" id="phone" class="form-control" value="${stv.tel}" placeholder="" required/>
                    <div class="valid-feedback">입력되었습니다.</div>
                 <div class="invalid-feedback">입력해주세요.</div>
                  </div>
                </div>
               
                

               
                <div class="col-12 form-group topmargin">
                  <label>비밀번호</label>
                  <input type="password" name="pw" id="pw" class="form-control " value="${stv.pw}" placeholder="숫자만 써주세요" required/>
                  <div class="valid-feedback">입력되었습니다.</div>
                 <div class="invalid-feedback">입력해주세요.</div>
                </div>
                <div class="col-6 form-group">
                  <label>개인정보 수집 및 이용 동의</label>
                  <div class="btn-group btn-group-toggle d-flex" data-toggle="buttons">
                    <label class="btn btn-outline-secondary btn-sm ls0 nott">
                      <input type="radio" name="accept-consent" id="accept-consent" autocomplete="off" value="true" /> 동의
                    </label>
                    <label class="btn btn-outline-secondary btn-sm ls0 nott">
                      <input type="radio" name="accept-consent" id="accept-consent" autocomplete="off" value="false" /> 미동의
                    </label>
                  </div>
                </div>
            
              <div class="col- form-group">
                  <label>기타</label>
                  <textarea
                    name="others"
                    id="others"
                    class="form-control"
                    cols="30"
                    rows="6"
                    placeholder="효과적인 서비스 추천을 위해 중성화 여부, 문제행동 등 자세한 사항을 작성해 주세요.">
                  </textarea>
                </div>
                
                <div class="col-12">
                  <button type="submit" name="btn-send" id="btn-send" class="btn btn-bowraum col-12 bg-warning">예약하기</button>
                </div>
                 </form>
            </div>
          </div>
        </div>
        </div>
      </section>
   <!-- Page Content -->

         <!-- my = margin y축 mb =  -->
         <div class="col-lg-9 my-4 mb-4">


</div>
<!-- /.col-lg-9 -->


</div>
<!-- /.row -->
   
</div>
<!-- /.container -->
 <!--  <script src="js/functions.js"></script>
    <script src="js/form.js"></script>
    <script>
      var today = new Date();
      today.setDate(today.getDate());
      var tomorrow = new Date();
      tomorrow.setDate(today.getDate() + 1);

      jQuery(document).ready(function() {
        $('.datepicker').datepicker({
          startDate: tomorrow,
          autoclose: true
        });
      });
    </script> -->


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