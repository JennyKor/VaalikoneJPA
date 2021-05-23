<%
	//In case, if Admin session is not set, redirect to login page
	if ((request.getSession(false).getAttribute("admin") == null)) {
%>
	<jsp:forward page="/login.jsp"></jsp:forward>
<%
	} else {
		String username = "";
		username = (String) session.getAttribute("user");
%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

 <%@page import="data.Question" %>
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
		<div class="container w-75 mb-5">
  			<header></header>
  		
  			<h1 class="text-center">Welcome, <%=username%></h1>
 
  			<h2>Edit the questions</h2>
  			
  			<div class="float-end">
  				<a href="/aindex.jsp" class="btn btn-custom" role="button">Go to index</a>
  				<a href="/addquestion.jsp" class="btn btn-custom" role="button">Add question</a>
  			</div>

  			<table class="table table-striped table-hover">
	  			<thead>
	  				<tr>
		  				<th scope="col">ID</th>
		  				<th scope="col" width="70%">Question</th>
		  				<th scope="col">Action</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  			
	  				<c:forEach var="question" items="${requestScope.list}">
						<tr><td scope="row">${question.kysymys_id}</td> <td>${question.kysymys}</td> <td><a class="btn btn-warning btn-sm" role="button" href="/rest/admin/readquestion/${question.kysymys_id}">Edit</a></td> <td><a class="btn btn-warning btn-sm" role="button" href="/rest/admin/showtodelete/${question.kysymys_id}">Delete</a></td> </tr>
					</c:forEach>
		  				
	  			</tbody>
	  		</table>
		</div>
	    
	</body>
 </html>
 
<% } %>