<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Candidate" %>
 <%@ page import="dao.Dao" %> 
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" charset="UTF-8">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<link href="https://kirsiina.github.io/vaalikone_ulkoasu/css/customstyles.css" rel="stylesheet">
	
<title>Vote Monster - election machine</title>
</head>
<body>
	<div class="container w-75">
		<header></header>


		<div class="px-4 py-5 m-auto">

			<h1 class="text-center">Browse all candidates</h1>
			<p class="text-center py-4">Here you can browse all candidates and may be find your favorite before answering.</p>
			<p class="text-center py-4">
				<a href="/rest/machine/questions" class="btn btn-custom" role="button">Answer questions</a>
			</p>

			<c:forEach var="candidate" items="${requestScope.showcandidates}">
				<div class="row w-50 mx-auto mt-4 bg-light shadow rounded border py-3">
					<div class="col-7 text-center">
						<h3 class="py-2">${candidate.etunimi} ${candidate.sukunimi}</h3>
						${candidate.puolue}
					</div>
					<div class="col-4 text-center py-4">
						<a href="/rest/candidates/showmore?ehdokas_id=${candidate.ehdokas_id}" class="btn btn-custom" role="button">Read more</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>