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

  			<h1 class="text-center">Edit the question #${requestScope.questiontoedit.kysymys_id}</h1>

			<div class="w-50 m-auto">
				<form action="/rest/admin/updatequestion" method="post">
					<input type="hidden" value="">
					<div class="mb-3 row">
			    		<label for="kysymys_id" class="col-sm-3 col-form-label">Question ID</label>
			    		<div class="col-sm-9">
							<input type="text" class="form-control" name="kysymys_id" id="kysymys_id" value="${requestScope.questiontoedit.kysymys_id}" readonly>
			    		</div>
			    	</div>
			    	<div class="mb-3 row">
			    		<label for="kysymys" class="col-sm-3 col-form-label">Question</label>
			    		<div class="col-sm-9">
			    			<input type="text" class="form-control" name="kysymys" id="kysymys" value="${requestScope.questiontoedit.kysymys}">
			    		</div>
			    	</div>
			    	
			    	<input type="submit" class="btn btn-custom" value="Edit">
			    	<a href="/rest/admin/questions" class="btn btn-custom" role="button">Back</a>
				
				</form>
			</div>

		</div>
	    
	</body>
 </html>
 
 
<% } %>