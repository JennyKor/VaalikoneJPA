<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="data.Candidate" %>
<%@page import="app.MachineServlet" %>

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
			<div class="px-4 py-5 m-auto">
				<c:forEach var="calcPoints" items="${requestScope.calcPoints}">
					<div class="row w-50 mx-auto mt-4 bg-light shadow rounded border py-3">
						<div class="col-7 text-center">
							<h3 class="py-2">${calcPoints.firstName} ${calcPoints.lastName}</h3>
						</div>
						<div class="col-4 text-center my-2">
							<a href="/rest/machine/showmore/${calcPoints.ehdokas_id}" class="btn btn-custom" role="button">Read more</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
    
  </body>
</html>