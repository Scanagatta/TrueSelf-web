<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "Description" content = "App TrueSelf">
		<meta http-equiv="Content-Language" content="pt-br">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="theme-color" content="#FE654F"/>
		<title>Cadastre-se ou faça login no TrueSelf</title>
		<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" > 
		<link rel="stylesheet" href="<c:url value='/css/style.css'/>" > 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js/bootstrap.js'/>"></script>
			<script type="text/javascript" src="<c:url value='/js/js.js'/>"></script>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
			<div class="text col-xs-12">
					<h1>TrueSelf</h1>
				</div>
				<div class="col-xs-12 col-sm-6">
				<img src="https://www.papeldeparede.etc.br/fotos/wp-content/uploads/bem_mal.jpg" alt="logo" class="img-responsive">	
				</div>
				<div class="col-xs-12 col-sm-6">
				<ul class="nav nav-tabs col-xs-12 col-sm-6">
					<li class="active col-xs-6"><a href="#first-tab" data-toggle="tab">Login</a></li>
					<li class=" col-xs-6"><a href="#second-tab" data-toggle="tab">Cadastro</a></li>
				</ul>
				</div>
				<div class="tab-content">
					<div class="tab-pane active in" id="first-tab">
						<div class="col-xs-12 col-sm-6 paginas">
							<form action="login" method="post">
								<hr>
								<div class="form-group botoes">
									<ul class="list-inline">
										<li><button class="btn btn-primary"><i class="fa fa-facebook"></i></button></li>
										<li><a class="btn btn-danger" href="https://plus.google.com/u/2/112193272469485101144"><i class="fa fa-google-plus"></i></a></li>
										<li><button class="btn btn-info"><i class="fa fa-twitter"></i></button></li>
									</ul>
								</div>
								<hr>
								<div class="form-group">
									<c:if test="${emailNaoExiste eq 'vazio'}">
									<label class="erro">O email não existe, tente novamente ou cadastre-se</label>
									</c:if>
									<label for="inputEmailL" class="sr-only">E-mail</label>
									<input name="usuario.email" id="inputEmailL" class="form-control" placeholder="e-mail" required="required" type="email">
								</div>
								<div class="form-group">
									<c:if test="${senhaIncorreta eq 'vazia'}">
									<label class="erro">A senha está incorreta</label>
									</c:if>
									<label for="inputPasswordL" class="sr-only">Senha</label>
									<input name="usuario.senha" id="inputPasswordL" class="form-control" placeholder="senha" required="required" type="password">
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
							<hr>
								<div class="form-group">
									<label for="inputNome" class="sr-only">Nome Completo</label>
									<input id="inputNome" class="form-control" placeholder="nome completo" name="usuario.nome" required="required">
								</div>
								<div class="form-group">
									<c:if test="${emailJaCadastrado eq 'vazio'}">
									<label class="erro">O email já está sendo usado, tente outro</label>
									</c:if>
									<label for="inputEmail" class="sr-only">E-mail</label>
									<input id="inputEmail" class="form-control" placeholder="e-mail"  name="usuario.email" required="required" type="email">
								</div>
								<div class="form-group">
									<label for="inputPassword" class="sr-only">Senha</label>
									<input id="inputPassword" class="form-control" placeholder="senha"  name="usuario.senha" required="required" type="password">
								</div>
								<div class="form-group">
									<c:if test="${senhasDiferentes eq 'vazio'}">
									<label class="erro">As senhas são diferentes</label>
									</c:if>
									<label for="inputConfirmPassword" class="sr-only">Confirmar Senha</label>
									<input id="inputConfirmPassword" class="form-control" placeholder="confirmar senha" required="required" type="password" name="usuario.confirmaSenha">
								</div>
								<hr>
								<div class="checkbox">
									<label>
										<input value="termos" type="checkbox" required="required"> Eu aceito os <a data-toggle="modal" data-target="#myModal">termos de uso</a>
									</label>
								</div>
								<hr>
								<button class="btn btn-lg btn-cadastrar btn-block" type="submit" value="cadastrar">Cadastrar</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Termos de uso</h4>
      </div>
      <div class="modal-body">
        <p>Este é um trabalho desenvolvido por acadêmicos da 5ª fase do curso de Tecnologia em Análise e Desenvolvimentos de Sistemas da UNOESC - Xanxerê <br><br> Ao aceitar os termos de uso e completar o cadastro, você está ciente de que esta é uma rede social pública e é crime realizar bullying virtual, tome cuidado! </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-cadastrar" data-dismiss="modal">Fechar</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
		</div>
</body>
</html>