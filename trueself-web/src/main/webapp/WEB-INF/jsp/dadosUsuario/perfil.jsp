<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Meu Perfil</title>
		<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" > 
		<link rel="stylesheet" href="<c:url value='/css/style.css'/>" > 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js/bootstrap.js'/>"></script>
	</head>
	<body>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">TrueSelf</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="home">Home</a></li>
						<li class="active"><a href="#">Perfil</a></li>
					</ul>
					<form class="navbar-form navbar-right" action="busca">
						<div class="form-group">
							<input name="nome" type="search" class="form-control" placeholder="Buscar">
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuario<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="alterarSenha">Alterar senha</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="sair">Sair</a></li>
							</ul>
						</li>
					</ul>
					</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				<div class="container-fluid">
					<blockquote>
						<h1>Meu Perfil</h1>
					</blockquote>
					
					<div class="row">
						<div class="col-xs-12 col-sm-9">
							<form action="alterar" method="post">
								<div class="form-group">
									<label for="inputNome">Nome Completo</label>
									<input type="text" name="usuario.nome" class="form-control" id="inputNome" placeholder="nome completo" required="required" value="${usuarioLogado.nome}">
								</div>
								<div class="form-group">
									<label for="inputEmail">Email</label>
									<input type="email" name="usuario.email"  id="inputEmail" class="form-control" placeholder="e-mail" required="required" value="${usuarioLogado.email}">
								</div>
								<div class="form-group">
									<label for="rdSexo">Sexo</label>
									<div class="radio radio-inline" id="rdSexo">
										<label class="radio-inline"><input type="radio" name="sexo" id="inlineRadio1" value="masculino">Masculino</label>
										<label class="radio-inline"><input type="radio" name="sexo" id="inlineRadio2" value="feminino">Feminino</label>
										<label class="radio-inline"><input type="radio" name="sexo" id="inlineRadio3" value="outro">Outro</label>
									</div>
								</div>
								<div class="form-group">
									<label for="inputData">Data de Nascimento</label>
									<input type="date" name="usuario.dataNascimento" id="inputData" class="form-control" >
								</div>
								<div class="form-group">
									<label for="inputEstadoCivil">Estado Civil</label>
									<input type="text" name="usuario.estadoCivil" id="inputEstadoCivil" class="form-control" placeholder="estado civil" >
								</div>
								<div class="row">
									<div class="form-group col-sm-2">
										<label for="selectEstado">Estado</label>
										<select  name="usuario.cidade.estado" id="selectEstado" class="form-control select">
										<c:forEach var="estado" items="${estados}">
										<option>${estado.nome}</option>
										</c:forEach>
										</select>
									</div>
									<div class="form-group col-sm-10">
										<label for="selectCidade">Cidade</label>
										<select  name="usuario.cidade" class="form-control select" id="selectCidade">
										<c:forEach var="cidade" items="${cidades}">
										<option>${cidade.nome}</option>
										</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="inputTelefone">Telefone</label>
									<input type="tel" name="usuario.telefone" id="inputTelefone" class="form-control" placeholder="telefone" value="${usuarioLogado.telefone}">
								</div>
								<div class="form-group">
								<button type="submit" class="btn btn-cadastrar" value="salvar">Salvar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</body>
		</html>