<%Candidate candidate = (Candidate) session.getAttribute("candidate");
int id = candidate.getEhdokas_id(); %>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="data.Candidate"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link
	href="https://kirsiina.github.io/vaalikone_ulkoasu/css/customstyles.css"
	rel="stylesheet">
<link href="/style.css" rel="stylesheet">
<title>Vote Monster - Change your information</title>
</head>
<body>
<div class="container w-75 p-5">
	<header></header>
	<div class="px-10 py-5 m-auto w-25 text-center">
<h3>Your information:</h3>
	<form action="../updatecandidate" method="POST">
		
		<input type="hidden" name="id" value="${requestScope.candinfo.ehdokas_id }">
		<input type="hidden" name="userid" value="${requestScope.candinfo.user_id }">
		<div class="form-group">
			<label for="name">First name:</label>
			<input type="text" class="form-control" name="name" value="${requestScope.candinfo.etunimi }"> </div>
		<div class="form-group">
			<label for="lastname">Last name:</label>
			<input type="text" class="form-control" name="lastname" value="${requestScope.candinfo.sukunimi }"></div>
		<div class="form-group">
			<label for="age">Age:</label>
			<input type="number" class="form-control" name="age" value="${requestScope.candinfo.ika }"></div>
		<div class="form-group">
			<label for="party">Party:</label>
			<input type="text" class="form-control" name="party" value="${requestScope.candinfo.puolue }"> </div>
		<div class="form-group">
			<label for="muncipality">Muncipality:</label>
			<input type="text" class="form-control" name="muncipality" value="${requestScope.candinfo.kotipaikkakunta }"></div>
		<div class="form-group">
			<label for="trade">Occupation:</label>
			<input type="text" class="form-control" name="trade" value="${requestScope.candinfo.ammatti }"> </div>
		<br />
			<input type='submit' name='ok' class="btn btn-block btn-custom" value='Save'>	
	</form>
	<br/>
	<form action="../rest/candidateservice/photoupload" method="POST" enctype="multipart/form-data">
		<div class="form-group">
			<label for="photoupload">Select a photo:</label>
			<input type="file" class="form-control-file" name="photo" id="photoupload" accept="image/png, image/jpeg" />
			<input type="hidden" name="id" value="${requestScope.candinfo.ehdokas_id }"><br />
			<input type="submit" class="btn btn-block btn-custom" value="Upload">
		
		<img src="${pageContext.request.contextPath}/cand_photos/photo<%=id%>.jpeg" alt="Candidate photo">
		<!--  <img src="C:/temp/photo${requestScope.candinfo.ehdokas_id }.jpeg"> -->
		</div>
	</form>
	</div>
</div>	
</body>
</html>