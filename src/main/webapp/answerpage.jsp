<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="data.Question" %>

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
		<h1>Answer the questions</h1>
		<form action="/rest/answer/results" method="post">
			<c:forEach items="${requestScope.question}" var="question">
				<div class="p-2">
					<h3>${question.kysymys_id} / 19</h3>
					<div class="w-75 p-3 mb-2 shadow bg-light text-dark rounded-pill text-center hs-5 m-auto">
						${question.kysymys}
					</div>
					<div class="text-center p-2">
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="${question.kysymys_id}1" id="inlineRadio1" value="1">
						  <label class="form-check-label" for="inlineRadio1">1</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="${question.kysymys_id}2" id="inlineRadio2" value="2">
						  <label class="form-check-label" for="inlineRadio2">2</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="${question.kysymys_id}3" id="inlineRadio3" value="3">
						  <label class="form-check-label" for="inlineRadio3">3</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="${question.kysymys_id}4" id="inlineRadio4" value="4">
						  <label class="form-check-label" for="inlineRadio4">4</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="${question.kysymys_id}5" id="inlineRadio5" value="5">
						  <label class="form-check-label" for="inlineRadio5">5</label>
						</div>
					</div>
					<p class="text-center p-2"><small>1 = Completely disagree, 2 = Slightly disagree, 3 = Neutral, 4 = Slightly agree, 5 = Completely agree</small></p>
				</div>
			</c:forEach>
			<input type="submit" role="button" class="btn btn-custom" value="Save answers">
		</form>

		</div>
	</div>
    
  </body>
</html>