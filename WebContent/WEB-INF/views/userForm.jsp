<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Usuario</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h4>${titulo}</h4>
	<c:if test="${sessionScope.usuario == null}" >
	<c:if test="${error!=null}">
             <div class="alert alert-danger" role="alert">${error}</div>
     </c:if>
	<form:form commandName="user" method="post" action="/Perfumeria/registrarse">
			
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label>Usuario:</label>
		      <form:input path="usuario"/>
		      <form:errors path="usuario" cssClass="error" style="color:red" />
		    </div>
		    <div class="form-group col-md-6">
		      <label>Contraseña:</label>
		      <form:input path="contrasenia"/>
		      <form:errors path="contrasenia" cssClass="error" style="color:red" />
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		    <label>Email:</label>
		      <form:input path="email"/>
		      <form:errors path="email" cssClass="error" style="color:red" />
		  </div>
		  <div class="form-group col-md-6">
		    <label>Nombre:</label>
		      <form:input path="nombre"/>
		      <form:errors path="nombre" cssClass="error" style="color:red" />
		  </div>
		  </div>
		  <button type="submit" class="btn btn-primary">Enviar</button>
	</form:form>
	</c:if>
	
	<c:if test="${sessionScope.usuario != null}" >
	<form:form commandName="user" method="post" action="/Fruteria/modificarUsuario">
	
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label>Usuario:</label>
		      <form:input path="usuario" readonly="true" />
		      <form:errors path="usuario" cssClass="error" style="color:red" />
		    </div>
		    <div class="form-group col-md-6">
		      <label>Contraseña:</label>
		      <form:input path="contrasenia"/>
		      <form:errors path="contrasenia" cssClass="error" style="color:red" />
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		    <label>Email:</label>
		      <form:input path="mail"/>
		      <form:errors path="mail" cssClass="error" style="color:red" />
		  </div>
		  <div class="form-group col-md-6">
		    <label>Nombre:</label>
		      <form:input path="nombre"/>
		      <form:errors path="nombre" cssClass="error" style="color:red" />
		  </div>
		  </div>
		  <button type="submit" class="btn btn-primary">Enviar</button>
	</form:form>
	</c:if>
	<br />
	<a href="/Perfumeria/todaPerfumeria" class="btn btn-outline-primary" role="button" >Volver a la Tienda</a>
	</div>
	
</body>
</html>