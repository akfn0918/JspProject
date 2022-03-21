<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
	
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" 
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>게시판</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="stylesheet" href="gallery-clean.css">

    
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-warning text-white fixed-top">
		<div class="container">
			<a class="navbar-brand" href="Main.jsp">BowWow</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="Tel.jsp">예약하기</a></li>
					<li class="nav-item"><a class="nav-link" href="UserInfo.jsp">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="Gallery.jsp">갤러리</a></li>
				</ul>
			</div>
		</div>
	</nav>	
<div class="container-fluid">
  		<div class="row flex-nowrap">
			<div class="col-2 bd-sidebar" style="margin-top:80px">
<!-- 사이드 바 메뉴-->
  <!-- 패널 타이틀 -->
				<div class="panel panel-info">
   				 <div class="panel-heading">
      			<h3 class="panel-title">마이페이지</h3></div>
    <!-- 사이드바 메뉴목록-->
  		  <ul class="list-group">
     		 <li class="list-group-item"><a href="UserInfo.jsp">강아지 정보</a></li>
     		 <li class="list-group-item"><a href="Text.jsp">게시판</a></li>
    		  <li class="list-group-item"><a href="Calendar.jsp">예약하기</a></li>
  		  </ul>
				</div>
			</div>
		</div>
	</div>
<div class="container gallery-container" >

    <div class="col-sm-9"> <h1>갤러리</h1></div>
    <div class="col-sm-3">
	<table class="bordered">
	<tr class="table-warning">
		<td>
	<form action="uploadtoserver.jsp" method="post"
									enctype="multipart/form-data">
			이름: <input type="text" name="name1"><br>
			파일: <input type="file" name="file1"><br>
				 <button type="submit" name="btn1" id="btn1" class="btn-sm btn btn-outline-warning bg-white col-sm-3">업로드</button> 
				 <button type="reset" name="btn2" id="btn2" class="btn-sm btn btn-outline-warning bg-white col-sm-3 ">취소</button>
	</form>
	</td>
	</tr>
    </table>
    </div>
    <div class="tz-gallery">

        <div class="row">

            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
  <a class="lightbox" href="./picture/maru1.jpg">
                        <img src="./picture/maru1.jpg" alt="Park">
                    </a>
                    <div class="caption">
                        <h3>제목안녕하세요</h3>
                        <p>오우오우설명란</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <a class="lightbox" href="./picture/maru2.jpg">
                        <img src="./picture/maru2.jpg" alt="Park">
                    </a>
                    <div class="caption">
                        <h3>제목안녕하세요</h3>
                        <p>오우오우설명란</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
      <a class="lightbox" href="./picture/maru3.jpg">
                        <img src="./picture/maru3.jpg" alt="Park">
                    </a>
                    <div class="caption">
						<h3>제목안녕하세요</h3>
                        <p>오우오우설명란</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
       <a class="lightbox" href="./picture/maru4.jpg">
                        <img src="./picture/maru4.jpg" alt="Park">
                    </a>
                    <div class="caption">
                        <h3>제목안녕하세요</h3>
                        <p>오우오우설명란</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                 <a class="lightbox" href="./picture/maru5.jpg">
                        <img src="./picture/maru5.jpg" alt="Park">
                    </a>
                    <div class="caption">
                       <h3>제목안녕하세요</h3>
                        <p>오우오우설명란</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
            <a class="lightbox" href="./picture/maru6.jpg">
                        <img src="./picture/maru6.jpg" alt="Park">
                    </a>
                    <div class="caption">
                        <h3>제목안녕하세요</h3>
                        <p>오우오우설명란</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
</body>
</html>

