<%-- 
    Document   : AgregarUsuario
    Created on : 01-ago-2019, 13:48:03
    Author     : BRAYAN STID BERNAL
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="Agregarusuario" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    
    <link href="bootstrap/css/open-iconic-bootstrap.min.css" rel="stylesheet" type="text/css"/>
    
    <link href="bootstrap/css/animate.css" rel="stylesheet" type="text/css"/>
    
    <link href="bootstrap/css/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/owl.theme.default.min.css" rel="stylesheet" type="text/css"/>
    
    
    <link href="bootstrap/css/magnific-popup.css" rel="stylesheet" type="text/css"/>

    
    <link href="bootstrap/css/aos.css" rel="stylesheet" type="text/css"/>

    
    
    
    
    <link href="bootstrap/css/flaticon.css" rel="stylesheet" type="text/css"/>

    <link href="bootstrap/css/style.css" rel="stylesheet" type="text/css"/>
  
    
    <link href="bootstrap/css/form.css" rel="stylesheet" type="text/css"/>
     
  
    </head>
    
   
    
    <body>
        <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="index.html">AIERS. <span>Aplicativo de Ingresos Extras, Rapidos y Seguros</span></a>
    			</div>
	    		
		    </div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center px-4">
				<button class="navbar-toggler" type="submit" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav"  aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <form action="#" class="searchform order-lg-last">
          <div class="form-group d-flex">
            <input type="text" class="form-control pl-3" placeholder="Search">
            <button type="submit" class="form-control search"><span class="ion-ios-search"></span></button>
          </div>
        </form>
	       <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="index.htm" class="nav-link pl-0">Inicio</a></li>
	        	<li class="nav-item"><a href="inicioUsuario.htm" class="nav-link">Usuario</a></li>
	        	<li class="nav-item"><a href="inicioServicio.htm" class="nav-link">Servicio</a></li>
	        	<li class="nav-item"><a href="teacher.html" class="nav-link">Membresia</a></li>
	        	<li class="nav-item"><a href="blog.html" class="nav-link">Tipo de Servicios</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contacto</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
        
  
        
        <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/money.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-2 d-flex">
    			<div class="col-md-6 align-items-stretch d-flex">
    				<div class="img img-video d-flex align-items-center" style="background-color: rgba(0,0,0,0.400)">
    					
                    <div class="card-body" style="color: white;">
                        <form method="POST" style="margin: auto" id="frm-registro"> 
                        <h4>Agregar nuevo Usuario</h4>
                        
                        
                        <label id="nombre"></label>
                        <input type="text" id="Nombre" name="Nombre" class="form-control" placeholder="Nombre" >
                        <label id="apellido"></label>
                        <input type="text" id="Apellido" name="Apellido" class="form-control" placeholder="Apellido" >
                         <label id="Documento"></label>
                        <input type="text" id="Documento" name="Documento" class="form-control" placeholder="Cedula" >
                         <label id="telefono"></label>
                        <input type="text" id="Telefono"  name="Telefono" class="form-control" placeholder="Telefono" >
                         <label id="tipo" ></label>
                        <input type="text" id="Tipo" name="Tipo" class="form-control" placeholder="Oferente o Trabajador" >
                        <label id="clave" style="color:red"></label>
                        <input type="password" id="Clave" name="Clave" class="form-control" placeholder="Clave" >
                        <label id="direcciom" style="color:red"></label>
                        <input type="text" id="Direccion" name="Direccion" class="form-control" placeholder="Direccion" >
                        <label id="correo" style="color:red"></label>
                        <input type="email" id="Correo" name="Correo" class="form-control" placeholder="Correo" >
                        <label id="estado"  style="color:red"></label>
                        <input type="text" id="Estado" name="Estado" class="form-control" placeholder="Activo" >
                        <label id="foto" style="color:red"></label>
                        <input type="text" id="FotoPerfil" name="FotoPerfil" class="form-control" placeholder="Foto" >
                        <label id="foto" style="color:red"></label>
                        <input type="text" id="FotosAdicionales" name="FotosAdicionales" class="form-control" placeholder="Foto" >
                        <label id="detalle"  style="color:red"></label>
                        <input type="text" id="Detalles" name="Detalles" class="form-control" placeholder="Detalles" >
                        <label id="calificacion" style="color:red"></label>
                        <input type="number" id="Calificacion" name="Calificacion" class="form-control" placeholder="Calificacion" >
                        
                        
                        
                        <input type="submit" id="validate" value="Agregar" class="btn btn-sucess bg-primary">
                        <a href="indexUsuario.htm">Regresar</a>
                    </form>
                </div>
    				</div>
    			</div>
          <div class="col-md-6 heading-section heading-section-white ftco-animate pl-lg-5 pt-md-0 pt-5">
            <h2 class="mb-4">AIERS</h2>
            <p>Somos un grupo de personas que deseamos solucionar el desempleo principalmente en tunja, el cual afecta a la estabilidad de la ciudad.</p>
            <p>"Es duro fracasar, pero es todavia peor no haber intentado nunca triunfar (Teodoro Roosevelt)"</p>
          </div>
        </div>	
    		
    	</div>
    </section>
        
        
        
        
        
  <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery-migrate-3.0.1.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/popper.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.easing.1.3.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.waypoints.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.stellar.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/owl.carousel.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/aos.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery.animateNumber.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/scrollax.min.js" type="text/javascript"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="bootstrap/js/google-map.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/valida.js" type="text/javascript"></script>

 
    </body>
</html>
