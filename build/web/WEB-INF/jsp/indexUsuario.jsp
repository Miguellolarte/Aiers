<%-- 
    Document   : indexUsuario
    Created on : 01-ago-2019, 13:32:28
    Author     : BRAYAN STID BERNAL
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
     
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="#">AIERS</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="indexUsuario.htm">Usuario</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link " href="indexTipoServicio.ht">Servicios</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link " href="indexMembresia.htm">Membresia</a>
          </li>
          <li class="nav-item active">
              <a class="btn" href="AgregarUsuario.htm">Nuevo Registro</a>
          </li>
          
        </ul>
       
      </div>
    </nav>
    </head>
    
        <style>
        #form {
  width: 250px;
  margin: 0 auto;
  height: 50px;
}

#form p {
  text-align: center;
}

#form label {
  font-size: 20px;
}

input[type="radio"] {
  display: none;
}

label {
  color: grey;
  font-size: 40px;
}

.clasificacion {
  direction: rtl;
  unicode-bidi: bidi-override;
}

label:hover,
label:hover ~ label {
  color: orange;
}

input[type="radio"]:checked ~ label {
  color: orange;
}
    </style>
 
    <body>
        
        <div class="row">
                 <div class="jumbotron" style="margin-top:5%; margin: auto; margin-top: 5%" >
                    <h1 class="display-4">Los usuarios con mejor calificacion!</h1>
                    <p class="lead">Este es el lugar donde mostramos a los prefecionales que tienen las mejores calificaciones por sus buenas labores </p>
                    <hr class="my-4">
                    <p>Las tres personas que veras acontinuacion son los mejores de este mes</p>
                    <div class="col" style="display:flex">
                    <p class="lead" style="margin-left:4%">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="./img/icono.png" alt="Card image cap">
                        <div class="card-body">
                             <form>
                                 <h1>Carlos</h1>
                                 <p class="clasificacion">
                                 <input id="radio1" type="radio" name="estrellas" value="5"><!--
                                 --><label for="radio1">★</label><!--
                                 --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                 --><label for="radio2">★</label><!--
                                 --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                 --><label for="radio3">★</label><!--
                                 --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                 --><label for="radio4">★</label><!--
                                 --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                 --><label for="radio5">★</label>
                                 </p>
                             </form>
                        </div>
                        </div>
                    </p>
                     
                    <p class="lead">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="./img/icono.png" alt="Card image cap">
                        <div class="card-body">
                              <form>
                                 <h1>Daniel</h1>
                                 <p class="clasificacion">
                                 <input id="radio1" type="radio" name="estrellas" value="5"><!--
                                 --><label for="radio1">★</label><!--
                                 --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                 --><label for="radio2">★</label><!--
                                 --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                 --><label for="radio3">★</label><!--
                                 --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                 --><label for="radio4">★</label><!--
                                 --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                 --><label for="radio5">★</label>
                                 </p>
                             </form>
                        </div>
                        </div>
                    </p>
                    
                     <p class="lead">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="./img/icono.png" alt="Card image cap">
                        <div class="card-body">
                              <form>
                                 <h1>Omar</h1>
                                 <p class="clasificacion">
                                 <input id="radio1" type="radio" name="estrellas" value="5"><!--
                                 --><label for="radio1">★</label><!--
                                 --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                 --><label for="radio2">★</label><!--
                                 --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                 --><label for="radio3">★</label><!--
                                 --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                 --><label for="radio4">★</label><!--
                                 --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                 --><label for="radio5">★</label>
                                 </p>
                             </form>
                        </div>
                        </div>
                    </p>
                    </div>
                </div>
             </div>
         </div>
        <br>
            <thead>
                <tr>
            
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Documento</th>
                    <th>Telefono</th>
                    <th>Tipo</th>
                    <th>Clave</th>
                    <th>Direccion</th>
                    <th>Correo</th>
                    <th>Estado</th>
                    <th>FotoPerfil</th>
                    <th>FotosAdicionales</th>
                    <th>Detalle</th>
                    <th>Calificacion</th>
                </tr>
            </thead>
            
            <c:forEach var="dato" items="${lista}">
                <tr>
                    <br>
                    <td>${dato.Nombre}</td>
                    <td>${dato.Apellido}</td>
                    <td>${dato.Documento}</td>
                    <td>${dato.Telefono}</td>
                    <td>${dato.Tipo}</td>
                    <td>${dato.Clave}</td>
                    <td>${dato.Direccion}</td>
                    <td>${dato.Correo}</td>
                    <td>${dato.Estado}</td>
                    <td>${dato.FotoPerfil}</td>
                    <td>${dato.FotosAdicionales}</td>
                    <td>${dato.Detalles}</td>
                    <td>${dato.Calificacion}</td>
                    
                    <td>
                        <a href="editarUsuario.htm?idusuario=${dato.idusuario}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deleteUsuario.htm?idusuario=${dato.idusuario}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
                
                
                
            
            
  <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
<!--  <script src="bootstrap/js/jquery.vide.min.js" type="text/javascript"></script>-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
