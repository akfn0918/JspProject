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
 
 	<script>
 	<%
 	request.getAttribute("msg");
 	%>
 	if (msg != null)
		alert("msg");
	</script>
   
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-dark bg-warning text-white fixed-top">
      <div class="container">
         <a class="navbar-brand" href="Main.jsp">BowWow</a>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item"><a class="nav-link" href="telCheck.jsp">예약하기</a></li>
               <li class="nav-item"><a class="nav-link" href="password1.jsp">마이페이지</a></li>
               <li class="nav-item"><a class="nav-link" href="gallery.jsp">갤러리</a></li>
            </ul>
         </div>
      </div>
   </nav>
   <!-- 로그인 양식 -->

<section id="content">
<div class="page-description">
   <div class="col-lg-4 page-description text-center" style="margin-top:80px;margin-left:33%">
      <div class="jumbotron" style="padding-top:20px">
      <form action="password1.do" method="post">
      <label>전화번호를 입력하세요:</label>
      <input type="text" name="tel" id="tel" class="form-control" placeholder="" required autofocus/>      
      <label>비밀번호를 입력하세요:</label>
      <input type="password" name="pw" id="pw" class="form-control"  placeholder="" required/>
      <div class="col-12" style="margin-top:40px">
      <button type="submit" name="btn-send" id="btn-send" class="btn btn-primary btn-lg btn-block col-12 bg-warning">입장하기</button>
      </form>
        </div>
        </div>
   </div>
   </div>

</section>
<footer class="py-3 "  style="margin-top:18%;background-color:lightgray">
   <div class="container">
      <p class="m-0 text-center text-black">
            만든 사람들 2 조 이동호 신채민 김민규 이창현
      </p>
   </div>
</footer>   
   
</body>
</html>