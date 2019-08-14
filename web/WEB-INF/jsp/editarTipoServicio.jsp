<%-- 
    Document   : editarTipoServicio
    Created on : 01-ago-2019, 16:45:01
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
        <div class="container">
          <h1> Actualiza Usuario</h1>
          <form method="POST">
              <table>
                  <thead>
                      <tr>
                           <th>Nombre</th>
              
                      </tr>
                  </thead>

                  <tr>
                      <td>
                          <input type="text" name="Nombre" placeholder="Nombre" value="${lista[0].Nombre}">
                      </td>
                  
                 
               
                    <td>
                        <input type="submit" value="Actualizar" class="agregar">
                    </td>
                </tr>
              </table>

              <a href="indexTipoServicio.html">Regresar</a>
          </form>
      </div>
    </body>
</html>
