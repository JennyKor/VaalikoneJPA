<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="data.Question" %>
<%@page import="app.GetQuestionsToVoter" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  </head>

  <body>

    <div class="container w-75">
    	<header></header>
    	
		<div class="px-4 py-5 m-auto text-center">
			<h1>Best candidates based on your answers:</h1>
			<c:forEach var="candidate" items="${requestScope.candidate}">
				${candidate.etunimi} ${candidate.sukunimi}<br>
			</c:forEach>
		
		</div>
	</div>
    
  </body>
</html>