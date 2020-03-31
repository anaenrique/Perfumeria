<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Producto</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgb(149, 133, 163);">
		<div class="container">
			<a class="navbar-brand" href="/Perfumeria/todaPerfumeria">Perfumeria´s online</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/Perfumeria/todaPerfumeria">Volver a tienda
							<span class="sr-only">(current)</span>
					</a></li>
					
					<c:if test="${sessionScope.username != null}">
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">${sessionScope.username}</a></li>
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/cerrarSesion">Cerrar Sesión</a></li>
						<c:if test="${sessionScope.username == 'admin'}">
							<!-- li class="nav-item"><a class="nav-link" href="/Perfumeria/administracion">Administración</a></li> -->
						</c:if>
					</c:if>
					<c:if test="${sessionScope.username == null}">
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/login">Iniciar Sesión</a></li>
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">Registrarse</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
<c:if test="${sessionScope.username == 'admin'}">
<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-6">
				<h2 class="my-4">PERFUMERIA</h2>
				<div class="list-group">
					<a href="/Perfumeria/editarProducto/-1" class="list-group-item">Agregar producto</a> 
					<a href="/Perfumeria/editarProducto" class="list-group-item">Editar producto</a>
					<a href="/Perfumeria/verCategoria/Mujeres" class="list-group-item">Eliminar producto</a>
				</div>
			</div>
			<div class="col-md-6">
				<h4 class="text-center">${titulo}</h4>
				<hr>
				<form:form method="post" action="/Perfumeria/guardarProducto" commandName="producto">
					<form:input path="id_producto" readonly="true" type="hidden" class="form-control"/>
					<div class="form-group">
						<label for = "nombre">Nombre: </label>
						<form:input path="nombre" class="form-control"/>
					</div>
					<div class="form-group">
						<label for = "descripcion">Descripción</label>
						<form:input path="descripcion" class="form-control"/>
					</div>
					<div class="form-group">
						<label for ="imagen">Imagen</label>
						<form:input type="file" name="fileToUpload" id="fileToUpload" path="imagen" class="form-control"/>
					</div>
					<div class="form-group">
						<label for ="categoria">Categoria</label>
						<form:input path="categoria" class="form-control"/>
					</div>
					<div class="form-group">
						<label for ="precio">Precio</label>
						<form:input path="precio" class="form-control"/>
					</div>
					<div class="form-group">
						<input type="submit" value="Guardar" class="btn btn-success"/>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${sessionScope.username != 'admin'}">
	<div class="alert alert-danger" role="alert">
        <h4 class="alert-heading">ERROR</h4>
        <p>No tienes permiso para ver esta página</p>
        <p class="mb-0">Acceso permitido sólo a administrador</p>
      </div>
      
	<br />
		<a href="/Perfumeria/todaPerfumeria" class="btn btn-outline-primary" role="button" >Ir a Tienda</a>
	<br />
	
</c:if>
</body>
</html>