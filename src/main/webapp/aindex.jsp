<%
	//In case, if Admin session is not set, redirect to login page
	if ((request.getSession(false).getAttribute("admin") == null)) {
%>
	<jsp:forward page="/index.jsp"></jsp:forward>
<%
	} else {
		String username = "";
		username = (String) session.getAttribute("user");
%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

 <%@page import="data.Question" %>
 <%@page import="dao.Dao" %>
 <%@page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Jenna Aaltonen, Kirsi Suoranta, Jenny Korkeamäki">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<link href="https://kirsiina.github.io/vaalikone_ulkoasu/css/customstyles.css" rel="stylesheet">
	<title>Vote Monster - election machine</title>
  </head>

  <body>
		<div class="container w-75">
  			<header></header>

			<h1 class="text-center">Welcome, <%=username%></h1>
 
  			<p class="text-center">You have logged in as an administrator. What would you like to do?</p>
  			<p class="text-center"><a href="/rest/admin/questions" class="btn btn-custom" role="button">Show questions</a> <a href="/logout" class="btn btn-danger" role="button">Logout</a></p>

		</div>
	    
	</body>
 </html>
 <% } %>