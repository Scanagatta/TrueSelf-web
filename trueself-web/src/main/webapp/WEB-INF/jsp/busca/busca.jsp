<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Busca</title>
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
          <form class="navbar-form navbar-right" action="pesquisa">
            <div class="form-group">
              <input name=nome type="text" class="form-control" placeholder="Buscar">
            </div>
          </form>
          </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid">
          <div class="row">
            <h1>Resultado da busca: ${nome} </h1>
           <div class="table-responsive">
             <table class="table table-stripped">
             	<c:forEach var="usuario" items="${usuarios}">
				<tr>
                 <td><img src="https://www.jamf.com/jamf-nation/img/default-avatars/generic-user.png" class="imagens"><a href="visitante/${usuario.email}">${usuario.nome}</a></td>
               </tr>
		</c:forEach>
               
             </table>
           </div>
          </div>
        </div>
      </body>
    </html>