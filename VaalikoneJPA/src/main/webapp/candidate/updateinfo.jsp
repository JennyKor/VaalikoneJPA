<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Monster - Change your information</title>
</head>
<body>
Update your information:
<form action="../savecandinfo" method="POST">
<label for="name">First name:</label><input type="text" name="name" value ="${requestScope.c.etunimi }">
<label for="lastname">Last name:</label><input type="text" name="lastname" value ="${requestScope.c.sukunimi }">
<label for="age">Age:</label><input type="text" name="age" value ="${requestScope.c.ika }">
<label for="party">Party:</label><input type="text" name="party" value ="${requestScope.c.puolue }">
<label for="muncipality">Muncipality:</label><input type="text" name="muncipality" value ="${requestScope.c.kotipaikkakunta }">
<label for="trade">Occupation:</label><input type="text" name="trade" value ="${requestScope.c.ammatti }">
<input type='submit' name='ok' value='Submit'>
</form>
</body>
</html>