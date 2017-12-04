<%--
    Document   : pruebaManejo
    Created on : Nov 7, 2017, 7:53:19 AM
    Author     : gero
--%>

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
        <title>Agenda tu prueba de manejo</title>
    </head>
    <body>

        <nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container-fluid">
                <img id="logo" class="img-fluid" src="img/logoc.png" alt="logoimg" align="left">
                <a id="tituloPrincipal" class="navbar-brand js-scroll-trigger" href="index.jsp" target="_self">Get a Car</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div align="right" class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto navbar-right">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index.jsp" target="_self">Selecciona tu zona</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#toauto">Elige tu vehiculo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#ingresaDatos">Ingresa tus datos</a>
                        </li>
                    </ul>
                    <form action="Busqueda" method="post" class="form-inline my-2 my-lg-0">
                        <input name='name' class='form-control mr-sm-2' type='text' placeholder='Modelo' required>
                        <button class='btn btn-outline-success my-2 my-sm-0' type='submit'>Buscar</button>
                    </form>
                </div>
            </div>
        </nav>

        <form id="formcar">
            <header class="masthead text-white d-flex backgrounddark">

                <div style="margin: auto" class="container">

                    <div id="toauto">
                        <div class="container">

                            <div style="padding-bottom: 35px" class="row">

                                <div id="seleccionaAuto" class="col-md-12">
                                    <h2 style="color: white"><b>Elige tu vehiculo</b></h2>
                                    <div class="row">
                                        <div class="col-md-11">
                                            <select name="SelectVehicle" id="span_small" class="form-control select2-single select2-hidden-accessible" aria-hidden="true" required>
                                                <option value="">Elige un vehiculo</option>
                                                <%
                                                    ResultSet vehiculo = (ResultSet) session.getAttribute("zona");
                                                    while (vehiculo.next()) {
                                                        out.println("<option style='font-weight: bolder' value='" + vehiculo.getString(1) + "'>" + vehiculo.getString(1) + "</option>");
                                                    }
                                                %>
                                                
                                            </select>
                                        </div>
                                        <div class="col-md-1">
                                            <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="ver">
                                        </div>
                                    </div>

                                    <div id="divSelectedCar" class="container">
                                        <div class="row">
                                            <div id="tablecol" class="col">
                                                <table class="table table-bordered table-dark table-hover">
                                                    <tbody>
                                                        <tr>
                                                            <td><b>Modelo: </b></td>
                                                            <td>sin valor</td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Cilindraje: </b></td>
                                                            <td>sin valor</td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Rendimiento: </b></td>
                                                            <td>sin valor</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div id="carSelectedImage" class="col-12 col-sm-12 col-lg-8">
                                                <img class="img-fluid" src="img/Autos/versa.jpg">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

            </header>

            <!--<section style="padding-top: 0px">
                <div id="divAgenda" class="container">
    
    
                    <label  for="span_small" class="control-label textPruebaManejo"><h2 align="center" style="color: white;">Selecciona una zona del mapa</h2></label>
                    <img class="img-fluid" src="img/util/zonemap.png" alt="zone map" usemap="#mexicomap">
    
                    <map name="mexicomap" id="mexicomap">
                        <area onclick="showZone(this)"  alt="Zona Norte" title="northzone" href="#zone" shape="poly" coords="563,618,587,606,594,592,553,532,510,430,447,327,381,227,369,187,368,160,361,134,361,110,399,134,421,149,441,160,442,177,452,211,471,251,465,264,482,267,522,333,549,346,570,383,587,407,606,424,600,455,602,471,631,485,650,501,664,524,690,543,704,559,719,577,728,588,737,605,752,623,763,635,779,642,778,646,787,640,793,631,794,618,818,624,823,637,837,649,851,641,862,614,878,581,881,560,906,545,943,538,935,523,937,512,953,509,969,506,984,515,1004,525,1015,533,1025,537,1032,531,1027,516,1030,505,1052,503,1048,490,1025,468,1012,444,1025,425,1037,418,1029,395,1031,385,1047,361,1065,365,1067,355,1016,277,997,254,974,253,950,248,930,261,925,274,927,283,918,286,900,296,876,282,854,266,837,230,821,198,800,183,776,158,756,140,681,138,671,159,644,162,543,156,374,77,373,64,261,65,274,99,283,132,295,155,304,188,310,213,327,237,346,248,358,265,371,279,383,311,369,328,336,331,384,382,404,392,425,398,445,421,469,453,470,481,464,490,462,505,462,520,493,530,519,547,530,563,548,579" />
                        <area onclick="showZone(this)" alt="Zona Centro" title="centerzone" href="#zone" shape="poly" coords="778,655,792,639,796,622,816,634,825,639,843,645,851,637,859,606,886,548,909,541,931,543,946,542,937,517,962,506,1020,534,1029,528,1024,508,1030,497,1049,499,1053,494,1009,438,1037,398,1028,391,1045,378,1057,360,1071,364,1085,375,1089,397,1097,421,1113,438,1150,452,1176,454,1184,459,1202,455,1204,463,1198,478,1196,493,1187,505,1180,529,1179,556,1178,567,1180,594,1178,615,1174,649,1145,677,1145,648,1161,649,1143,688,1146,709,1160,716,1153,738,1145,751,1161,752,1171,748,1166,775,1158,788,1175,797,1191,814,1173,824,1162,826,1139,811,1137,839,1137,851,1139,862,1121,872,1135,887,1152,895,1162,918,1173,940,1150,976,1143,975,1123,967,1092,963,1056,946,1035,938,1021,938,986,912,972,892,958,898,884,869,872,851,861,843,845,832,819,820,789,790,777,760,781,753,797,750,798,742,788,742,799,726,799,703" />
                        <area onclick="showZone(this)" alt="Zona Sur" title="southzone" href="#zone" shape="poly" coords="1144,976,1158,968,1166,962,1173,944,1158,926,1157,910,1151,900,1151,893,1137,890,1127,882,1119,872,1131,864,1140,862,1138,854,1135,842,1139,828,1139,815,1140,808,1148,813,1154,822,1162,828,1168,823,1176,822,1180,818,1194,814,1184,806,1178,799,1169,796,1160,798,1159,788,1160,778,1165,773,1164,765,1156,764,1164,758,1167,754,1172,745,1174,739,1162,746,1150,757,1145,760,1143,750,1149,742,1155,737,1161,726,1161,718,1156,713,1148,713,1146,707,1146,699,1139,691,1145,684,1144,675,1149,662,1146,654,1141,650,1151,646,1158,644,1161,650,1171,654,1175,656,1178,660,1181,668,1188,677,1196,690,1202,711,1207,734,1224,765,1233,762,1252,794,1273,827,1310,844,1345,860,1360,871,1394,859,1458,838,1518,819,1543,786,1554,747,1549,724,1560,699,1649,664,1716,654,1735,663,1736,688,1734,697,1738,706,1737,723,1732,730,1719,720,1710,732,1710,750,1712,766,1698,844,1683,829,1682,812,1654,852,1635,874,1541,875,1538,910,1520,913,1546,931,1576,955,1576,973,1514,975,1486,1022,1494,1030,1484,1062,1386,986,1324,978,1267,1011,1194,1004" />
                    </map>
    
                    <div id="zone" align="center" class="bg-dark">
                        <h2 style="color: white" id="selectedZone"></h2>
                    </div>
                </div>
            </section>-->



            <section style="padding-bottom: 0px">
                <div style="background-color: white; padding-bottom: 60px">

                    <div class="container">
                        <div id="ingresaDatos" class="col-md-12">
                            <label for="span_small" class="control-label textPruebaManejo"><h2 style="color: white" align="center">Ingresa tus datos</h2></label>
                            <div style="padding-top: 35px">
                                <div class="form-group row">
                                    <label for="example-text-input" class="offset-0 col-12 offset-md-2 col-md-2 col-form-label">*Nombre</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input class="form-control" type="text" value="" id="example-text-input" name="name" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-search-input" class="offset-0 col-12 offset-md-2 col-md-2 col-form-label">*Apellido paterno</label>
                                    <div class="col-md-6 col-sm-12">
                                        <input class="form-control" type="text" value="" id="example-search-input" name="lastname" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-email-input" class="offset-0 col-12 offset-md-2 col-md-2 col-form-label">*Apellido materno</label>
                                    <div class="col-md-6 col-sm-12">
                                        <input class="form-control" type="text" value="" id="example-email-input" name="lastname2" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-url-input" class="offset-0 col-12 offset-md-2 col-md-2 col-form-label">*Correo electrónico</label>
                                    <div class="col-md-7 col-sm-12">
                                        <input class="form-control" type="email" value="" id="example-url-input" name="emailp" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-tel-input" class="offset-0 col-12 offset-md-2 col-md-2 col-form-label">*Teléfono</label>
                                    <div class="col-md-7 col-sm-12">
                                        <input class="form-control" type="tel" value="" id="example-tel-input" name="phone" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-password-input" class="offset-0 col-12 offset-md-2 col-md-2 col-form-label">Celular</label>
                                    <div class="col-md-7 col-sm-12">
                                        <input class="form-control" type="tel" value="" id="example-password-input" name="cel" required>
                                    </div>
                                </div>
                                <div style="padding-top: 5px;" align="center">
                                    <button class="btn btn-primary" onclick="validaEmail()" >Agendar prueba de manejo</button>
                                </div>
                            </div>
                        </div> 
                    </div>

                </div>

            </section>
        </form>


        <div id="footer" style="padding-top: 60px; padding-bottom: 60px" class="bg-dark">
            <div class="container">
                <label class="title"><h2 class="my-4 text-center text-lg-left"><b>Contactanos en</b></h2></label>
                <h5 style="color: white">Calle Lic. Carlos de La Madrid Béjar 891<br> Centro, 28000 Colima, Col.</h5>
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-google"></a>
            </div>
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
                document.getElementById('selectedZone').innerHTML = 'Haz seleccionado: ' + el.alt;
            }
            $(document).ready(function (e) {
                $('img[usemap]').rwdImageMaps();
            });

            function validaEmail() {
                document.getElementById('formcar').action = 'prueba-solicitada.jsp';
                document.getElementById('formcar').method = 'POST';
                document.getElementById('formcar').submit();
            }

            function validaAuto() {
                document.getElementById('formcar').action = '';
                document.getElementById('formcar').method = 'POST';
                document.getElementById('formcar').submit();
            }
        </script>



    </body>
</html>
