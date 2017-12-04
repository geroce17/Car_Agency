<%--
    Document   : index
    Created on : 2/11/2017, 10:38:11 PM
    Author     : geroC
--%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Agencia pagina oficial</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link href="css/creative.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Amiko|Julius+Sans+One|Saira|Oswald" rel="stylesheet"> 
    </head>
    <body>
        <nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container-fluid">
                <img id="logo" class="img-fluid" src="img/logoc.png" alt="logoimg" align="left">
                <a id="tituloPrincipal" class="navbar-brand js-scroll-trigger" href="index.jsp" target="_self">Get a Car</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div id="navbarResponsive" align="right" class="collapse navbar-collapse">
                    <ul class="navbar-nav ml-auto navbar-right">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger navlinks" href="#galeria">Galeria</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger navlinks" href="#cotizacion">Cotización</a>
                        </li>
                        <li class="nav-item">
                            <%
                                String zona = request.getParameter("zone");
                                if (zona != null) {
                                    out.println("<button style='margin-right: 10px' class='btn btn-outline-success my-2 my-sm-0' type='button' onclick='IrAPrueba()'>Agendar prueba</button>");
                                } else {
                                    out.println("<button class='btn btn-outline-success my-2 my-sm-0 disabled' type='submit'>Agendar prueba</button>");
                                }
                            %>
                        </li>
                    </ul>
                    <form action="Busqueda" method="post" class="form-inline my-2 my-lg-0">
                        <%
                            request.getParameter("zone");
                            if (zona != null) {
                                out.println("<input name='name' class='form-control mr-sm-2' type='text' placeholder='Modelo' required>");
                                out.println("<button class='btn btn-outline-success my-2 my-sm-0' type='submit'>Buscar</button>");
                            } else {
                                out.println("<input name='name' class='form-control mr-sm-2' type='text' placeholder='Search' required readonly>");
                                out.println("<button class='btn btn-outline-success my-2 my-sm-0 disabled' type='submit'>Buscar</button>");
                            }
                        %>
                    </form>
                </div>
            </div>
        </nav>

        <header class="masthead text-center text-white d-flex backgroundlight">

            <div style="margin: auto" class="container">
                <%
                    request.getParameter("zone");
                    if (zona == null) {
                        out.println("<h2 style='color: #2E112D'><b>Elige tu zona</b></h2>");
                    }
                %>
                <div class="row">

                    <div id="divAgenda" class="col">

                        <img style="width: 70%" class="img-fluid" src="img/util/zonemap3.png" alt="zone map" usemap="#mexicomap">

                        <map name="mexicomap" id="mexicomap">
                            <area onclick="showZone(this)"  alt="Zona Norte" title="Zona Norte" shape="poly" coords="563,618,587,606,594,592,553,532,510,430,447,327,381,227,369,187,368,160,361,134,361,110,399,134,421,149,441,160,442,177,452,211,471,251,465,264,482,267,522,333,549,346,570,383,587,407,606,424,600,455,602,471,631,485,650,501,664,524,690,543,704,559,719,577,728,588,737,605,752,623,763,635,779,642,778,646,787,640,793,631,794,618,818,624,823,637,837,649,851,641,862,614,878,581,881,560,906,545,943,538,935,523,937,512,953,509,969,506,984,515,1004,525,1015,533,1025,537,1032,531,1027,516,1030,505,1052,503,1048,490,1025,468,1012,444,1025,425,1037,418,1029,395,1031,385,1047,361,1065,365,1067,355,1016,277,997,254,974,253,950,248,930,261,925,274,927,283,918,286,900,296,876,282,854,266,837,230,821,198,800,183,776,158,756,140,681,138,671,159,644,162,543,156,374,77,373,64,261,65,274,99,283,132,295,155,304,188,310,213,327,237,346,248,358,265,371,279,383,311,369,328,336,331,384,382,404,392,425,398,445,421,469,453,470,481,464,490,462,505,462,520,493,530,519,547,530,563,548,579" />
                            <area onclick="showZone(this)" alt="Zona Centro" title="Zona Centro" shape="poly" coords="778,655,792,639,796,622,816,634,825,639,843,645,851,637,859,606,886,548,909,541,931,543,946,542,937,517,962,506,1020,534,1029,528,1024,508,1030,497,1049,499,1053,494,1009,438,1037,398,1028,391,1045,378,1057,360,1071,364,1085,375,1089,397,1097,421,1113,438,1150,452,1176,454,1184,459,1202,455,1204,463,1198,478,1196,493,1187,505,1180,529,1179,556,1178,567,1180,594,1178,615,1174,649,1145,677,1145,648,1161,649,1143,688,1146,709,1160,716,1153,738,1145,751,1161,752,1171,748,1166,775,1158,788,1175,797,1191,814,1173,824,1162,826,1139,811,1137,839,1137,851,1139,862,1121,872,1135,887,1152,895,1162,918,1173,940,1150,976,1143,975,1123,967,1092,963,1056,946,1035,938,1021,938,986,912,972,892,958,898,884,869,872,851,861,843,845,832,819,820,789,790,777,760,781,753,797,750,798,742,788,742,799,726,799,703" />
                            <area onclick="showZone(this)" alt="Zona Sur" title="Zona Sur" shape="poly" coords="1144,976,1158,968,1166,962,1173,944,1158,926,1157,910,1151,900,1151,893,1137,890,1127,882,1119,872,1131,864,1140,862,1138,854,1135,842,1139,828,1139,815,1140,808,1148,813,1154,822,1162,828,1168,823,1176,822,1180,818,1194,814,1184,806,1178,799,1169,796,1160,798,1159,788,1160,778,1165,773,1164,765,1156,764,1164,758,1167,754,1172,745,1174,739,1162,746,1150,757,1145,760,1143,750,1149,742,1155,737,1161,726,1161,718,1156,713,1148,713,1146,707,1146,699,1139,691,1145,684,1144,675,1149,662,1146,654,1141,650,1151,646,1158,644,1161,650,1171,654,1175,656,1178,660,1181,668,1188,677,1196,690,1202,711,1207,734,1224,765,1233,762,1252,794,1273,827,1310,844,1345,860,1360,871,1394,859,1458,838,1518,819,1543,786,1554,747,1549,724,1560,699,1649,664,1716,654,1735,663,1736,688,1734,697,1738,706,1737,723,1732,730,1719,720,1710,732,1710,750,1712,766,1698,844,1683,829,1682,812,1654,852,1635,874,1541,875,1538,910,1520,913,1546,931,1576,955,1576,973,1514,975,1486,1022,1494,1030,1484,1062,1386,986,1324,978,1267,1011,1194,1004" />
                        </map>
                    </div>
                </div>

                <form id="formzone" style="display: none" class="col-12" method="post">
                    <div class="row">
                        <label style="color: white; margin: auto" class="col-form-label"><h5>¿Desea confirmar la zona seleccionada?</h5></label>
                        <input id="selectedZone" class="form-control" style="text-align: center; font-size: 20px" name="zone" readonly>
                        <button style="margin: auto; margin-top: 5px" type="submit" class="btn btn-dark">Confirmar</button>
                    </div>
                </form>
            </div>

        </header>

        <div id="content">

            <section id="sectiongaleria" style="width: 100%">

                <div id="galeria" style="background-color: white;">
                    <nav class="navbar container">
                        <%
                            request.getParameter("zone");
                            if (zona != null) {
                                out.println("<form id='formzone2'><input class='text-primary' style='font-size: 30px; font-weight: bolder; border: none;' type='text' value='Galeria de vehiculos'>"
                                        + "<input class='text-primary' style='font-size: 30px; font-weight: bolder; border: none' type='text' name='currentZone' value ='" + zona + "' readonly></form>");
                            } else {
                                out.println("<input class='text-primary' style='font-size: 30px; font-weight: bolder; border: none' type='text' value='Galeria de vehiculos'>");
                            }
                        %>
                        <ul style="margin: auto" class="nav nav-tabs responsive-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#todos" role="tab"><b>Todos</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#autos" role="tab"><b>Autos</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#crossovers-suvs" role="tab"><b>Crossovers y suvs</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pick-ups" role="tab"><b>Pickups</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#comerciales" role="tab"><b>Comerciales</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#hibridos-electricos" role="tab"><b>Híbridos y Eléctricos</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#deportivos" role="tab"><b>Deportivos</b></a>
                            </li>
                        </ul>
                    </nav>
                    <div class="tab-content container">
                        <div class="tab-pane fade active in show" id="todos" role="tabpanel">
                            <div class="row text-center text-lg-left">
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
                                    } catch (Exception e) {
                                        System.out.println(e.getMessage());
                                    }
                                %>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="autos" role="tabpanel">
                            <div class="row text-center text-lg-left">
                                <%
                                    
                                %>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="crossovers-suvs" role="tabpanel">
                            <div class="row text-center text-lg-left">
                                <%
                                   
                                %>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="pick-ups" role="tabpanel">
                            <div class="row text-center text-lg-left">

                                <%
                                    
                                %>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="comerciales" role="tabpanel">
                            <div class="row text-center text-lg-left">

                                <%
                                    
                                %>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="hibridos-electricos" role="tabpanel">
                            <div class="row text-center text-lg-left">

                                <%
                                    
                                %>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="deportivos" role="tabpanel">
                            <div class="row text-center text-lg-left">

                                <%
                                    
                                %>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section style="padding-top: 0px; padding-bottom: 0px">
                <div id="cotizacion" class="bg-dark" style="width: 100%; padding-top: 150px; padding-bottom: 150px;">
                    <div class="container">
                        <label style="color: white"><h2 class="my-4 text-center text-lg-left"><b>Cotización</b></h2></label>
                        <form id="formcotizacion" class="form-inline">
                            <div style="padding-bottom: 15px" class="col-md-5">
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon"><img style="width: 15px" class="img-fluid" src="img/util/iconperson.png"></div>
                                    <input name="nombre" type="text" class="form-control" id="txtNombre" placeholder="*Nombre" required>
                                </div>
                            </div>
                            <div style="padding-bottom: 15px" class="col-md-7">
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon"><img style="width: 15px" class="img-fluid" src="img/util/iconperson.png"></div>
                                    <input name="apellido" type="text" class="form-control" id="txtApellido" placeholder="*Apellido" required>
                                </div>
                            </div>
                            <div style="padding-bottom: 15px" class="col-md-3">
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon"><img style="width: 15px" class="img-fluid" src="img/util/icontelephone.png"></div>
                                    <input name="telefono" type="tel" pattern="\d*" class="form-control" id="txtTelefono" placeholder="*Teléfono" required>
                                </div>
                            </div>
                            <div style="padding-bottom: 15px;" class="col-md-6">
                                <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                    <div class="input-group-addon">@</div>
                                    <input name="email" type="email" class="form-control" id="txtEmail" placeholder="*Email" required>
                                </div>
                            </div>
                            <div style="padding-bottom: 15px" class="col-md-3">
                                <select name="vehiculo" id="span_small" class="form-control select2-single select2-hidden-accessible" tabindex="-1" aria-hidden="true" required>
                                    <optgroup label="Vehiculo">
                                        <%
                                            PreparedStatement command2;
                                            ResultSet result2;

                                            String zona2 = request.getParameter("zone");

                                            try {
                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/car-agency?useSSL=false", "root", "4688");

                                                command2 = connection.prepareStatement("SELECT modelo FROM automovil where zona = ? ;");
                                                command2.setString(1, zona);
                                                result2 = command2.executeQuery();
                                                while (result2.next()) {
                                                    String modelo = result2.getString(1);
                                                    out.println("<option value='" + modelo + "'>" + modelo + "</option>");
                                                }
                                                
                                            } catch (Exception e) {
                                                System.out.println(e.getMessage());
                                            }
                                        %>
                                    </optgroup>
                                </select>
                            </div>
                            <div style="margin-top: 10px;" class="offset-5 col-2">
                                <button class="btn" onClick="enviarEmail()" type="button" >Enviar</button>
                            </div>
                        </form>

                    </div>
                </div>
                <div id="footer" style="background-color: white; padding-top: 60px; padding-bottom: 60px">
                    <div class="container">
                        <label class="title"><h2 class="my-4 text-center text-lg-left"><b>Contactanos en</b></h2></label>
                        <h5>Calle Lic. Carlos de La Madrid Béjar 891<br> Centro, 28000 Colima, Col.</h5>
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-twitter"></a>
                        <a href="#" class="fa fa-google"></a>
                    </div>
                </div>
            </section>
        </div>




        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="plugins/jQuery-rwdImageMaps-master/jquery.rwdImageMaps.min.js"></script>

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

        <script>
            function showZone(el) {
                let zone = document.getElementById('selectedZone');
                zone.value = el.alt;
                zone.style.display = 'block';
                document.getElementById('formzone').style.display = 'block';
            }
            $(document).ready(function (e) {
                $('img[usemap]').rwdImageMaps();
            });

            function IrAPrueba() {
                document.getElementById('formzone2').action = 'ListaVehiculos';
                document.getElementById('formzone2').method = 'POST';
                document.getElementById('formzone2').submit();
            }
            
            function enviarEmail() {
                document.getElementById('formcotizacion').action = 'email-enviado.jsp';
                document.getElementById('formcotizacion').method = 'POST';
                document.getElementById('formcotizacion').submit();
            }
        </script>


    </body>
</html>
