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
    	<div class="card m-auto w-50 py-5 shadow p-3 mb-5 bg-body rounded">
			<div class="card-body">
				<h1 class="text-center">Login form</h1>
				<p class="text-center">This login form is only for administrators. You will be redirected after log in based on your role</p>
		    
				<div class="w-50 m-auto">
				    <form action="/login" method="post">
				    	<div class="form-floating mb-2">
				    		<input type="text" class="form-control" name="username" id="username" placeholder="Username">
						<label for="username">Username</label>
				    	</div>
				    	<div class="form-floating">
							<input type="password" class="form-control" name="password" id="password" placeholder="Password">
							<label for="password">Password</label>
						</div>
				    	
				    	<div class="d-grid gap-2 py-2">
							<input type="submit" class="btn btn-block btn-custom" value="Log in">
						</div>
				    </form>
				    <p class="text-center">Go back to <a href="/index.jsp">index-page</a></p>
			    </div>
			 </div>
		</div>
		<p class="text-center"><code>username <strong>user</strong>, password <strong>password</strong><br>
		username <strong>admin</strong>, password <strong>admin</strong></code></p>
	</div>
    
  </body>
</html>