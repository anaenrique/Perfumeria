<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="es">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<spring:url value="https://augustobrigadaw.000webhostapp.com/resources2"
	var="urlPublic"></spring:url>

<title>Perfumeria´s online</title>

<!-- Bootstrap core CSS -->
<link
	href="https://augustobrigadaw.000webhostapp.com/resources2/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="https://augustobrigadaw.000webhostapp.com/resources2/css/shop-homepage.css"
	rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgb(149, 133, 163);">
		<div class="container">
			<a class="navbar-brand" href="/Perfumeria/todaPerfumeria">Perfumeria´s online</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/Perfumeria/todaPerfumeria">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<c:if test="${sessionScope.username != null}">
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">${sessionScope.username}</a></li>
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/cerrarSesion">Cerrar Sesión</a></li>
						<c:if test="${sessionScope.username == 'admin'}">
							<li class="nav-item"><a class="nav-link" href="/Perfumeria/administracion">Administración</a></li>
						</c:if>
					</c:if>
					<c:if test="${sessionScope.username == null}">
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/login">Iniciar Sesión</a></li>
						<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">Registrarse</a></li>
					</c:if>
					<c:if test="${sessionScope.username == 'admin'}">
					<li class="nav-item">
						<a class="nav-link" href="/Perfumeria/verCarrito">
							<img src="https://augustobrigadaw.000webhostapp.com/resources2/Carrito.png" 
							class="d-inline-block align-top" width=30 height=30>
								Carrito(${fn:length(sessionScope.carrito)})
						</a>
					</li>
					</c:if>
					
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">PERFUMERIA</h1>
				<div class="list-group">
					<a href="/Perfumeria/todaPerfumeria" class="list-group-item">Todo</a> 
					<a href="/Perfumeria/verCategoria/Hombres" class="list-group-item">Hombres</a>
					<a href="/Perfumeria/verCategoria/Mujeres" class="list-group-item">Mujeres</a>
					
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<c:forEach items="${listaCarousel}" var="carousel"
							varStatus="index">
							<c:if test="${index.index == 0}">
								<li data-target="#carouselExampleIndicators" data-slide-to="${index.index}"
									class="active"></li>
							</c:if>
							<c:if test="${index.index != 0}">
								<li data-target="#carouselExampleIndicators" data-slide-to="${index.index}"></li>
							</c:if>
						</c:forEach>
					</ol>
					<div class="carousel-inner" role="listbox">
						<c:forEach items="${listaCarousel}" var="carousel" varStatus="index">
							<c:if test="${index.index == 0}">
								<div class="carousel-item active">
									<img class="d-block img-fluid" src="${carousel.imagen}" alt="${carousel.texto}">
								</div>
							</c:if>
							<c:if test="${index.index != 0}">
								<div class="carousel-item">
									<img class="d-block img-fluid" src="${carousel.imagen}" alt="${carousel.texto}">
								</div>
							</c:if>
						</c:forEach>

						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>

				<div class="row">
					<c:forEach items="${listaP}" var="productos" varStatus="index">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="/Perfumeria/agregarCarrito/${productos.id_producto}"><img class="card-img-top"
									src="https://augustobrigadaw.000webhostapp.com/resources2/img/${productos.imagen}"
									alt="${productos.nombre}" width=150 height=150></a>
								<div class="card-body">
									<h4 class="card-title">
										<a href="/Perfumeria/agregarCarrito/${productos.id_producto}">${productos.nombre}</a>
									</h4>
									<h5>${productos.precio}</h5>
									<p class="card-text">${productos.categoria}</p>
									<p class="card-text">${productos.descripcion}</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">&#9733; &#9733; &#9733;
										&#9733; &#9734;</small>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script
		src="https://augustobrigadaw.000webhostapp.com/resources2/vendor/jquery/jquery.min.js"></script>
	<script
		src="https://augustobrigadaw.000webhostapp.com/resources2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>