<%-- 
    Document   : editarMembresia
    Created on : 3/08/2019, 04:25:55 PM
    Author     : Familia Olarte
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
      <div class="container">
          <h1> Actualiza membresia</h1>
          <form method="POST">
              <table>
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

                  <tr>
                     <td>
                        <input type="date" name="FechaInicio" placeholder="Fecha Inicio" value="${lista[0].FechaInicio}">
                    </td>
                     <td>
                        <input type="date" name="FechaFin" placeholder="Fecha Fin" value="${lista[0].fechaFin}">
                    </td>
                    <td>
                        <input type="number" name="Valor" placeholder="Valor" value="${lista[0].Valor}">
                    </td>
                    <td>
                        <input type="text" name="Detalles" placeholder="Detalles" value="${lista[0].Detalles}">
                    </td>
                    <td>
                      <select name="idusuario">
                            <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idusuario != lista[0].idusuario}">
                                    <option value="${dato.idusuario}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                               
                                 <c:if test="${dato.idusuario == lista[0].idusuario}">
                                     <option value="${dato.idusuario}"selected="true">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                                
                            </c:forEach>
                            
                        </select>
                    </td>
                    
                    
                    

                    <td>
                        <input type="submit" value="Actualizar" class="agregar">
                    </td>
                </tr>
              </table>

              <a href="index.html">Regresar</a>
          </form>
      </div>
  
  </body>
</html>

