<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<c:if test="${sessionScope.usuario!=null}">
	
	<div class="container" >
	<h4>Datos del cliente</h4>
	<p><b>Nombre: </b> ${sessionScope.usuario.nombre}</p>
	<p><b>Username: </b> ${sessionScope.usuario.usuario}</p>
	<p><b>Email: </b> ${sessionScope.usuario.mail}</p>
	<a href="/Fruteria/todaFruteria" class="btn btn-outline-primary" role="button" >Volver a Tienda</a>
	
	</div>
	<br />
	<div class="container">
	<table class="table table-striped table-dark">
	  <thead>
	    <tr>
	      <th scope="col">Nombre:</th>
	      <th scope="col">Categoria:</th>
	      <th scope="col">Imagen:</th>
	      <th scope="col">Procedencia:</th>
	      <th scope="col">Precio:</th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items="${sessionScope.carrito}" var="vegetal" varStatus="index">
	  	<tr>
	      <td>${vegetal.nombre}</td>
	      <td>${vegetal.categoria}</td>
	      <td><img class="img-thumbnail" src="https://augustobrigadaw.000webhostapp.com/resources2/img/${vegetal.imagen}" width=50 height=50></td>
	      <td>${vegetal.procedencia}</td>
	      <td>${vegetal.precio}</td>
	      <td><a href="/Fruteria/quitarCarrito/${index.index}" class="btn btn-danger" role="button">Eliminar</a></td>
	    </tr>
	  </c:forEach>
	  </tbody>
	</table>
	
	<a href="/Fruteria/realizarCompra" class="btn btn-success btn-lg btn-block" role="button" >Finalizar Compra</a>
	</div>
	</c:if>
	
	<c:if test="${sessionScope.usuario==null}">
		<% response.sendRedirect("verCarrito"); %>
	</c:if>

</body>
</html>