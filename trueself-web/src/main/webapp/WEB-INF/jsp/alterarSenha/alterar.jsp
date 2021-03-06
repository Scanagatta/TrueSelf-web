<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "Description" content = "App TrueSelf">
		<meta http-equiv="Content-Language" content="pt-br">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="theme-color" content="#FE654F"/>
		<title>Alterar Senha</title>
		<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" >
		<link rel="stylesheet" href="<c:url value='/css/style.css'/>" >
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
						<li><a href="perfil">Editar Perfil</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${usuarioLogado.nome}<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li class="active"><a href="#">Alterar senha</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="sair">Sair</a></li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-right" action="busca">
						<div class="form-group">
							<input name="nome" type="search" class="form-control" placeholder="Buscar usuário">
						</div>
					</form>
					</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				<div class="container-fluid">
					<blockquote>
						<h1>Alterar Senha</h1>
					</blockquote>
					
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<form action="alterarSenha" method="post">
								<div class="form-group">
									<c:if test="${senhaIncorreta eq 'vazia'}">
									<label class="erro">A senha antiga não é essa, tente novamente</label>
									<br>
									</c:if>
									<label for="inputOldSenha">Senha antiga</label>
									<input type="password" class="form-control" id="inputOldSenha" placeholder="senha antiga" name="usuario.senhaAntiga">
								</div>
								<div class="form-group">
									<label for="inputNewSenha">Nova senha</label>
									<input type="password" id="inputNewSenha" class="form-control" placeholder="nova senha" name="usuario.senha">
								</div>
								<div class="form-group">
									<c:if test="${senhasDiferentes eq 'vazia'}">
									<label class="erro">As senhas são diferentes, tente novamente</label>
									<br>
									</c:if>
									<label for="inputConfNewSenha">Confirmar nova senha</label>
									<input type="password" id="inputConfNewSenha" class="form-control"  placeholder="confirmar nova senha" name="usuario.confirmaSenha">
								</div>
								<div class="form-group">
									<button class="btn btn-lg btn-cadastrar btn-block" type="submit" value="salvar">salvar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js/bootstrap.js'/>"></script>
	</body>
</html>