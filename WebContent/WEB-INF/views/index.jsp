<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<!--  meta charset="utf-8">-->
<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ /> 
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Perfumeria's Online</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<link rel="manifest" href="site.webmanifest">-->
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/flaticon.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/slicknav.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/animate.min.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/magnific-popup.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/slick.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/nice-select.css">
<link rel="stylesheet" href="/Perfumeria/resources/assets/css/style.css">

</head>

<body>

	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="/Perfumeria/resources/assets/img/logo/logo.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->

	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header ">
				<div class="header-top top-bg d-none d-lg-block">
					<div class="container-fluid">
						<div class="col-xl-12">
							<div class="row d-flex justify-content-between align-items-center">
								<div class="header-info-left d-flex">
									<div class="flag">
										<img src="/Perfumeria/resources/assets/img/icon/" alt="">
									</div>
									
									<ul class="contact-now">
										<li>+34 655 897 889</li>
									</ul>
								</div>
								<div class="header-info-right">
									<ul>
										<c:if test="${sessionScope.username != null}">
										<li class="nav-item"><a class="nav-link" href="/Perfumeria/irUserForm">${sessionScope.username}</a></li>
											<c:if test="${sessionScope.username == 'admin'}">
												<li class="nav-item"><a class="nav-link" href="/Perfumeria/administracion">Administraci&oacuten</a></li>
											</c:if>
										</c:if>
										<c:if test="${sessionScope.username == null}">
											<li class="nav-item"><a class="nav-link" href="/Perfumeria/login">Iniciar Sesi&oacuten</a></li>
											<li class="nav-item"><a class="nav-link" href="/Perfumeria/irRegistroUsuario">Registrarse</a></li>
										</c:if>
										<!-- <li><a href="login.html">My Account </a></li> -->
										<li><a href="product_list.html">Wish List </a></li>
										<li><a href="cart.html">Shopping</a></li>
										<li><a href="cart.html">Cart</a></li>
										<c:if test="${sessionScope.username != null}">
										<li class="nav-item"><a class="nav-link" href="/Perfumeria/cerrarSesion">Cerrar Sesi&oacuten</a></li>
											<c:if test="${sessionScope.username == 'admin'}">
												<li class="nav-item"><a class="nav-link" href="/Perfumeria/administracion">Administraci&oacuten</a></li>
											</c:if>
										</c:if>
										
										
										<li class="nav-item">
											<a class="nav-link" href="/Perfumeria/verCarrito">
												<img src="https://augustobrigadaw.000webhostapp.com/resources2/Carrito.png" 
												class="d-inline-block align-top" width=30 height=30>
													Carrito(${fn:length(sessionScope.carrito)})
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-bottom  header-sticky">
					<div class="container-fluid">
						<div class="row align-items-center">
							<!-- Logo -->
							<div class="col-xl-1 col-lg-1 col-md-1 col-sm-3">
								<div class="logo">
									<a href="index.html"><img src="/Perfumeria/resources/assets/img/logo/logo.png" alt=""></a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
								<!-- Main-menu -->
								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="/Perfumeria/todaPerfumeria">Inicio</a></li>
											<li class=""><a href="/Perfumeria/verSexoCategoria/">Categorias</a>
												<ul class="submenu">
													<li><a href="/Perfumeria/verSexoCategoria/Hombres/Cuidado">Cuidado Hombre</a></li>
													<li><a href="/Perfumeria/verSexoCategoria/Hombres/Perfumes">Perfumes Hombre</a>
													<li><a href="/Perfumeria/verSexoCategoria/Mujeres/Maquillaje">Maquillajes</a></li>
													<li><a href="/Perfumeria/verSexoCategoria/Hombres/Perfumes">Perfumes Mujer</a></li>
												</ul>
											</li>
											<li class="hot"><a href="#">Latest</a>
												<ul class="submenu">
													<li><a href="/Perfumeria/todaPerfumeria"> Product list</a></li>
													<li><a href="single-product.html"> Product Details</a></li>
												</ul>
											</li>
											<li><a href="blog.html">Blog</a>
												<ul class="submenu">
													<li><a href="blog.html">Blog</a></li>
													<li><a href="single-blog.html">Blog Details</a></li>
												</ul></li>
											<li><a href="#">Pages</a>
												<ul class="submenu">
													<li><a href="login.html">Login</a></li>
													<li><a href="cart.html">Card</a></li>
													<li><a href="elements.html">Element</a></li>
													<li><a href="about.html">About</a></li>
													<li><a href="confirmation.html">Confirmation</a></li>
													<li><a href="cart.html">Shopping Cart</a></li>
													<li><a href="checkout.html">Product Checkout</a></li>
												</ul></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-xl-5 col-lg-3 col-md-3 col-sm-3 fix-card">
								<ul
									class="header-right f-right d-none d-lg-block d-flex justify-content-between">
									<li class="d-none d-xl-block">
										<div class="form-box f-right ">
											<input type="text" name="Search"
												placeholder="">
											<div class="search-icon">
												<i class="fas fa-search special-tag"></i>
											</div>
										</div>
									</li>
									<li class=" d-none d-xl-block">
										<div class="favorit-items">
											<i class="far fa-heart"></i>
										</div>
									</li> 
									
									<!-- <li>
										<div class="shopping-card">
											<a href="cart.html"><i class="fas fa-shopping-cart"></i></a>
										</div>
									</li> -->
									
								</ul>
							</div>
							
							<!-- Mobile Menu -->
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>

	<main>

		<!-- slider Area Start -->
		<div class="slider-area ">
			<!-- Mobile Menu -->
			<div class="slider-active">
				<div class="single-slider slider-height"
					data-background="/Perfumeria/resources/assets/img/maquillaje-1.jpg">
					<div class="container">
						<div class="row d-flex align-items-center justify-content-between">
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
								<div class="hero__caption">
									<span style="color:#626567 !important" data-animation="fadeInRight" data-delay=".4s">60% Discount</span>
									<h1 style="color: #4A235A!important" data-animation="fadeInRight" data-delay=".6s">
										Winter <br> Collection
									</h1>
									<p style="color:#626567 !important"data-animation="fadeInRight" data-delay=".8s">Best Cloth
										Collection By 2020!</p>
									<!-- Hero-btn -->
									<!-- div class="hero__btn" data-animation="fadeInRight"
										data-delay="1s">
										<a href="industries.html" class="btn hero-btn">Compra ahora</a>
									</div> -->
								</div>
							</div>
							<div class="col-12"></div>
						</div>
					</div>
				</div>
				<div class="single-slider slider-height" data-background="/Perfumeria/resources/assets/img/hero/h1_hero.jpg">
					<div class="container">
						<div class="row d-flex align-items-center justify-content-between">
							<div
								class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
								<div class="hero__img" data-animation="bounceIn"
									data-delay=".4s">
									<img src="/Perfumeria/resources/assets/img/hero/hero_man.png"
										alt="">
								</div>
							</div>
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
								<div class="hero__caption">
									<span data-animation="fadeInRight" data-delay=".4s">60%
										Discount</span>
									<h1 data-animation="fadeInRight" data-delay=".6s">
										Winter <br> Collection
									</h1>
									<p data-animation="fadeInRight" data-delay=".8s">Best Cloth
										Collection By 2020!</p>
									<!-- Hero-btn -->
									<div class="hero__btn" data-animation="fadeInRight"
										data-delay="1s">
										<a href="industries.html" class="btn hero-btn">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider Area End-->
		<!-- Category Area Start-->
		<section class="category-area section-padding30">
			<div class="container-fluid">
				<!-- Section Tittle -->
				<div class="row">
					<div class="col-lg-12">
						<div class="section-tittle text-center mb-85">
							<h2 style="color:#626567 !important">&#161Compra por categoria!</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 col-lg-6">
						<div class="single-category mb-30">
							<div class="category-img">
								<a tittle="Mujeres" href="/Perfumeria/verCategoria/Mujeres">
								<img src="/Perfumeria/resources/assets/img/perfume.jpg" alt="Mujeres">
								</a>
								<div class="category-caption">
									<h1 style="color: #424949 !important">Mujer</h1>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6">
						<div class="single-category mb-30">
							<div class="category-img">
								<a tittle="Hombre" href="/Perfumeria/verCategoria/Hombres">
								<img src="/Perfumeria/resources/assets/img/hombre.jpg" alt="Hombre">
								</a>
								<div class="category-caption">
									<h1 style="color: #424949 !important">Hombre</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Category Area End-->
		<!-- Latest Products Start -->
		<section class="latest-product-area padding-bottom">
			<div class="container">
				<div
					class="row product-btn d-flex justify-content-end align-items-end">
					<!-- Section Tittle -->
					<div class="col-lg-12">
						<div class="section-tittle text-center mb-85">
							<h2 style="color:#626567 !important">&#161Todos los productos!</h2>
						</div>
					</div>
					<div class="col-xl-8 col-lg-7 col-md-7">
						<div class="properties__button f-right">
							<!--Nav Button  -->
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
									<a  href="/Perfumeria/todaPerfumeria" class="nav-item nav-link active" id="nav-home-tab"
										data-toggle="tab" href="#nav-home" role="tab"
										aria-controls="nav-home" aria-selected="true">All</a> 
								    <a   href="/Perfumeria/verCategoria/Hombres" 
										class="nav-item nav-link" id="nav-profile-tab"
										data-toggle="tab" href="#nav-profile" role="tab"
										aria-controls="nav-profile" aria-selected="false">New</a> <a
										class="nav-item nav-link" id="nav-contact-tab"
										data-toggle="tab" href="#nav-contact" role="tab"
										aria-controls="nav-contact" aria-selected="false">Featured</a>
									<a class="nav-item nav-link" id="nav-last-tab"
										data-toggle="tab" href="#nav-last" role="tab"
										aria-controls="nav-contact" aria-selected="false">Offer</a>
								</div>
							</nav>
							<!--End Nav Button  -->
						</div>
					</div>
				</div>
				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">
							<c:forEach items="${listaP}" var="productos" varStatus="index">
							<div class="col-xl-4 col-lg-4 col-md-6">
								<div class="single-product mb-60">
									<div class="product-img">
										<img width="200" height="350" src="${productos.imagen}">
										<div class="new-product">
											<span>New</span>
										</div>
									</div>
									<div class="product-caption">
										<div class="product-ratting">
											<i class="far fa-star"></i> <i class="far fa-star"></i> <i
												class="far fa-star"></i> <i class="far fa-star low-star"></i>
											<i class="far fa-star low-star"></i>
										</div>
										<h4>
											<a href="#">${productos.marca}</a></br>
											<a>${productos.nombre}</a></br>
											</br>
											<!-- a href= "${productos.descripcion}">Ver descripci&oacuten</a> -->
											<p align="justify">${productos.descripcion}</p>
										</h4>
										
										<div class="price">
											<ul>
												<li>${productos.precio}&#8364</li>
												<li class="discount">$60.00</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</div>
					
				<!-- End Nav Card -->
			</div>
		</section>
		<!-- Latest Products End -->
		<!-- Best Product Start -->
		<div class="best-product-area lf-padding">
			<div class="product-wrapper bg-height"
				style="background-image: url('/Perfumeria/resources/assets/img/categori/card.png')">
				<div class="container position-relative">
					<div class="row justify-content-between align-items-end">
						<div class="product-man position-absolute  d-none d-lg-block">
							<img src="/Perfumeria/resources/assets/img/categori/card-man.png"
								alt="">
						</div>
						<div class="col-xl-2 col-lg-2 col-md-2 d-none d-lg-block">
							<div class="vertical-text">
								<span>Manz</span>
							</div>
						</div>
						<div class="col-xl-8 col-lg-8">
							<div class="best-product-caption">
								<h2>
									Find The Best Product<br> from Our Shop
								</h2>
								<p>Designers who are interesten creating state ofthe.</p>
								<a href="#" class="black-btn">Shop Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Shape -->
			<div class="shape bounce-animate d-none d-md-block">
				<img src="/Perfumeria/resources/assets/img/categori/card-shape.png"
					alt="">
			</div>
		</div>
		<!-- Best Product End-->
		<!-- Best Collection Start -->
		<div class="best-collection-area section-padding2">
			<div class="container">
				<div class="row d-flex justify-content-between align-items-end">
					<!-- Left content -->
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="best-left-cap">
							<h2>Best Collection of This Month</h2>
							<p>Designers who are interesten crea.</p>
							<a href="#" class="btn shop1-btn">Shop Now</a>
						</div>
						<div class="best-left-img mb-30 d-none d-sm-block">
							<img
								src="/Perfumeria/resources/assets/img/collection/collection1.png"
								alt="">
						</div>
					</div>
					<!-- Mid Img -->
					<div class="col-xl-2 col-lg-2 d-none d-lg-block">
						<div class="best-mid-img mb-30 ">
							<img
								src="/Perfumeria/resources/assets/img/collection/collection2.png"
								alt="">
						</div>
					</div>
					<!-- Riht Caption -->
					<div class="col-xl-4 col-lg-6 col-md-6">
						<div class="best-right-cap ">
							<div class="best-single mb-30">
								<div class="single-cap">
									<h4>
										Menz Winter<br> Jacket
									</h4>
								</div>
								<div class="single-img">
									<img
										src="/Perfumeria/resources/assets/img/collection/collection3.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="best-right-cap">
							<div class="best-single mb-30">
								<div class="single-cap active">
									<h4>
										Menz Winter<br>Jacket
									</h4>
								</div>
								<div class="single-img">
									<img
										src="/Perfumeria/resources/assets/img/collection/collection4.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="best-right-cap">
							<div class="best-single mb-30">
								<div class="single-cap">
									<h4>
										Menz Winter<br> Jacket
									</h4>
								</div>
								<div class="single-img">
									<img
										src="/Perfumeria/resources/assets/img/collection/collection5.png"
										alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Best Collection End -->
		<!-- Latest Offers Start -->
		<div class="latest-wrapper lf-padding">
			<div class="latest-area latest-height d-flex align-items-center"
				data-background="assets/img/collection/latest-offer.png">
				<div class="container">
					<div class="row d-flex align-items-center">
						<div class="col-xl-5 col-lg-5 col-md-6 offset-xl-1 offset-lg-1">
							<div class="latest-caption">
								<h2>
									Get Our<br>Latest Offers News
								</h2>
								<p>Subscribe news latter</p>
							</div>
						</div>
						<div class="col-xl-5 col-lg-5 col-md-6 ">
							<div class="latest-subscribe">
								<form action="#">
									<input type="email" placeholder="Your email here">
									<button>Shop Now</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- man Shape -->
				<div class="man-shape">
					<img
						src="/Perfumeria/resources/assets/img/collection/latest-man.png"
						alt="">
				</div>
			</div>
		</div>
		<!-- Latest Offers End -->
		<!-- Shop Method Start-->
		<div class="shop-method-area section-padding30">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-method mb-40">
							<i class="ti-package"></i>
							<h6>Free Shipping Method</h6>
							<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-method mb-40">
							<i class="ti-unlock"></i>
							<h6>Secure Payment System</h6>
							<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-method mb-40">
							<i class="ti-reload"></i>
							<h6>Secure Payment System</h6>
							<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Shop Method End-->
		<!-- Gallery Start-->
		<div class="gallery-wrapper lf-padding">
			<div class="gallery-area">
				<div class="container-fluid">
					<div class="row">
						<div class="gallery-items">
							<img src="/Perfumeria/resources/assets/img/gallery/gallery1.jpg"
								alt="">
						</div>
						<div class="gallery-items">
							<img src="/Perfumeria/resources/assets/img/gallery/gallery2.jpg"
								alt="">
						</div>
						<div class="gallery-items">
							<img src="/Perfumeria/resources/assets/img/gallery/gallery3.jpg"
								alt="">
						</div>
						<div class="gallery-items">
							<img src="/Perfumeria/resources/assets/img/gallery/gallery4.jpg"
								alt="">
						</div>
						<div class="gallery-items">
							<img src="/Perfumeria/resources/assets/img/gallery/gallery5.jpg"
								alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Gallery End-->

	</main>
	<footer>

		<!-- Footer Start-->
		<div class="footer-area footer-padding">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
						<div class="single-footer-caption mb-50">
							<div class="single-footer-caption mb-30">
								<!-- logo -->
								<div class="footer-logo">
									<a href="index.html"><img src="" alt=""></a>
								</div>
								<div class="footer-tittle">
									<div class="footer-pera">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit sed do eiusmod tempor incididunt ut labore.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Quick Links</h4>
								<ul>
									<li><a href="#">About</a></li>
									<li><a href="#"> Offers & Discounts</a></li>
									<li><a href="#"> Get Coupon</a></li>
									<li><a href="#"> Contact Us</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>New Products</h4>
								<ul>
									<li><a href="#">Woman Cloth</a></li>
									<li><a href="#">Fashion Accessories</a></li>
									<li><a href="#"> Man Accessories</a></li>
									<li><a href="#"> Rubber made Toys</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Support</h4>
								<ul>
									<li><a href="#">Frequently Asked Questions</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Report a Payment Issue</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Footer bottom -->
				<div class="row">
					<div class="col-xl-7 col-lg-7 col-md-7">
						<div class="footer-copy-right">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="ti-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
					<div class="col-xl-5 col-lg-5 col-md-5">
						<div class="footer-copy-right f-right">
							<!-- social -->
							<div class="footer-social">
								<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
									class="fab fa-facebook-f"></i></a> <a href="#"><i
									class="fab fa-behance"></i></a> <a href="#"><i
									class="fas fa-globe"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End-->

	</footer>

	<!-- JS here -->

	<!-- All JS Custom Plugins Link Here here -->
	<script
		src="/Perfumeria/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="/Perfumeria/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/popper.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="/Perfumeria/resources/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="/Perfumeria/resources/assets/js/owl.carousel.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="/Perfumeria/resources/assets/js/wow.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/animated.headline.js"></script>
	<script src="/Perfumeria/resources/assets/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script src="/Perfumeria/resources/assets/js/jquery.scrollUp.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="/Perfumeria/resources/assets/js/contact.js"></script>
	<script src="/Perfumeria/resources/assets/js/jquery.form.js"></script>
	<script src="/Perfumeria/resources/assets/js/jquery.validate.min.js"></script>
	<script src="/Perfumeria/resources/assets/js/mail-script.js"></script>
	<script src="/Perfumeria/resources/assets/js/jquery.ajaxchimp.min.js"></script>
	
	<!-- Jquery Plugins, main Jquery -->	
    <script src="/Perfumeria/resources/assets/js/plugins.js"></script>
    <script src="/Perfumeria/resources/assets/js/main.js"></script>