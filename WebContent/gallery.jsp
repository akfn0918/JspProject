<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page = "Top.jsp" flush = "false"/>

<!DOCTYPE html>
<html >
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<head>
  <title>갤러리</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    margin-top : 80px;
    margin-left : 20%;
    width : 800px;
    height : 1000px;
  }
  </style>
</head>
<body>

<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
    <li data-target="#demo" data-slide-to="5"></li>
    <li data-target="#demo" data-slide-to="6"></li>
    <li data-target="#demo" data-slide-to="7"></li>
    <li data-target="#demo" data-slide-to="8"></li>
    <li data-target="#demo" data-slide-to="9"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./picture/maru1.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru2.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru3.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru4.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru5.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru6.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru7.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru8.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru9.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="./picture/maru10.jpg" alt="" class="rounded" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>


<jsp:include page = "Bottom.jsp" flush = "false"/>