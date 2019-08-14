<%-- 
    Document   : AgregarMembresia
    Created on : 3/08/2019, 04:07:36 PM
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
        <div class="car-body">
            <form method="POST">
                <h4>nueva membresia</h4>
                <label>fecha de Inicio</label>
                <input type="date" name="FechaInicio" class="form-control">
                <label>Fecha de vencimineto</label>
                <input type="date" name="FechaFin" class="form-control">
                <label>Valor</label>
                <input type="number" name="valor" class="form-control">
                <label>Detalles</label>
                <input type="text" name="Detalles" class="form-control">
                
                
                
                <select name="idusuario" id="idusuario">
                    <c:forEach var="dato" items="${lista}">
                        <option value="${dato.idusuario}">${dato.nombre}</option>
                    </c:forEach>
                </select>
                
              
             
            </div>
                <input type="submit" value="Agregar" class="btn btn-succes">
                <a href="indexMembresia.htm">Regresar</a>
            </form>
        </div>
    </body>
</html>


