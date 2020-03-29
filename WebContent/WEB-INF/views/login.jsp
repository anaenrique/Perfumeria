<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfumeria Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div id="login">
        <h3 class="text-center text-white pt-5">Acceso usuario</h3>
        <div class="container">
            <div id="login-row a" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="acceder" method="post">
                            <h3 class="text-center text-info">Iniciar Sesión</h3>
                            <c:if test="${error!=null}">
                            <div class="alert alert-danger" role="alert">${error}</div>
                            </c:if>
                            <div class="form-group">
                                <label for="username" class="text-info">Usuario</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Contraseña</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group text-center">
                                <input type="submit" name="submit" value="Aceptar" class="btn btn-info btn-md" value="submit">
                            </div>
                            <div class="form-group text-center">
                               	<a name="volver" id="volver" class="btn btn-info btn-md" href="/Perfumeria/todaPerfumeria" role="button">Volver</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>