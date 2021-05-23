lines (30 sloc) 1.28 KB
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="data.Question"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" charset="UTF-8">
<title>Vote Monster - Change your information</title>
</head>
<body>
Update your information:
	<form action="/rest/admin/updatequestion" method="POST">
		<input type="hidden" name="id" value="${requestScope.questioninfo.kysymys_id }">
		<label for="name">First name:</label>
			<input type="text" name="name" value="${requestScope.questioninfo.kysymys }"> 
			<input type='submit' name='ok' value='Save'>
	</form>
</body>
</html>