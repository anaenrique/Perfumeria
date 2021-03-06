<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
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
										<img src="/Perfumeria/resources/assets/img/icon/Spain.jpg" width=30 heigh=30 alt="">
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
										<li><a href="/Perfumeria/verListaDeseos">Lista de Deseos</a></li>
										<li><a href="/Perfumeria/verCarrito">Carrito</a></li>
										<c:if test="${sessionScope.username != null}">
										<li class="nav-item"><a class="nav-link" href="/Perfumeria/cerrarSesion">Cerrar Sesi&oacuten</a></li>
											<c:if test="${sessionScope.username == 'admin'}">
												<li class="nav-item"><a class="nav-link" href="/Perfumeria/administracion">Administraci&oacuten</a></li>
											</c:if>
										</c:if>
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
									<a href="index.html"><img src="/Perfumeria/resources/assets/img/logo/LogoPerfumeria.PNG" width=250px heigth=300px style="margin-left: -40%"alt=""></a>
								</div> 
							</div>
							<div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
								<!-- Main-menu -->
								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation" >
											
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
								<ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
									<li class="d-none d-xl-block">
										<div class="form-box f-right" style="margin:20%">
											<form action="/Perfumeria/buscarProducto"  method="post">
											<input type="text" name="search" placeholder="">
											<div class="search-icon">
												<button type="submit" style="background:none; color:none; border:none;" ><i class="fas fa-search special-tag" ></i> </button>
											</div>
											</form>
										</div>
									 </li>
										<li class=" d-none d-xl-block">
											<a class="nav-link" href="/Perfumeria/verListaDeseos" tittle="Ver lista de deseos">
												<img alt="Ver la lista de deseos" src="/Perfumeria/resources/assets/img/corazon.jpg" width=30 height=30 style="margin-top:10%">
												<p>Lista Deseos(${fn:length(sessionScope.ListaDeseos)})</p>
											</a>
										</li>
										<li class="d-none d-xl-block">
											<a class="nav-link" href="/Perfumeria/verCarrito">
												<img src="https://augustobrigadaw.000webhostapp.com/resources2/Carrito.png" 
												class="d-inline-block align-top" width=40 height=40 style="margin-top:8%">
												<p>Carrito (${fn:length(sessionScope.carrito)})</p>
											</a>
										</li>
									 </ul>	
								</div>
							</div>
							<!-- Mobile Menu -->
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Header End -->	

    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="/Perfumeria/resources/assets/img/login.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h1 style="color:  #76448a !important">Iniciar Sesi&oacuten</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

    <!--================login_part Area =================-->
    <section class="login_part section_padding ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>&iquest;Nuevo en nuestra tienda?</h2>
                            <p>Todos los d&iacute;as se hacen avances en ciencia y tecnolog&iacute;a, y esto esun buen ejemplo</p>
                            <a href="/Perfumeria/irRegistroUsuario" class="btn_3">Crear una cuenta</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3 style="color:  #76448a !important">Bienvenido de nuevo! <br>Por favor, inicia sesi&oacuten</h3>
                            	<c:if test="${error!=null}">
	                            <div class="alert alert-danger" role="alert">${error}</div>
	                            </c:if>
                                <form class="row contact_form" action="acceder" method="post" novalidate="novalidate">
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Usuario">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Contrase&ntilde;a">
                                </div>
                                <div class="col-md-12 form-group">
                                    <!--  div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div>-->
                                    <input type="submit" name="submit" value="Aceptar" class="btn btn-md" value="submit" style="background-color: #800080; color:white;">
                                   
                                    <!--  a class="lost_pass" href="#">forget password?</a>-->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->

    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding2">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                              <!-- logo -->
                             <div class="footer-logo">
                                 <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                             </div>
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore.</p>
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
                                    <li><a href="#">  Contact Us</a></li>
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
                         <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                 </div>
                  <div class="col-xl-5 col-lg-5 col-md-5">
                     <div class="footer-copy-right f-right">
                         <!-- social -->
                         <div class="footer-social">
                             <a href="#"><i class="fab fa-twitter"></i></a>
                             <a href="#"><i class="fab fa-facebook-f"></i></a>
                             <a href="#"><i class="fab fa-behance"></i></a>
                             <a href="#"><i class="fas fa-globe"></i></a>
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

</body>
    
</html>