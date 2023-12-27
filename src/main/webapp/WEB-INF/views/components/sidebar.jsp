
		<div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-body-secondary">
			<div
				class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2  min-vh-100">
				<a href="#"
					class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
					<img src="../resources/img/book.png" class="img-fluid rounded "
					alt="logo agenda de contatos">
				</a> <span class="fs-5 d-none d-sm-inline ">Agenda de Contatos</span>
				<ul
					class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
					id="menu">
					<li class="nav-item mb-5"><a href="../admin/home"
						class="nav-link align-middle px-0"> <i class="fs-4 bi-house"></i>
							<span class="ms-1 d-none d-sm-inline">Home</span>
					</a></li>

					<li><a href="../admin/cadastro-contatos"
						class="nav-link px-0 align-middle"> <i class="fs-4 bi-table"></i>
							<span class="ms-1 d-none d-sm-inline">Cadastrar contatos</span></a></li>
					<li><a href="../admin/consulta-contatos"
						class="nav-link px-0 align-middle"> <i class="fs-4 bi-people"></i>
							<span class="ms-1 d-none d-sm-inline">Consultar contatos</span>
					</a></li>
				</ul>
				<hr>
				<div class="dropdown  pb-4 mt-3">
					<a href="#"
						class="d-flex align-items-center text-white text-decoration-none dropdown-toggle btn btn-dark"
						id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="../resources/img/perfil.jpg" alt="hugenerd" width="30"
						height="30" class="rounded-circle" / > <span
						class="d-none d-sm-inline mx-1"><strong>${usuario.nome}</strong></span>
					</a>
					<ul class="dropdown-menu dropdown-menu-dark text-small shadow"
						aria-labelledby="dropdownUser1">
						<li><a class="dropdown-item " href="#">Perfil</a></li>
						<li><a class="dropdown-item" href="../admin/dados-usuario">Configurações</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li><a class="dropdown-item" href="/agenda_contatos/logout"
							onclick="javascript:return confirm('Deseja realmente sair do sistema?')">Sair
								do sistema</a></li>
					</ul>
				</div>
			</div>
		</div>
