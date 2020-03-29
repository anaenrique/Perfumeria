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
<c:if test="${sessionScope.username == 'admin'}">
<div class="container-fluid">
		<div class="row-fluid">
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