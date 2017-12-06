<%-- 
    Document   : ResultadosDeBusqueda
    Created on : 16/11/2017, 06:23:18 AM
    Author     : geroC
--%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link href="css/creative.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Julius+Sans+One" rel="stylesheet"> 
        <title>Resultados de busqueda</title>
    </head>
    <body>
        <%
            String zona = "";
        %>
        <nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container-fluid">
                <img id="logo" class="img-fluid" src="img/logoc.png" alt="logoimg" align="left">
                <a id="tituloPrincipal" class="navbar-brand js-scroll-trigger" href="index.jsp" target="_self">Agencia de vehiculos</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div align="right" class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto navbar-right">
                        <form>
                            <input class="btn" type="button" value="volver" name="volver atrás2" onclick="history.back()" />
                        </form>

                    </ul>
                </div>
            </div>
        </nav>

        <section>
            <div class="tab-content container">
                <div class="tab-pane fade active in show" id="todos" role="tabpanel">
                    <div class="row text-center text-lg-left">
                        <%
                            ResultSet result = (ResultSet) session.getAttribute("modelo");
                            while (result.next()) {
                                out.println("<div class='col-md-6'>");
                                out.println("<img class='img-fluid'" + " src='img/Vehiculos/" + result.getString(1) + "' alt=''>");
                                out.println("<form action='InformacionVehiculo' method='post' style='Background-Color: black; opacity: 0.8; font-size: 18px; margin-bottom: 50px'>");
                                out.println("<div class='col-md-12'>");
                                out.println("<div class='container'>");
                                out.println("<div class='row'>");
                                out.println("<input name='selectedvehicle' type='text' style='background-color: transparent; border: none; color: #d6ffeb; font-weight: bolder; font-size: 18px' value='" + result.getString(2) + "' size='11' readonly><br>");
                                out.println("</div>");
                                out.println("<div class='row'>");
                                out.println("<div class'col-6 align-self-start' style='padding-top: 10px'>");
                                out.println("<b style='color: gray; font-size: 18px'>Desde: </b>");
                                out.println("<input type='text' style='background-color: transparent; border: none; color: #f4eb42; font-weight: bolder; font-size: 18px' value='" + result.getString(3) + "' size='11' readonly>");
                                out.println("</div>");
                                out.println("<div class='col-6 align-self-end'>");
                                out.println("<button class='btn btn-outline-success my-2 my-sm-0' type='submit'>Ver</button>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                            }
                        %>
                    </div>
                </div>
            </div>
        </section>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
