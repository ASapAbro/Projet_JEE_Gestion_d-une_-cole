<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="controleur.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<%!
		int unePage = 1 ;
	%>
	
	<h1> Gestion de l'alternance IRIS </h1>
	<a href ="index.jsp?page=1"> <img src ="images/logo.jpeg" height="100" width="100"> </a>
	<a href ="index.jsp?page=2"> <img src ="images/etudiants.png" height="80" width="80"> </a>
	<a href ="index.jsp?page=3"> <img src ="images/entreprises.jpeg" height="100" width="100"> </a>
	<%
		if(request.getParameter("page") != null){
			unePage = Integer.parseInt(request.getParameter("page")); 
		}else {
			unePage = 1; 
		}
		switch(unePage){
		case 1 : %> <%@ include file="home.jsp" %> <% break; 
		case 2 : %> <%@ include file="etudiants.jsp" %> <% break;
		case 3 : %> <%@ include file="entreprises.jsp" %> <% break;
		}
	%>
	
	
</center>
</body>
</html>