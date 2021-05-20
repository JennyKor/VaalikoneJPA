<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" charset="UTF-8">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://kirsiina.github.io/vaalikone_ulkoasu/css/customstyles.css" rel="stylesheet">

<title>Vote Monster - election machine</title>
</head>
<body>
    <div class="container w-75 p-5">
    <header></header>
		<h1 class="text-center p-5">Instructions</h1>

		<div class="m-auto">
		   
		    <p class="text-center">You can choose an answer from the scale depending on how strongly you agree or disagree.</p>
		    <p class="text-center">When you have answered all claims, press Submit to see the candidates recommended to you. You can always go back to the answering page and change your answers.</p>
		    
		    <p class="text-center"><a href="/rest/candidates/all" class="btn btn-custom" role="button">Browse candidates</a></p>
		    <p class="text-center"><a href="/rest/machine/questions" class="btn btn-custom" role="button">Start</a></p>
		    
		   
	    </div>
	</div>

</body>
</html>