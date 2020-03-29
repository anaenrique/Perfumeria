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
<c:if test="${sessionScope.username == 'admin'}">
	<br />
	<a href="/Perfumeria/todaPerfumeria" class="btn btn-outline-primary" role="button" >Ir a Tienda</a>
	<br />
	<br />
	<a href="/Perfumeria/editarProducto/-1" class="btn btn-success btn-lg btn-block" role="button" >Agregar nuevo producto</a>
	<br />
	<table class="table table-striped table-dark">
	  <thead>
	    <tr>
	      <th scope="col">Id Producto:</th>
	      <th scope="col">Nombre:</th>
	      <th scope="col">Descripción:</th>
	      <th scope="col">Imagen:</th>
	      <th scope="col">Categoria:</th>
	      <th scope="col">Precio:</th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items="${listaP}" var="producto" varStatus="index">
	  	<tr>
	      <td>${productos.id_producto}</td>
	      <td>${productos.nombre}</td>
	      <td>${productos.descripcion}</td>
	      <td><img class="img-thumbnail" src="https://augustobrigadaw.000webhostapp.com/resources2/img/${productos.imagen}" width=50 height=50></td>
	      <td>${productos.categoria}</td>
	      <td>${productos.precio}</td>
	      <td><a href="/Perfumeria/editarProducto/${productos.id_prducto}" class="btn btn-primary" role="button">Editar</a></td>
	      <td><a href="/Perfumeria/eliminarProducto/${productos.id_producto}" class="btn btn-danger" role="button">Eliminar</a></td>
	    </tr>
	  </c:forEach>
	  </tbody>
	</table>
	<br />
	<a href="/Perfumeria/agregarProducto" class="btn btn-success btn-lg btn-block" role="button" >Agregar nuevo</a>
	<br />
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