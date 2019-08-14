<%-- 
    Document   : editarUsuario
    Created on : 01-ago-2019, 15:16:31
    Author     : BRAYAN STID BERNAL
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container">
          <h1> Actualiza Usuario</h1>
          <form method="POST">
              <table>
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

                  <tr>
                      <td>
                          <input type="text" name="Nombre" placeholder="Nombre" value="${lista[0].Nombre}">
                      </td>
                  
                 
                    <td>
                        <input type="text" name="Apellido" placeholder="Apellido" value="${lista[0].Apellido}">
                    </td>
                    
                     <td>
                        <input type="text" name="Documento" placeholder="Documento" value="${lista[0].Documento}">
                    </td>
                    
                     <td>
                        <input type="text" name="Telefono" placeholder="Telefono" value="${lista[0].Telefono}">
                    </td>
                    
                     <td>
                        <input type="text" name="Tipo" placeholder="Tipo" value="${lista[0].Tipo}">
                    </td>
                     <td>
                        <input type="text" name="Clave" placeholder="Clave" value="${lista[0].Clave}">
                    </td>
                     <td>
                        <input type="text" name="Direccion" placeholder="Direccion" value="${lista[0].Direccion}">
                    </td>
                     <td>
                          <input type="text" name="Correo" placeholder="Correo" value="${lista[0].Correo}">
                      </td>
                     <td>
                          <input type="text" name="Estado" placeholder="Estado" value="${lista[0].Estado}">
                      </td>
                     <td>
                          <input type="text" name="FotoPerfil" placeholder="FotoPerfil" value="${lista[0].FotoPerfil}">
                      </td>
                       <td>
                          <input type="text" name="FotosAdicionales" placeholder="FotosAdicionales" value="${lista[0].FotosAdicionales}">
                      </td>
                      <td>
                          <input type="text" name="Detalles" placeholder="Detalles" value="${lista[0].Detalles}">
                      </td>
                     <td>
                          <input type="text" name="Calificacion" placeholder="Calificacion" value="${lista[0].Calificacion}">
                      </td>
                    
                    
                    

                    <td>
                        <input type="submit" value="Actualizarr" class="agregar">
                    </td>
                </tr>
              </table>

              <a href="indexUsuario.html">Regresar</a>
          </form>
      </div>
    </body>
</html>
