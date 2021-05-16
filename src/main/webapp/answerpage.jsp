<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="app.Machine" %>
<%@page import="dao.*" %>
<%@page import="data.*" %>

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

  <body>

    <div class="container w-75">
    	<header></header>
    	
		<div class="px-4 py-5 m-auto text-center">
		<h1>Answer the questions</h1>
			<form action="/results" method="post">
				<c:forEach var="question" items="${requestScope.question}">
					<div class="p-3">
						<h3>${question.kysymys_id} / 19</h3>
						<div class="w-75 p-3 mb-2 shadow bg-light text-dark rounded-pill text-center hs-5 m-auto">
							${question.kysymys}
							<div class="text-center p-2">
								<%String[] option = {"1", "2", "3", "4", "5"};
								for (int i = 0; i < option.length; i++) { %>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="${question.kysymys_id}" id="${question.kysymys_id}_<%=option[i]%>" value="<%=option[i]%>">
									<label class="form-check-label" for="${question.kysymys_id}_<%=option[i]%>"><%=option[i]%></label>
								</div>
								<% } %>
							</div>
						</div>
					</div>
				</c:forEach>
				<p class="text-center p-2">1 = Completely disagree, 2 = Slightly disagree, 3 = Neutral, 4 = Slightly agree, 5 = Completely agree</p>
				<input type="submit" role="button" class="btn btn-custom" value="Save">
			</form>
		</div>
	</div>
  </body>
</html>