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
    <body onload="validasitio()">
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
                            <a class="nav-link js-scroll-trigger" href="#atributos">Atributos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#sectionServices">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <button style='margin-right: 10px' class='btn btn-outline-success my-2 my-sm-0' type='button' onclick='IrAPrueba()'>Agendar prueba</button>
                        </li>
                    </ul>
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
                    out.println("<p style='font-size: 70px; bottom: 400px'><b>" + vehiculo.getString(2) + "</b></p>");
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
                                    <h3 class="mb-3" style="text-align: center; color: #003166"><b>Aspectos técnicos</b></h3>
                                    <%
                                        out.println("<p class='text-muted mb-0'><h4>El nuevo Nissan " + modelo + " " + año + " cuenta con un poderoso motor de " + cilindraje + " cilindros"
                                                + " que le brinda una velocidad de hasta " + velocidadmax + " Km/H.</h4></p>");
                                    %>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="service-box mt-5 mx-auto" style="text-align: justify">
                                    <h3 class="mb-3" style="text-align: center; color: #003166"><b>Diseño</b></h3>
                                    <%
                                        out.println("<p class='text-muted mb-0' style='text-align: justify;'><h4>Uno de los aspectos mas importantes son el diseño, para el eso el Nissan " + modelo + " " + año + " cuenta con " + nopuertas + " puertas, además de un color " + color + ""
                                                + " de la mas alta calidad.</h4></p>");
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row justify-content-md-center">
                            <div class="col-lg-12 col-md-12">
                                <div class="service-box mt-5 mx-auto" style="text-align: justify">
                                    <h3 class="mb-3" style="text-align: center;color: #003166"><b>Puedes encontrarlo en</b></h3>
                                </div>
                            </div>
                            <%
                                Connection connection;

                                PreparedStatement command;
                                ResultSet agencia;
                                HttpSession sessionInfo = request.getSession();

                                String agdireccion = "";
                                String aghorarioE = "";
                                String aghorarioS = "";
                                String agnombre = "";

                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    connection = DriverManager.getConnection("jdbc:mysql://192.168.1.73:3306/DBGAC?useSSL=false", "developer", "1234");

                                    command = connection.prepareStatement("SELECT DISTINCT agencia.direccion, agencia.horarioEntrada, agencia.horarioSalida, agencia.nombre "
                                            + "FROM automovil "
                                            + "INNER JOIN agencia ON agencia.id_zona IN (select zona.id_zona from zona where zona.nombre = ? );");
                                    command.setString(1, zona);
                                    agencia = command.executeQuery();

                                    while (agencia.next()) {
                                        agdireccion = agencia.getString(1);
                                        aghorarioE = agencia.getString(2);
                                        aghorarioS = agencia.getString(3);
                                        agnombre = agencia.getString(4);
                                        out.println("<div class='col-lg-6 col-md-6'>");
                                        out.println("<div class='service-box mt-5 mx-auto' style='text-align: justify'>");
                                        out.println("<h3 class='mb-3' style='text-align: left; color: #006fe6'>" + agnombre + "</h3>");
                                        out.println("<p class='text-muted mb-0' style='text-align: justify;'><h4>" + agdireccion + "</h4></p>");
                                        out.println("<p class='text-muted mb-0' style='text-align: justify;'><h4>De lunes a viernes, horario de " + aghorarioE + " am a " + aghorarioS + " pm</h4></p>");
                                        out.println("</div>");
                                        out.println("</div>");
                                    }
                                } catch (Exception e) {
                                    System.out.println(e.getMessage());
                                }
                            %>
                        </div>
                </section>
            </div>
        </section>

        <section id="sectionServices" style="width: 100%; background-color: white; padding: 0px !important; margin-top: 150px;">
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
                    <a class="list-group-item active" style="text-align: center; font-weight: bolder; font-size: 18px; color: white">
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
                    <a class="list-group-item active" style="text-align: center; font-weight: bolder; font-size: 18px; color: white">
                        Servicio Estándar
                    </a>
                    <div class="row justify-content-center">
                        <div style="padding: 25px" class="col-md-4">
                            <img class="img-fluid" src="img/util/bannerestandar.png" alt="promoestandar">
                        </div>

                        <div style="margin: auto;" class="col-md-8">
                            <div style="font-size: 18px" class="list-group">

                                <a style="background-color: #d6faff" class="list-group-item list-group-item-action"><b>Cambio de bujias</b></a>
                                <a style="background-color: #d6faff" class="list-group-item list-group-item-action"><b>Cambio de aceite</b></a>
                                <a style="background-color: #d6faff" class="list-group-item list-group-item-action"><b>Revisión de filtros de aceite</b></a>
                                <a style="background-color: #d6faff" class="list-group-item list-group-item-action disabled"><b>Limpieza de válvulas</b></a>
                                <a style="background-color: #d6faff" class="list-group-item list-group-item-action disabled"><b>Limpieza del cuerpo de aceleracion</b></a>

                            </div>
                        </div>
                    </div>
                    <a class="list-group-item active" style="text-align: center; font-weight: bolder; font-size: 18px; color: white">
                        Servicio Plus HD Edition
                    </a>
                    <div class="row justify-content-center">
                        <div style="padding: 25px" class="col-md-4">
                            <img class="img-fluid" src="img/util/bannerplus.png" alt="promoplus">
                        </div>

                        <div style="margin: auto;" class="col-md-8">
                            <div style="font-size: 18px" class="list-group">

                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action"><b>Inspección de líquido de frenos</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action"><b>Líquido de los limpiaparabrisas</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action"><b>Filtro de aire y de respiración</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action"><b>Radiador y líquido anticolgelante</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Aceite de la dirección hidráulica</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Aceite de la transmisión</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Revisión de engrasado del chasis</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Aceite del diferencial</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Presión de llantas</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Carga o líquido de la batería</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Lavado exterior de ventanas, faros y espejos</b></a>
                                <a style="background-color: #ffe65e" class="list-group-item list-group-item-action disabled"><b>Aspirado interior</b></a>

                            </div>
                        </div>
                    </div>
                    <%                        out.println("<p style='text-align: right;color:red;font-weight:bolder'>Costo de servicio: $" + costoservicio + "<br>"
                                + "El costo del servicio puede variar dependiendo del kilometraje del auto</p>");
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
            <%
                out.println("<form id='formzona'>");
                out.println("<input id='mainZona' type='text' style='color:blue; display:none' name='currentZone' value='" + zona + "'>");
                out.println("</form>");
            %>
        </section>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">ALERTA!!!</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ¡Wow para tu tren amigo! elige una zona primero
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-primary" href="index.jsp" target="_self">Seleccionar zona</a>
                    </div>
                </div>
            </div>
        </div>

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

            function IrAPrueba() {
                document.getElementById('formzona').action = 'ListaVehiculos';
                document.getElementById('formzona').method = 'POST';
                document.getElementById('formzona').submit();
            }
            function validasitio() {
                x = document.getElementById('mainZona').value;
                if (x === null || x === ""){
                    $('#myModal').modal('show');
                }
            }
        </script>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
