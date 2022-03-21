<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload</title>
</head>
<body>
<h2>upload</h2>

	<% String storage = "C:/upbang";

	//cos.jar
	MultipartRequest mr1 = new MultipartRequest(request,
		storage, 10*1024*1024, "euc-kr", new DefaultFileRenamePolicy());
		
	//request사용 불가능, MultipartRequest객체의 mr1으로 대체
	String vname1 = mr1.getParameter("name1");
	
		out.println("사용자이름: "+vname1+"<br>");
		out.println("업로드 성공.");
	%>
</body>
</html>