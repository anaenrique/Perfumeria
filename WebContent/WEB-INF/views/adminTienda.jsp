	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrar Perfumeria</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgb(149, 133, 163);">
		<div class="container">
			<a class="navbar-brand" href="/Perfumeria/todaPerfumeria">Perfumeria�s online</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/Perfumeria/todaPerfumeria">Volver a tienda
							<span class="sr-only">(current)</span>
					</a></li>
					
					<c:if test="${sessionScope.username != null}">
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">${sessionScope.username}</a></li>
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/cerrarSesion">Cerrar Sesi�n</a></li>
						<c:if test="${sessionScope.username == 'admin'}">
							<!-- li class="nav-item"><a class="nav-link" href="/Perfumeria/administracion">Administraci�n</a></li> -->
						</c:if>
					</c:if>
					<c:if test="${sessionScope.username == null}">
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/login">Iniciar Sesi�n</a></li>
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">Registrarse</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<h2 class="my-4">PERFUMERIA</h2>
				<div class="list-group">
					<a href="/Perfumeria/editarProducto/-1" class="list-group-item">Agregar producto</a> 
					<a href="/Perfumeria/editarProducto" class="list-group-item">Editar producto</a>
					<a href="/Perfumeria/verCategoria/Mujeres" class="list-group-item">Eliminar producto</a>
				</div>
			</div>
			<div class="col-lg-4"></div>
			<div class="col-lg-4"></div>
		</div>
		<div class="row">
					<div class="col-lg-12">
				<c:if test="${sessionScope.username == 'admin'}">
		
		<br />
		<table class="table table-striped table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Id Producto:</th>
		      <th scope="col">Nombre:</th>
		      <th scope="col">Descripci�n:</th>
		      <th scope="col">Imagen:</th>
		      <th scope="col">Categoria:</th>
		      <th scope="col">Precio:</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${listaP}" var="productos" varStatus="index">
		  	<tr>
		      <td>${productos.id_producto}</td>
		      <td>${productos.nombre}</td>
		      <td>${productos.descripcion}</td>
		      <td><img class="img-thumbnail" src="https://anaenrique.000webhostapp.com/imagenes ${productos.imagen}" width=50 height=50></td>
		      <td>${productos.categoria}</td>
		      <td>${productos.precio}</td>
		      <td><a href="/Perfumeria/editarProducto/${productos.id_producto}" class="btn btn-primary" role="button">Editar</a></td>
		      <td><a href="/Perfumeria/eliminarProducto/${productos.id_producto}" class="btn btn-danger" role="button">Eliminar</a></td>
		    </tr>
		  </c:forEach>
	  </tbody>
	</table>
	</c:if>
	<c:if test="${sessionScope.username != 'admin'}">
		<div class="alert alert-danger" role="alert">
	        <h4 class="alert-heading">ERROR</h4>
	        <p>No tienes permiso para ver esta p�gina</p>
	        <p class="mb-0">Acceso permitido s�lo a administrador</p>
	      </div>
	      
		<br />
			<a href="/Perfumeria/todaPerfumeria" class="btn btn-outline-primary" role="button" >Ir a Tienda</a>
		<br />
		
	</c:if>
			</div>
		</div>
</div>
</body>
</html>