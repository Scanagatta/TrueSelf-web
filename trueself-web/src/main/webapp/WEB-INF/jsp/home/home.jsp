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
						<li class="active"><a href="#">Home</a></li>
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
					<form class="navbar-form navbar-right" action="busca" method="get">
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
								<h1>${usuarioLogado.nome}</h1>
							</blockquote>
							
							<c:if test="${usuarioLogado.sexo eq 'masculino'}">
							<img src=https://www.altoastral.com.br/wp-content/uploads/2016/08/homer-750x500.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							<c:if test="${usuarioLogado.sexo eq 'feminino'}">
							<img src=https://imagem.band.com.br/f_361478.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							<c:if test="${usuarioLogado.sexo eq 'outro'}">
							<img src=http://static1.purepeople.com.br/articles/2/19/06/42/@/2215427-pabllo-vittar-cancela-apresentacao-no-cr-950x0-1.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							<c:if test="${usuarioLogado.sexo == null}">
							<img src=https://st2.depositphotos.com/1061700/10161/v/950/depositphotos_101612710-stock-illustration-question-mark-icon-vector-illustration.jpg class="col-sm-6 imagemPerfil img-responsive">
							</c:if>
							
							
							<!--               <div class="col-xs-12 col-sm-6"> -->
							<!--                 <dl class="dl-horizontal text-center"> -->
							<!--                   <dt><img src="https://png.icons8.com/color/50/000000/angel.png" alt="" class="img-responsive"></dt> -->
							<%--                   <dd><br>${usuarioLogado.qtdAnjo}</dd> --%>
							<!--                   <dt><img src="https://png.icons8.com/color/50/000000/lucifer.png" alt="" class="img-responsive"></dt> -->
							<%--                   <dd><br>${usuarioLogado.qtdDemonio}</dd> --%>
							<%--                   <dt><img src="https://png.icons8.com/flat_round/50/000000/question-mark.png" alt="" class="img-responsive"> ------------ ${usuarioLogado.qtdNeutro}</dt> --%>
							<%--                   <dd><br>${usuarioLogado.qtdNeutro}</dd> --%>
							<!--                 </dl> -->
							<!--               </div> -->
							
<!-- 							<div class="col-xs-12 col-sm-6"> -->
<%-- 								<a><img src="https://png.icons8.com/color/50/000000/angel.png" style="margin-right:85px;"></a><a>${usuarioLogado.qtdAnjo}</a> --%>
<!-- 								<br> -->
<%-- 								<a><img src="https://png.icons8.com/color/50/000000/lucifer.png" style="margin-right:85px;"></a><a>${usuarioLogado.qtdDemonio}</a> --%>
<!-- 								<br> -->
<%-- 								<a><img src="http://i.imgur.com/rdp59lu.png" style="margin-right:85px;"></a><a>${usuarioLogado.qtdNeutro}</a> --%>
<!-- 							</div> -->
							
								<div class="table-responsive">
									<table class="table table-hover">
										<tr>
											<td><a><img src="https://png.icons8.com/color/50/000000/angel.png" style="margin-right:85px;"></a></td>
											<td class="a"><a>${usuarioLogado.qtdAnjo}</a></td>
										</tr>
								
										<tr>
											<td><a><img src="https://png.icons8.com/color/50/000000/lucifer.png" style="margin-right:85px;"></a></td>
											<td class="a"><a class="a">${usuarioLogado.qtdDemonio}</a></td>
										</tr>
										
										<tr>
											<td><a><img src="http://i.imgur.com/rdp59lu.png" style="margin-right:85px;"></a></td>
											<td class="a"><a>${usuarioLogado.qtdNeutro}</a></td>
										</tr>
									</table>
								</div>
								
									
							<div class="col-xs-12">
								<dl class="dl-horizontal text-center">
									<dt>Data de Nascimento</dt>
									<dd>${usuarioLogado.dataNascimento}</dd>
									<dt>Estado Civil</dt>
									<dd>${usuarioLogado.estadoCivil}</dd>
									<dt>Sexo</dt>
									<dd>${usuarioLogado.sexo}</dd>
									<dt>Telefone</dt>
									<dd>${usuarioLogado.telefone}</dd>
									<dt>Email</dt>
									<dd>${usuarioLogado.email}</dd>
									<dt>Cidade</dt>
									<dd>${usuarioLogado.cidade.nome}</dd>
									<dt>Estado</dt>
									<dd>${usuarioLogado.cidade.estado.nome}</dd>
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
									<c:forEach var="comentario" items="${usuarioLogado.comentarios}">
									<tr id="${comentario.codigo}" onclick="mostrarDiv(avaliar${comentario.codigo})">
										<td>${comentario.data}</td>
										<td>${comentario.comentario}</td>
										<td><img id="imagem${comentario.codigo}" src="https://png.icons8.com/flat_round/50/000000/question-mark.png" onload="carregarImagem(${comentario.classificacao},imagem${comentario.codigo})" class="img-responsive"></td>
									</tr>
									<div id="avaliar${comentario.codigo}" style="display: none">
										<form action="avaliar" method="post">
											<input type="hidden" name="comentario.codigo" value="${comentario.codigo}">
											<div class="form-group divAvaliar">
												<label>Avaliar</label>
												<div class="radio radio-inline" id="rdAvaliacao">
													<label class="radio-inline">
														<c:if test="${'1'== comentario.classificacao}">
														<input type="radio" name="comentario.classificacao" id="inlineRadio1" value="1" checked="checked">
														</c:if>
														<c:if test="${! ('1'== comentario.classificacao)}">
														<input type="radio" name="comentario.classificacao" id="inlineRadio1" value="1">
														</c:if>
														<img src="https://png.icons8.com/color/50/000000/angel.png" alt="" class="img-responsive">
													</label>
													
													<label class="radio-inline">
														<c:if test="${'2'== comentario.classificacao}">
														<input type="radio" name="comentario.classificacao" id="inlineRadio2" value="2" checked="checked">
														</c:if>
														<c:if test="${! ('2'== comentario.classificacao)}">
														<input type="radio" name="comentario.classificacao" id="inlineRadio2" value="2">
														</c:if>
														<img src="https://png.icons8.com/color/50/000000/lucifer.png" alt="" class="img-responsive">
													</label>
													
													<label class="radio-inline">
														<c:if test="${'3'== comentario.classificacao}">
														<input type="radio" name="comentario.classificacao" id="inlineRadio3" value="3" checked="checked">
														</c:if>
														<c:if test="${! ('3'== comentario.classificacao)}">
														<input type="radio" name="comentario.classificacao" id="inlineRadio3" value="3">
														</c:if>
														<img src="http://i.imgur.com/rdp59lu.png" alt="" class="img-responsive">
													</label>
												</div>
												<button class="btn btn-cadastrar" style="margin-left: 10px">Avaliar</button>
											</div>
										</form>
									</div>
									</c:forEach>
								</table>
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