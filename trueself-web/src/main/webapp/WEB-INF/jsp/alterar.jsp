<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Alterar Senha</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
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
						<li><a href="dashboard.html">Home</a></li>
						<li><a href="#">Perfil</a></li>
					</ul>
					<form class="navbar-form navbar-right" action="/action_page.php">
						<div class="form-group">
							<input type="search" class="form-control" placeholder="Buscar">
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuario<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li class="active"><a href="#">Alterar senha</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="index.html">Sair</a></li>
							</ul>
						</li>
					</ul>
					</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				<div class="container-fluid">
					<blockquote>
						<h1>Alterar Senha</h1>
					</blockquote>
					
					<div class="row">
						<div class="col-xs-12 col-sm-9">
							<form action="dashboard.html" method="get">
								<div class="form-group">
									<label for="inputOldSenha">Senha Antiga</label>
									<input type="password" class="form-control" id="inputOldSenha" placeholder="senha antiga" required="required">
								</div>
								<div class="form-group">
									<label for="inputConfOldSenha">Confirmar Senha Antiga</label>
									<input type="password" id="inputConfOldSenha" class="form-control" placeholder="confirmar senha antiga" required="required">
								</div>
								<div class="form-group">
									<label for="inputNewSenha">Nova Senha</label>
									<input type="password" id="inputNewSenha" class="form-control" placeholder="nova senha">
								</div>
								<div class="form-group">
									<label for="inputConfNewSenha">Confirmar Nova Senha</label>
									<input type="password" id="inputConfNewSenha" class="form-control" placeholder="confirmar nova senha">
								</div>
								<ul class="pager">
									<li class="next"><a href="#">Salvar</a></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</body>
		</html>