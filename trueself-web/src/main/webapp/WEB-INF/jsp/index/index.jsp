<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cadastre-se ou faca login no TrueSelf</title>
		<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" > 
		<link rel="stylesheet" href="<c:url value='/css/style.css'/>" > 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js/bootstrap.js'/>"></script>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
			<div class="text col-xs-12">
					<h1>TrueSelf</h1>
				</div>
				<div class="col-xs-12 col-sm-6">
				<div>
				<img src="https://www.allkpop.com/upload/2017/01/af_org/dindin-black-pink-bewhy_1484083826_af_org.jpg" class="img-responsive">
				</div>		
				</div>
				<ul class="nav nav-tabs col-xs-12 col-sm-6">
					<li class="active col-xs-6"><a href="#first-tab" data-toggle="tab">Login</a></li>
					<li class=" col-xs-6"><a href="#second-tab" data-toggle="tab">Cadastro</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active in" id="first-tab">
						<div class="col-xs-12 col-sm-6 paginas">
							<form action="login" method="post">
								<hr>
								<div class="form-group botoes">
									<ul class="list-inline">
										<li><button class="btn btn-primary"><i class="fa fa-facebook"></i></button></li>
										<li><button class="btn btn-info"><i class="fa fa-twitter"></i></button></li>
										<li><button class="btn btn-danger"><i class="fa fa-google-plus"></i></button></li>
									</ul>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputEmail" class="sr-only">E-mail</label>
									<input name="usuario.email" id="inputEmail" class="form-control" placeholder="e-mail" required="required" type="email">
								</div>
								<div class="form-group">
									<label for="inputPassword" class="sr-only">Senha</label>
									<input name="usuario.senha" id="inputPassword" class="form-control" placeholder="senha" required="required" type="password">
								</div>
								<hr>
								<div class="checkbox">
									<label>
										<input value="lembreme" type="checkbox"> Lembrar senha
									</label>
								</div>
								<hr>
								<button class="btn btn-lg btn-cadastrar btn-block" type="submit" value="login">Entrar</button>
							</form>
						</div>
					</div>
					<div class="tab-pane" id="second-tab">
						<div class="col-xs-12 col-sm-6 paginas">
							<form action="cadastrar" method="post">
								<div class="form-group text-center">
									<div class="radio radio-inline" id="rdUsuario">
										<label class="radio-inline"><input type="radio" name="usuario.tipo" id="inlineRadio1" value="1">Pessoa</label>
										<label class="radio-inline"><input type="radio" name="usuario.tipo" id="inlineRadio2" value="2">Empresa</label>
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputNome" class="sr-only">Nome Completo</label>
									<input id="inputNome" class="form-control" placeholder="nome completo" name="usuario.nome" required="required">
								</div>
								<div class="form-group">
									<label for="inputEmail" class="sr-only">E-mail</label>
									<input id="inputEmail" class="form-control" placeholder="e-mail"  name="usuario.email" required="required" type="email">
								</div>
								<div class="form-group">
									<label for="inputPassword" class="sr-only">Senha</label>
									<input id="inputPassword" class="form-control" placeholder="senha"  name="usuario.senha" required="required" type="password">
								</div>
								<div class="form-group">
									<label for="inputConfirmPassword" class="sr-only">Confirmar Senha</label>
									<input id="inputConfirmPassword" class="form-control" placeholder="confirmar senha" required="required" type="password" name="usuario.confirmaSenha">
								</div>
								<hr>
								<div class="checkbox">
									<label>
										<input value="termos" type="checkbox"> Eu aceito os <a href="#">termos de uso</a>
									</label>
								</div>
								<hr>
								<button class="btn btn-lg btn-cadastrar btn-block" type="submit" value="cadastrar">Cadastrar</button>
								<br>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>