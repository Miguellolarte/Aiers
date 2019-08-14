<%-- 
    Document   : AgregarTipoServicio
    Created on : 01-ago-2019, 16:40:29
    Author     : BRAYAN STID BERNAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          
                <div class="card-body">
                    <form method="POST">
                        <h4>Agregar el nuevo tipo de servicio</h4>
                        <label>Nombre</label>
                        <input type="text" name="Nombre" class="form-control">
                       
                        
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexTipoServicio.htm">Regresar</a>
                    </form>
                </div>

    </body>
</html>
