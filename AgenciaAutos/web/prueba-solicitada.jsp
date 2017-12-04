<%-- 
    Document   : prueba-solicitada
    Created on : 16/11/2017, 04:37:33 AM
    Author     : geroC
--%>
<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            Email email = new Email();

            String name = request.getParameter("name");
            String lastname = request.getParameter("lastname");
            String lastname2 = request.getParameter("lastname2");
            String emailp = request.getParameter("emailp");
            String phone = request.getParameter("phone");
            String cel = request.getParameter("cel");
            String svehicle = request.getParameter("selectedvehicle");
            
            String mensaje = "<div class='container'>"+
            "<h2>Solicitud de prueba de manejo</h2>" +
            "<p style='font-size: 20px'> El usuario " + name + " " + lastname + " " + lastname2 + " ha solicitado una prueba de manejo del vehiculo " + svehicle + "</p>" + 
            "<h2>Informacion de contacto</h2>" + 
            "<p style='font-size: 18px'>"+
                "Correo electrónico: " + emailp + "<br>"+
                "Teléfono: " + phone + "<br>"+
                "Celular: "+ cel + "<br>"+
            "</p> </div>";
            
            boolean resultado = email.enviarCorreo(mensaje);

            if (resultado) {
                out.print("CORREO ELECTRONICO CORRECTAMENTE ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
            } else {
                out.print("CORREO ELECTRONICO NO ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
            }

        %>
    </body>
</html>
