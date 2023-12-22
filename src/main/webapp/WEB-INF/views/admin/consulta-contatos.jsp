<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	
<link rel="stylesheet" href="//cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
	
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
					
					<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
								  <symbol id="check-circle-fill" fill="currentColor"
						viewBox="0 0 16 16">
								    <path
						d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
								  </symbol>
								  <symbol id="exclamation-triangle-fill" fill="currentColor"
						viewBox="0 0 16 16">
								    <path
						d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
								  </symbol>
						</svg>

				<c:if test="${mensagem_erro  != null }">
					<div
						class="alert alert-danger d-flex align-items-center alert-dismissible fade show container-fluid
								role="alert" >
						<i class="oi oi-check"> </i>
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Danger:">
									<use xlink:href="#exclamation-triangle-fill" /></svg>
						<h5>${mensagem_erro }</h5>
					</div>
				</c:if>

				<c:if test="${mensagem_sucesso != null}">
					<div
						class="alert alert-success d-flex align-items-center alert-dismissible fade show container-fluid"
						role="alert">
						<i class="oi oi-check"> </i>
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Success:">
									<use xlink:href="#check-circle-fill" /></svg>
						<h5>${mensagem_sucesso}</h5>
					</div>
				</c:if>
					
					<div class="table-reponsive">
					
					<%@ page import=" br.com.smarttec.entites.Contato" %>
					<%@ page import=" java.util.List" %>
					<%
						List<Contato> contatos = (List<Contato>) request.getAttribute("contatos");
					%>
						
						<table id="tabela-contatos" class="table table-sm">
							<thead>
								<tr>
									<th> Nome do contato </th>
									<th> Telefone</th>
									<th> E-mail </th>
									<th> Observações </th>
									<th>Operações</th>
								</tr>
							</thead>
							<tbody>
								
								<% for(Contato contato : contatos) { %>
							
								<tr>
									<td><%= contato.getNome() %></td>
									<td><%= contato.getTelefone() %></td>
									<td><%= contato.getEmail() %></td>
									<td><%= contato.getObservacoes() %></td>
									<td>
										<a href="/agenda_contatos/admin/edicao-contatos" class="btn btn-outline-primary btn-sm">
											Editar
										</a>
										<a 	href="/agenda_contatos/admin/exclusao-contatos?id=<%= contato.getIdContato() %>" 
												onclick="return confirm('Deseja realmente excluir o contato selecionado?')"
												class="btn btn-outline-danger btn-sm">
											Excluir
										</a>
									</td>
								</tr>	
								
								<% } %>							
							</tbody>	
						</table>
					
					</div>
					
			</div>
		</div>
	</div>
	
	

	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
	<script src="//cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#tabela-contatos").DataTable({
				language: {
					url: '//cdn.datatables.net/plug-ins/1.13.4/i18n/pt-BR.json',
				},
	            "lengthMenu": [ [5, 10, 25, 50, -1], [5, 10, 25, 50, "Todos"] ], 
	            "pageLength": 5
			});
		});
	</script>
		
</body>
</html>