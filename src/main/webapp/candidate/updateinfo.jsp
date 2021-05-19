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
<link href="/style.css" rel="stylesheet">
<title>Vote Monster - Change your information</title>
</head>
<body>
Update your information:
	<form action="../updatecandidate" method="POST">
		<input type="hidden" name="id" value="${requestScope.candinfo.ehdokas_id }">
		<input type="hidden" name="userid" value="${requestScope.candinfo.user_id }">
		<label for="name">First name:</label>
			<input type="text" name="name" value="${requestScope.candinfo.etunimi }"> <br />
		<label for="lastname">Last name:</label>
			<input type="text" name="lastname" value="${requestScope.candinfo.sukunimi }"> <br />
		<label for="age">Age:</label>
			<input type="number" name="age" value="${requestScope.candinfo.ika }"><br />
		<label for="party">Party:</label>
			<input type="text" name="party" value="${requestScope.candinfo.puolue }"> <br />
		<label for="muncipality">Muncipality:</label>
			<input type="text" name="muncipality" value="${requestScope.candinfo.kotipaikkakunta }"><br />
		<label for="trade">Occupation:</label>
			<input type="text" name="trade" value="${requestScope.candinfo.ammatti }"> <br />
			<input type='submit' name='ok' value='Save'>
	</form>
	<form action="../rest/candidateservice/photoupload" method="POST" enctype="multipart/form-data">
		Select a photo: <input type="file" name="photo" accept="image/png, image/jpeg" />
		<input type="hidden" name="id" value="${requestScope.candinfo.ehdokas_id }"><br />
		<input type="submit" value="Upload">
		<img src="${pageContext.request.contextPath}/cand_photos/photo<%=id%>.jpeg" alt="Candidate photo">
		<!--  <img src="C:/temp/photo${requestScope.candinfo.ehdokas_id }.jpeg"> -->
	</form>
	
</body>
</html>