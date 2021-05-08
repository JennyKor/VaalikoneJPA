<% String error = "";
	error = (String) session.getAttribute("error");
%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link href ="https://kirsiina.github.io/vaalikone_ulkoasu/css/customstyles.css" rel="stylesheet">
<title>Candidate Login</title>
</head>
<body>
	<div class="container w-75">
		<header></header>
		<div class="card m-auto w-50 py-5 shadow p-3 mb-5 bg-body rounded">
			<div class="card-body">
				<h1 class="text-center">Candidate Login</h1>
				<p class="text-center">Log in to fill in your information and answer the election machine questions:</p>
				<div class="w-50 m-auto">
					<form action="/login" method="post">
					<div class="form-floating mb-2">
						<input type="text" class="form-control" id="floatingInput" name="username"> 
						<label for="floatingInput">Username</label> 
					</div>
					<div class="form-floating">
						<input type="password" class="form-control" id ="floatingPassword" name="password">
					 	<label for="floatingPassword">Password</label>
					</div>
					<div class="d-grid gap-2 py-2">	
						<input type="submit" class="btn btn-custom" value="login">
					</div>
					<%=error%>
				</form>
				<p class="text-center">Or go back to <a href="/index.jsp">front page.</a></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>