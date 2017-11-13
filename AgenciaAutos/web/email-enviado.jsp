<%-- 
    Document   : email-enviado
    Created on : Nov 12, 2017, 8:30:49 PM
    Author     : gero
--%>
<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>email enviado</title>
    </head>
    <body>
        <%

            Email email = new Email();

            String name = request.getParameter("nombre");
            String lastname = request.getParameter("apellido");
            String phone = request.getParameter("telefono");
            String emailu = request.getParameter("email");
            String vehicle = request.getParameter("vehiculo");
            
            String mensaje = "<p style='font-size: 20px'>El usuario " + name + " " + lastname + " ha solicitado una cotizacion del vehiculo: " + vehicle + "<br>"
                    + "<br><br>Contacto<br>"+ emailu + "<br>" + phone + "</p>";
            

            /* 
                
                String[] direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo ..."}
                boolean resultado = email.enviarCorreo(de, clave, direcciones, mensaje, asunto);
            
             */
            boolean resultado = email.enviarCorreo(mensaje);

            if (resultado) {
                out.print("CORREO ELECTRONICO CORRECTAMENTE ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
            } else {
                out.print("CORREO ELECTRONICO NO ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
            }

        %>
    </body>
</html>
