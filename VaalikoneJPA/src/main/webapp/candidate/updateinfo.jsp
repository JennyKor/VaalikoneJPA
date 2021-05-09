<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="data.Candidate"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" charset="UTF-8">
<title>Vote Monster - Change your information</title>
</head>
<body>
Update your information:
	<form action="../updatecandidate" method="POST">
		<input type="hidden" name="id" value="${requestScope.candinfo.ehdokas_id }">
		<label for="name">First name:</label>
			<input type="text" name="name" value="${requestScope.candinfo.etunimi }"> 
		<label for="lastname">Last name:</label>
			<input type="text" name="lastname" value="${requestScope.candinfo.sukunimi }"> 
		<label for="age">Age:</label>
			<input type="number" name="age" value="${requestScope.candinfo.ika }">
		<label for="party">Party:</label>
			<input type="text" name="party" value="${requestScope.candinfo.puolue }"> 
		<label for="muncipality">Muncipality:</label>
			<input type="text" name="muncipality" value="${requestScope.candinfo.kotipaikkakunta }">
		<label for="trade">Occupation:</label>
			<input type="text" name="trade" value="${requestScope.candinfo.ammatti }"> 
			<input type='submit' name='ok' value='Save'>
	</form>
</body>
</html>