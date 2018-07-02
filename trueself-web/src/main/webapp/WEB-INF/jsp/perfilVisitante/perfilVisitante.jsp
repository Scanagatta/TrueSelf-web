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
		<title>TrueSelf</title>
		<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Andika" />
		<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" >
		<link rel="stylesheet" href="<c:url value='/css/style.css'/>" >
		<script type="text/javascript" src="<c:url value='/js/js.js'/>"></script>
	</head>
	<body style="background-color: #D6EFFF !important;">
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
								<li><a href="alterarSenha">Alterar senha</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="sair">Sair</a></li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-right" action="busca">
						<div class="form-group">
							<input name="nome" type="text" class="form-control" placeholder="Buscar usuário">
						</div>
					</form>
					</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12 col-sm-6 infUsuario">
							<blockquote>
								<h1>${visitado.nome}</h1>
							</blockquote>
							
							
							<c:if test="${visitado.sexo eq 'masculino'}">
							<img src=https://www.altoastral.com.br/wp-content/uploads/2016/08/homer-750x500.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							<c:if test="${visitado.sexo eq 'feminino'}">
							<img src=https://imagem.band.com.br/f_361478.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							<c:if test="${visitado.sexo eq 'outro'}">
							<img src=http://static1.purepeople.com.br/articles/2/19/06/42/@/2215427-pabllo-vittar-cancela-apresentacao-no-cr-950x0-1.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							<!--               <div class="col-xs-12 col-sm-6"> -->
							<!--                 <dl class="dl-horizontal text-center"> -->
							<!--                   <dt><img src="https://png.icons8.com/color/50/000000/angel.png" alt="" class="img-responsive"></dt> -->
							<%--                   <dd>${visitado.qtdAnjo}</dd> --%>
							<!--                   <dt><img src="https://png.icons8.com/color/50/000000/lucifer.png" alt="" class="img-responsive"></dt> -->
							<%--                   <dd>${visitado.qtdDemonio}</dd> --%>
							<!--                   <dt><img src="https://png.icons8.com/flat_round/50/000000/question-mark.png" alt="" class="img-responsive"></dt> -->
							<%--                   <dd>${visitado.qtdNeutro}</dd> --%>
							<!--                 </dl> -->
							<!--               </div> -->
							
							<!-- 							<div class="col-xs-12 col-sm-6"> -->
							<%-- 								<a><img src="https://png.icons8.com/color/50/000000/angel.png" style="margin-right:85px;"></a><a>${visitado.qtdAnjo}</a> --%>
							<!-- 								<br> -->
							<%-- 								<a><img src="https://png.icons8.com/color/50/000000/lucifer.png" style="margin-right:85px;"></a><a>${visitado.qtdDemonio}</a> --%>
							<!-- 								<br> -->
							<%-- 								<a><img src="http://i.imgur.com/rdp59lu.png" style="margin-right:85px;"></a><a>${visitado.qtdNeutro}</a> --%>
							<!-- 							</div> -->
							
							<div class="table-responsive">
								<table class="table table-hover">
									<tr>
										<td><a><img src="https://png.icons8.com/color/50/000000/angel.png" style="margin-right:85px;"></a></td>
										<td class="a"><a>${visitado.qtdAnjo}</a></td>
									</tr>
									
									<tr>
										<td><a><img src="https://png.icons8.com/color/50/000000/lucifer.png" style="margin-right:85px;"></a></td>
										<td class="a"><a>${visitado.qtdDemonio}</a></td>
									</tr>
									
									<tr>
										<td><a><img src="http://i.imgur.com/rdp59lu.png" style="margin-right:85px;"></a></td>
										<td class="a"><a>${visitado.qtdNeutro}</a></td>
									</tr>
								</table>
							</div>
							
							<div class="col-xs-12">
								<dl class="dl-horizontal text-center">
									<dt>Data de Nascimento</dt>
									<dd>${visitado.dataNascimento}</dd>
									<dt>Estado Civil</dt>
									<dd>${visitado.estadoCivil}</dd>
									<dt>Sexo</dt>
									<dd>${visitado.sexo}</dd>
									<dt>Telefone</dt>
									<dd>${visitado.telefone}</dd>
									<dt>Email</dt>
									<dd>${visitado.email}</dd>
									<dt>Cidade</dt>
									<dd>${visitado.cidade.nome}</dd>
									<dt>Estado</dt>
									<dd>${visitado.cidade.estado.nome}</dd>
								</dl>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 infComentario">
							<h1>Comentários</h1>
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<td>Data</td>
											<td>Comentário</td>
											<td>Avaliação</td>
										</tr>
									</thead>
									<c:forEach var="comentario" items="${visitado.comentarios}">
									<tr>
										<td>${comentario.data}</td>
										<td>${comentario.comentario}</td>
										<td><img id="imagem${comentario.codigo}" src="https://png.icons8.com/flat_round/50/000000/question-mark.png" onload="carregarImagem(${comentario.classificacao},imagem${comentario.codigo})" class="img-responsive"></td>
									</tr>
									</c:forEach>
								</table>
							</div>
							<div class="col-xs-12">
								<form action="comentar" method="post">
									<div class="form-group">
										<input type="hidden" name="email" value="${visitado.email}">
										<input class="form-control inputComentario" placeholder="comente aqui" name="comentario.comentario">
										<button class="btn btn-lg btn-cadastrar" type="submit" >Comentar</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="<c:url value='/js/bootstrap.js'/>"></script>
	</body>
</html>