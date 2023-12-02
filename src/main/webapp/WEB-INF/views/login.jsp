<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	style=        "font-family: 'Barlow Condensed', sans-serif;  font-family: 'Dancing Script', cursive;
    font-family: 'Dosis', sans-serif; font-family: 'Edu TAS Beginner', cursive;    font-family: 'Roboto Slab', serif;">

	<div class="container d-flex justify-content-center align-items-center vh-100">

		<div class="card mb-3 bg-body-secondary" style="max-width: 540px;">
			<div class="row g-0 align-items-center">
				<div class="col-md-4">
					<img src="./resources/img/book.png" class="img-fluid rounded " alt="logo agenda de contatos">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h3 class="card-title mb-3">Agenda de contatos</h3>
						
						<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
								  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16" >
								    <path
																d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
								  </symbol>
								  <symbol id="exclamation-triangle-fill" fill="currentColor"
																viewBox="0 0 16 16">
								    <path
																d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
								  </symbol>
						</svg>
						
						<c:if test = "${mensagem_erro  != null }">
							<div class="alert alert-danger d-flex align-items-center alert-dismissible fade show container-fluid
								role="alert" >
								<i class ="oi oi-check"> </i>
								<svg class="bi flex-shrink-0 me-2" width="24" height="24"
									role="img" aria-label="Danger:">
									<use xlink:href="#exclamation-triangle-fill" /></svg>
									<h5>${mensagem_erro }</h5>
								</div>
						</c:if>
						
						<form action="autenticar-usuario" method="post">
							<div class="mb-3">
								<label for="email" class="form-label">
									E-mail:
								</label> 
								<input
									type="email" 
									class="form-control" 
									id="email" 
									name="email"
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
										name="senha"
										required
										aria-label="password" 
										aria-describedby="basic-addon1"
										pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}"
										title="A senha deve conter pelo menos uma letra maiúscula, uma letra minúscula, um número e um caractere especial. Além disso, deve te de 8 a 16 caracteres." />
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