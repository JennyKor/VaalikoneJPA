<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h1 class="text-center">Details</h1>
			
			<p class="text-center py-4">
				<a href="/rest/machine/questions" class="btn btn-custom" role="button">Answer questions</a>
			</p>
			<div class="row w-75 m-auto mt-4 bg-light shadow rounded border py-3">
				<h2 class="py-2 text-center">${candidate.etunimi} ${candidate.sukunimi} ${candidate.ika}v</h2>
				<h4 class="py-2 text-center">${candidate.puolue}</h4>
				<h6 class="py-2 text-center">Kotipaikkakunta: ${candidate.kotipaikkakunta}</h6>
				<h6 class="py-2 text-center">Ammatti: ${candidate.ammatti}</h6>
				<h5 class="py-2 text-center">Miksi haluat eduskuntaan?</h5>
				<br>
				<h6 class="py-2 text-center">${candidate.miksi_eduskuntaan}</h6>
				<h5 class="py-2 text-center">Mitä asioita haluat edistää?</h5>
				<h6 class="py-2 text-center">${candidate.mita_asioita_haluat_edistaa}</h6>


				<p class="text-center py-4">
					<input action="action" onclick="window.history.go(-1); return false;" type="submit" value="Back" role="button" class="btn btn-custom">
				</p>
			</div>
		</div>
	</div>
</body>
</html>