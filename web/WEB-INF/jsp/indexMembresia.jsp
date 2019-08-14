<%-- 
    Document   : indexMembresia
    Created on : 01-ago-2019, 17:51:30
    Author     : BRAYAN STID BERNAL
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        
        <a class="btn" href="AgregarMembresia.htm">Nuevo Registro</a>
        
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="#">AIERS</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="index.htm">Inicio <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="inicioUsuario.htm">Usuario</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link " href="inisioServicio.htm">Servicios</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link " href="indexMembresia.htm">Membresia</a>
          </li>
          
          
        </ul>
       
      </div>
    </nav>
    </head>
    <body>
          <br>
            <thead>
                <tr>
            
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Documento</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>Estado</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Fin</th>
                    <th>Valor</th>
                    <th>Detalles</th>
                    
                </tr>
            </thead>
            
            <c:forEach var="dato" items="${lista}">
                <tr>
                    <br>
                    <td>${dato.Nombre}</td>
                    <td>${dato.Apellido}</td>
                    <td>${dato.Documento}</td>
                    <td>${dato.Telefono}</td>
                    <td>${dato.Correo}</td>
                    <td>${dato.Estado}</td>
                    <td>${dato.FechaInicio}</td>
                    <td>${dato.FechaFin}</td>
                    <td>${dato.Valor}</td>
                    <td>${dato.Detalles}</td>
                    
                
                    
                    <td>
                        <a href="editarMembresia.htm?idmembresia=${dato.idmembresia}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deleteMembresia.htm?idmembresia=${dato.idmembresia}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            
    </body>
</html>
