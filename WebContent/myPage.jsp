<%@page import="java.util.ArrayList"%>
<%@page import="com.jo2.VO.RvInfoVo"%>
<%@page import="com.jo2.VO.PetInfoVo"%>
<%@page import="com.jo2.VO.MemInfoVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page = "Top.jsp" flush = "false"/>
<%
	request.setCharacterEncoding("UTF-8");

	request.getAttribute("tel");
	
	MemInfoVo mVO = (MemInfoVo) request.getAttribute("mVO");	
	
	RvInfoVo rVO = (RvInfoVo) request.getAttribute("rVO");
	
%>
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
<title>예약하기 페이지</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>


<div class="container">
		<div class="row">
			<div class="col-lg-2">
				<h3 class="my-4 text-center">마이 페이지</h3>
				<div class="list-group mb-4">
					 <ul class="list-group">
     		 <li class="list-group-item"><a href="myPage.jsp">마이페이지</a></li>
     		 <li class="list-group-item"><a href="text.jsp">게시판</a></li>
    		  <li class="list-group-item"><a href="reservation1.jsp">예약하기</a></li>
    		  <li class="list-group-item"><a href="calendar.jsp">일정</a></li>
  		  </ul>
				</div>	

			</div>
			
			
<div class="container">
   <div class="page-description text-center">
      <h3><%=mVO.getM_name() %>님 반갑습니다  :)</h3>
  </div>
  <div class="page-description text-center">
  <table border="0" width="200" align="center">
  	<tr>
  		<td><b>전화번호 :</b></td><td><%=mVO.getTel() %></td>
  	</tr>
  	<tr>
  		<td><b>비밀번호 :</b></td><td><%=mVO.getPw() %></td>
  	</tr>
  	<tr>
  		<td><b>메모 :</b></td><td><%=mVO.getMemo() %></td>
  	</tr>
  	 <tr>
  		<td><a href="petUpdateForm.jsp">[수정]</a></td>
  	</tr>
  	
  </table>

      </div>
  <h4>강아지 정보</h4>                   
  <a href="petUpdateForm.jsp">[수정]</a>
  <a href="petDeleteForm.jsp">[삭제]</a>
  <table class="table table-striped page-description text-center">

      <tr>
        <td>반려동물 식별번호</td>
        <td>이름</td>
        <td>몸무게</td>
        <td>생년월일</td>
        <td>비고</td>
      </tr>
      <c:forEach var="pVO" items="${pVO}">
      <tr>
        <td>${pVO.p_id}</td>
        <td>${pVO.p_name}</td>
        <td>${pVO.p_weight} kg</td>
        <td>${pVO.p_birth}년생</td>
        <td>${pVO.memo}</td>

      </tr>
   </c:forEach>
  </table>
  
  
</div>
      

			
<jsp:include page = "Bottom.jsp" flush = "false"/>	