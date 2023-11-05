<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="./resources/img/heartbeat.ico"
	type="image/x-icon" />
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Edu+TAS+Beginner&display=swap" rel="stylesheet"/> 
</head>

<body
	style=        "font-family: 'Barlow Condensed', sans-serif;

    font-family: 'Dancing Script', cursive;

    font-family: 'Dosis', sans-serif;

    font-family: 'Edu TAS Beginner', cursive;

    font-family: 'Roboto Slab', serif;">

	<div class="container d-flex justify-content-center align-items-center vh-100">

		<div class="card mb-3 bg-body-secondary" style="max-width: 540px;">
			<div class="row g-0 align-items-center">
				<div class="col-md-4">
					<img src="./resources/img/book.png" class="img-fluid rounded " alt="logo agenda de contatos">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h3 class="card-title mb-3">Agenda de contatos</h3>
						<form action="">
							<div class="mb-3">
								<label for="email" class="form-label">
									E-mail:
								</label> 
								<input
									type="email" 
									class="form-control" 
									id="email" 
									required />
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">
									Senha:
								</label>
								<div class="mb-3 input-group">
									<input 
										type="password" 
										class="input form-control" 
										id="password"
										required aria-label="password" 
										aria-describedby="basic-addon1" />
									<div class="input-group-append" >
										<span class="input-group-text"  style="height: 40px; " onclick="password_show_hide();">
											<i class="fas fa-eye"  id="show_eye"></i> 
											<i class="fas fa-eye-slash d-none" id="hide_eye"></i>
										</span>
									</div>
								</div>
							</div>
							<div>
								<button type="submit" class="btn  btn-secondary"><strong>Acessar</strong></button>
							</div>
							<div class="text-center">
								<a href="/agenda_contatos/criar-conta"><strong> Criar uma conta</strong></a> 
								<span class="mx-2">|</span> 
								<a href="/agenda_contatos/esqueci-minha-senha"><strong>Esqueci minha senha</strong></a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/login.js"></script>
</body>
</html>