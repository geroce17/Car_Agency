<%-- 
    Document   : vehicle-Information
    Created on : Nov 5, 2017, 7:16:51 PM
    Author     : gero
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link href="css/creative.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Información del vehiculo</title>
    </head>
    <body>
        <%
            ResultSet vehiculo = (ResultSet) session.getAttribute("modelo");
            String modelo = "";
            String color = "";
            String segmento = "";
            String cilindraje = "";
            String nopuertas = "";
            String velocidadmax = "";
            String año = "";
            String zona = "";
            String costoservicio = "";
        %>
        <nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container-fluid">
                <img id="logo" class="img-fluid" src="img/logoc.png" alt="logoimg" align="left">
                <a id="tituloPrincipal" class="navbar-brand js-scroll-trigger" href="index.jsp" target="_self">Inicio</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div align="right" class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto navbar-right">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#">Atributos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="pruebaManejo.jsp" target="_self">Agendar prueba de manejo</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                    </form>
                </div>
            </div>
        </nav>

        <form>
            <input name="model" type="text" class="form-text" value="estoesunaprueba">
        </form>
        <div id="col" class="bg-dark" style="height: 56px; width: 100%; position: absolute"></div>


        <div id="divImage" class="">
            <%
                while (vehiculo.next()) {
                    out.println("<img id='divImage' class='img-fluid' src='img/Vehiculos/banner/" + vehiculo.getString(1) + "'>");
                    modelo = vehiculo.getString(2);
                    color = vehiculo.getString(3);
                    segmento = vehiculo.getString(4);
                    nopuertas = vehiculo.getString(5);
                    cilindraje = vehiculo.getString(6);
                    velocidadmax = vehiculo.getString(7);
                    año = vehiculo.getString(8);
                    zona = vehiculo.getString(9);
                    costoservicio = vehiculo.getString(10);
                }
            %> 
        </div>


        <section id="atributos" style="width: 100%; background-color: white; padding: 0px !important; margin-top: 150px;">
            <div class="container">
                <section id="services">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <h2 class="section-heading">Atributos</h2>
                                <hr class="my-4">
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row justify-content-md-center">
                            <div class="col-lg-6 col-md-6">
                                <div class="service-box mt-5 mx-auto" style="text-align: justify">
                                    <h3 class="mb-3" style="text-align: center">Aspectos técnicos</h3>
                                    <%
                                        out.println("<p class='text-muted mb-0'><h4>El nuevo Nissan " + modelo + " " + año + " cuenta con un poderoso motor de " + cilindraje + " cilindros"
                                                + " que le brinda una velocidad de hasta " + velocidadmax + " Km/H.</h4></p>");
                                    %>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="service-box mt-5 mx-auto" style="text-align: justify">
                                    <h3 class="mb-3" style="text-align: center">Diseño</h3>
                                    <%
                                        out.println("<p class='text-muted mb-0' style='text-align: justify;'><h4>Uno de los aspectos mas importantes son el diseño, para el eso el Nissan " + modelo + " " + año + " cuenta con " + nopuertas + " puertas, además de un color " + color + ""
                                                + " de la mas alta calidad.</h4></p>");
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <%
                    Connection connection;

                    PreparedStatement command;
                    ResultSet result;
                    HttpSession sessionInfo = request.getSession();

                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/car-agency?useSSL=false", "root", "4688");

                        command = connection.prepareStatement("SELECT imagen, modelo, precio_estimado FROM automovil where zona = ? ;");
                        command.setString(1, zona);
                        result = command.executeQuery();

                        while (result.next()) {

                        }
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                %>
            </div>
        </section>

        <section style="width: 100%; background-color: white; padding: 0px !important; margin-top: 150px;">
            <div style="padding-top: 100px; padding-bottom: 100px" class="container">
                <div class="container">
                    <div class="row">
                        <div id="servicios" class="col-lg-12 text-center">
                            <h2 class="section-heading">SERVICIOS</h2>
                            <hr class="my-4">
                            <p><h4>La afinación forma parte del mantenimiento básico de un automóvil y debe realizarse con una periodicidad recomendable de 6 meses o un año como máximo.</h4></p>
                        </div>
                    </div>
                </div>
                <section class="p-0" id="portfolio">
                    <a href="#" class="list-group-item active" style="text-align: center">
                        Servicio Regular
                    </a>
                    <div class="container-fluid p-0">
                        <div class="justify-content-md-center row no-gutters popup-gallery">
                            <div class="col-lg-4 col-sm-6">
                                <a class="portfolio-box" href="img/util/cambio-ruedas.jpg">
                                    <img class="img-fluid" src="img/util/cambio-ruedas.jpg" alt="">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-name">
                                                Presion de llantas
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <a class="portfolio-box" href="img/util/oil-cha.jpg">
                                    <img class="img-fluid" src="img/util/oil-cha.jpg" alt="">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-name">
                                                Cambio de aceite
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <a class="portfolio-box" href="img/util/coche-lavar.jpg">
                                    <img class="img-fluid" src="img/util/coche-lavar.jpg" alt="">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-name">
                                                Lavado de coche
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <a href="#" class="list-group-item active" style="text-align: center">
                        Servicio Estándar
                    </a>
                    <div class="row justify-content-center">
                        <div class="col-md-2">

                        </div>

                        <div class="col-md-10"><div class="list-group">

                                <a class="list-group-item list-group-item-action">Cambio de bujias</a>
                                <a class="list-group-item list-group-item-action">Cambio de aceite</a>
                                <a class="list-group-item list-group-item-action">Revisión de filtros de aceite</a>
                                <a class="list-group-item list-group-item-action disabled">Limpieza de válvulas</a>
                                <a class="list-group-item list-group-item-action disabled">Limpieza del cuerpo de aceleracion</a>

                            </div>
                        </div>
                    </div>
                    <a href="#" class="list-group-item active" style="text-align: center">
                        Servicio Plus HD Edition
                    </a>
                    <div class="row justify-content-center">
                        <div class="col-md-2">

                        </div>

                        <div class="col-md-10"><div class="list-group">
                                <a class="list-group-item list-group-item-action">Inspeccion de liquido de frenos</a>
                                <a class="list-group-item list-group-item-action">Líquido de los limpiaparabrisas</a>
                                <a class="list-group-item list-group-item-action">Filtro de aire y de respiración</a>
                                <a class="list-group-item list-group-item-action">Radiador y líquido anticolgelante</a>
                                <a class="list-group-item list-group-item-action disabled">Aceite de la dirección hidráulica</a>
                                <a class="list-group-item list-group-item-action disabled">Aceite de la transmisión o transeje</a>
                                <a class="list-group-item list-group-item-action disabled">Revisión de engrasado del chasis</a>
                                <a class="list-group-item list-group-item-action disabled">Aceite del diferencial</a>
                                <a class="list-group-item list-group-item-action disabled">Presión de llantas</a>
                                <a class="list-group-item list-group-item-action disabled">Carga o líquido de la batería</a>
                                <a class="list-group-item list-group-item-action disabled">Lavado exterior de ventanas, faros y espejos</a>
                                <a class="list-group-item list-group-item-action disabled">Aspirado interior</a>

                            </div>
                        </div>
                    </div>
                    <%
                        out.println("<p style='text-align: right;color:red;font-weight:bolder'>Costo de servicio: $" + costoservicio + "<br>" +
                        "El costo del servicio puede variar dependiendo del kilometraje del auto</p>");
                    %>
                </section>
            </div>
            <div id="footer" style="padding-top: 60px; padding-bottom: 60px;" class="bg-dark">
                <div class="container">
                    <label class="title"><h2 class="my-4 text-center text-lg-left"><b>Contactanos en</b></h2></label>
                    <h5 style="color: white">Calle Lic. Carlos de La Madrid Béjar 891<br> Centro, 28000 Colima, Col.</h5>
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                </div>
            </div>
            <%                out.println("<form action='' method=''>");
                out.println("<input type='text' style='color:blue; display:none' name='zona' value='" + zona + "'>");
                out.println("</form>");
            %>
        </section>

        <script>
            window.onscroll = function () {
                myFunction();
            };

            function myFunction() {
                if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
                    document.getElementById('mainNav').className = 'navbar navbar-expand-lg navbar-light fixed-top navbar-shrink';
                } else
                {
                    document.getElementById('mainNav').className = 'navbar navbar-expand-lg navbar-light fixed-top';
                }
            }
        </script>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
