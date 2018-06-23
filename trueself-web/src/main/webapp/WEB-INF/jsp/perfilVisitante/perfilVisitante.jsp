<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>TrueSelf</title>
    <meta charset="US-ASCII">
     <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Andika" />
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
            <li><a href="perfil">Perfil</a></li>
          </ul>
          <form class="navbar-form navbar-right" action="busca">
            <div class="form-group">
              <input name="nome" type="text" class="form-control" placeholder="Buscar">
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
          <div class="row">
            <div class="col-xs-12 col-sm-6">
              <blockquote>
                <h1>${visitado.nome}</h1>
              </blockquote>
              <img src="https://pm1.narvii.com/6853/47223b3b799bb2f697d37f3d1f5c7e160e492a95v2_hq.jpg" class="col-sm-6 img-responsive">
              <div class="col-xs-12 col-sm-6">
                <dl class="dl-horizontal text-center">
                  <dt><img src="https://png.icons8.com/color/50/000000/angel.png" alt="" class="img-responsive"></dt>
                  <dd>${visitado.qtdAnjo}</dd>
                  <dt><img src="https://png.icons8.com/color/50/000000/lucifer.png" alt="" class="img-responsive"></dt>
                  <dd>${visitado.qtdDemonio}</dd>
                  <dt><img src="https://png.icons8.com/flat_round/50/000000/question-mark.png" alt="" class="img-responsive"></dt>
                  <dd>${visitado.qtdNeutro}</dd>
                </dl>
              </div>
              <div class="col-xs-12">
                <dl class="dl-horizontal text-center">
                  <dt>Data de Nascimento</dt>
                  <dd>${visitado.dataNascimento}</dd>
                  <dt>Sexo</dt>
                  <dd>${visistado.sexo}</dd>
                  <dt>Email</dt>
                  <dd>${visitado.email}</dd>
                </dl>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6">
              <h1>Comentarios</h1>
              <div class="table-responsive">
                <table class="table table-hover">
                  <thead>
                    <tr>
                    <td>Data</td>
                      <td>Comentario</td>
                    </tr>
                  </thead>
                  <c:forEach var="comentario" items="${visitado.comentarios}">
					<tr>
						<td>${comentario.data}</td>
						<td>${comentario.comentario}</td>
					</tr>
				</c:forEach>
                </table>
              </div>
             <div class="col-xs-12 col-sm-6">
                <form action="comentar" method="post">
                  <div class="form-group">
                  <input type="hidden" name="visitado" value="${visitado}">
                    <input class="form-control" placeholder="comente aqui" name="comentario.comentario">
                    <button class="btn btn-lg btn-cadastrar" type="submit" >Comentar</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </body>
    </html>