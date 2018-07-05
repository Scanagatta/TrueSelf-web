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
		<title>Meu Perfil</title>
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
						<li class="active"><a href="#">Editar Perfil</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${usuarioLogado.nome}<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="alterarSenha">Alterar senha</a></li>
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
						<h1>Editar Meu Perfil</h1>
					</blockquote>
					
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<form action="alterar" method="post">
								<div class="form-group">
									<label for="inputNome">Nome Completo</label>
									<input type="text" name="usuario.nome" class="form-control" id="inputNome" placeholder="nome completo" required="required" value="${usuarioLogado.nome}">
								</div>
								<div class="form-group">
									<label for="inputEmail">Email</label>
									<input type="email" name="usuario.email"  id="inputEmail" class="form-control" placeholder="e-mail" required="required" value="${usuarioLogado.email}" readonly="readonly">
								</div>
								
								<div class="form-group">
									<label for="rdSexo">Sexo</label>
									<div class="radio radio-inline" id="rdSexo">
										
										
										<label class="radio-inline">
											<c:if test="${'masculino'== usuarioLogado.sexo}">
											<input type="radio" name="usuario.sexo" id="inlineRadio1" value="masculino" checked="checked">
											</c:if>
											<c:if test="${! ('masculino'== usuarioLogado.sexo)}">
											<input type="radio" name="usuario.sexo" id="inlineRadio1" value="masculino">
											</c:if>
										Masculino</label>
										
										<label class="radio-inline">
											<c:if test="${'feminino'== usuarioLogado.sexo}">
											<input type="radio" name="usuario.sexo" id="inlineRadio2" value="feminino" checked="checked">
											</c:if>
											<c:if test="${! ('feminino'== usuarioLogado.sexo)}">
											<input type="radio" name="usuario.sexo" id="inlineRadio2" value="feminino">
											</c:if>
										Feminino</label>
										
										<label class="radio-inline">
											<c:if test="${'outro'== usuarioLogado.sexo}">
											<input type="radio" name="usuario.sexo" id="inlineRadio3" value="outro" checked="checked">
											</c:if>
											<c:if test="${! ('outro'== usuarioLogado.sexo)}">
											<input type="radio" name="usuario.sexo" id="inlineRadio3" value="outro">
											</c:if>
										Outro</label>
										
										
									</div>
								</div>
								<div class="form-group">
									<label for="inputData">Data de Nascimento</label>
									<input type="date" name="usuario.dataNascimento" id="inputData" class="form-control" value="${usuarioLogado.dataNascimento}" required="required"></input>
								</div>
								
								<!-- 								<div class="form-group"> -->
								<!-- 									<label for="inputEstadoCivil">Estado Civil</label> -->
								<%-- 									<input type="text" name="usuario.estadoCivil" id="inputEstadoCivil" class="form-control" placeholder="estado civil" value="${usuarioLogado.estadoCivil}"> --%>
								<!-- 								</div> -->
								
								<div class="form-group">
									<label for="inputEstadoCivil">Estado Civil</label>
									<select name="usuario.estadoCivil" class="form-control select" id="selectEstadoCivil">
										
										<c:if test="${'solteiro' == usuarioLogado.estadoCivil}">
										<option value="solteiro" selected="selected">solteiro</option>
										</c:if>
										<c:if test="${! ('solteiro'== usuarioLogado.estadoCivil)}">
										<option value="solteiro">solteiro</option>
										</c:if>
										
										<c:if test="${'namorando' == usuarioLogado.estadoCivil}">
										<option value="namorando" selected="selected">namorando</option>
										</c:if>
										<c:if test="${! ('namorando'== usuarioLogado.estadoCivil)}">
										<option value="namorando">namorando</option>
										</c:if>
										
										<c:if test="${'casado' == usuarioLogado.estadoCivil}">
										<option value="casado" selected="selected">casado</option>
										</c:if>
										<c:if test="${! ('casado'== usuarioLogado.estadoCivil)}">
										<option value="casado">casado</option>
										</c:if>
										
										<c:if test="${'divorciado' == usuarioLogado.estadoCivil}">
										<option value="divorciado" selected="selected">divorciado</option>
										</c:if>
										<c:if test="${! ('divorciado'== usuarioLogado.estadoCivil)}">
										<option value="divorciado">divorciado</option>
										</c:if>
										
										<c:if test="${'viúvo' == usuarioLogado.estadoCivil}">
										<option value="viúvo" selected="selected">viúvo</option>
										</c:if>
										<c:if test="${! ('viúvo'== usuarioLogado.estadoCivil)}">
										<option value="viúvo">viúvo</option>
										</c:if>
										
									</select>
								</div>
								<div class="form-group">
									<label for="selectCidade">Cidade</label>
									<select  name="usuario.cidade.codigo" class="form-control select" id="selectCidade" required="required">
										<c:forEach var="cidade" items="${cidades}">
										
										<c:if test="${cidade.codigo == usuarioLogado.cidade.codigo}">
										<option value="${cidade.codigo}" selected="selected">${cidade.nome} - ${cidade.estado.nome}</option>
										</c:if>
										<c:if test="${! (cidade.codigo == usuarioLogado.cidade.codigo)}">
										<option value="${cidade.codigo}">${cidade.nome} - ${cidade.estado.nome}</option>
										</c:if>
										
										</c:forEach>
									</select>
								</div>
								
								<div class="form-group">
									<label for="inputTelefone">Telefone</label>
									<input type="tel" name="usuario.telefone" id="inputTelefone" class="form-control" placeholder="telefone" pattern="\([0-9]{2}\)[\s][0-9]{4}-[0-9]{4,5}" value="${usuarioLogado.telefone}">
									</div>
								<div class="form-group">
									<button type="submit" class="btn btn-cadastrar" value="salvar">Salvar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js/jquery.mask.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/js/bootstrap.js'/>"></script>
		<script type="text/javascript">$("#inputTelefone").mask("(00) 0000-00009");</script>
	</body>
</html>