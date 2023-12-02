<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="../resources/img/heartbeat.ico"
	type="image/x-icon" />
<title>Agenda de Contatos</title>

<jsp:include page="/WEB-INF/views/components/cache-control.jsp" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Edu+TAS+Beginner&display=swap"
	rel="stylesheet" />
</head>
<body
	style="font-family: 'Barlow Condensed', sans-serif; font-family: 'Dancing Script', cursive; font-family: 'Dosis', sans-serif; font-family: 'Edu TAS Beginner', cursive; font-family: 'Roboto Slab', serif;">
	<div class="container-fluid">
		<div class="row flex-nowrap">

			<jsp:include page="/WEB-INF/views/components/sidebar.jsp" />


			<div class="col py-3">
					<h5>Consulta de contatos</h5>
					<p> Listagem de contatos cadastrados em sua agenda: </p>
					<hr/>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>