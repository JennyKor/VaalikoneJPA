<%
	//In case, if Candidate session is not set, redirect to login page
	if ((request.getSession(false).getAttribute("candidate") == null)) {
%>
	<jsp:forward page="/candidate_login.jsp"></jsp:forward>
<%
	} else {
		Candidate candidate = (Candidate) session.getAttribute("candidate");
		String name = candidate.getEtunimi();
		String lastname = candidate.getSukunimi();
		String party = candidate.getPuolue();
		String muncipality = candidate.getKotipaikkakunta();
		int age = candidate.getIka();
		String trade = candidate.getAmmatti();
		int id = candidate.getEhdokas_id();		
%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@page import="data.Candidate"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link
	href="https://kirsiina.github.io/vaalikone_ulkoasu/css/customstyles.css"
	rel="stylesheet">
<title>Vote Monster - Candidate profile</title>
</head>

<body>

	<div class="container w-75 p-5">
		<header></header>

			<h1 class="text-center">Welcome, <%=name%>!</h1>
	
			<p class="text-center">Here you can change your personal information and answer questions for the election machine.</p>
			
			<div class="px-4 py-5 m-auto w-75 text-center">
				<div class="row w-75 mx-auto mt-4 bg-light shadow rounded border py-3">
					<div class="col-7 text-center">
					<h3><%=name%> <%=lastname %></h3>
					<p><%=party%><br>
					<%=age%><br>
					<%=muncipality%><br>
					<%=trade%></p>
					</div>
				</div>
			</div>
			
			<p class="text-center">
				<a href="../readcandidate" class ="btn btn-custom" role="button">Update information</a>
				<a href="/candidate/showquestiontocandidate" class="btn btn-custom" role="button">Answer the questions</a>
				<a href="/login?logout=yes" class="btn btn-danger" role="button">Logout</a>
			</p>

	</div>

</body>
</html>
<%
	}
%>