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
        <%
            ResultSet vehiculo = (ResultSet) session.getAttribute("zona");
            String modelo = "";
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
                            <a class="nav-link js-scroll-trigger" href="index.jsp" target="_self">Selecciona tu zona</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <form id="formcar">

            <section style="padding-bottom: 0px">
                <div style="background-color: white; padding-bottom: 60px">
                    <div id="ingresaDatos" class="col-md-12">
                        <div class="container">
                            <label for="span_small" class="control-label textPruebaManejo"><h2 style="color: white" align="center">Agenda tu prueba!</h2></label>
                            <div id="seleccionaAuto" class="col-md-12">
                                <h2 style="color: white"><b>Elige tu vehiculo</b></h2>
                                <div class="row">
                                    <div class="col-md-11 form-group">
                                        <select id="span_small" name="selectedvehicle" class="form-control select2-single select2-hidden-accessible" onChange="changeS()" required>
                                            <option value="">Elige un vehiculo</option>
                                            <optgroup label="Modelo">
                                            <%
                                                while (vehiculo.next()) {
                                                    modelo = vehiculo.getString(1);
                                                    out.println("<option value='" + modelo + "'>" + modelo + "</option>");
                                                }
                                            %>
                                            </optgroup>
                                        </select>

                                    </div>
                                    <div class="col-md-1">
                                        <input disabled id="verdetalles" class="btn btn-outline-success my-2 my-sm-0" type="button" value="ver" onclick="VerAuto()">
                                    </div>
                                </div>
                            </div>
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

            function VerAuto() {
                document.getElementById('formcar').action = 'InformacionVehiculo';
                document.getElementById('formcar').method = 'POST';
                document.getElementById('formcar').submit();
            }

            function changeS() {
                let x = document.getElementById('span_small');
                if (x.options[x.selectedIndex].text !== 'Elige un vehiculo') {
                    document.getElementById('verdetalles').disabled = false;
                } else {
                    if (x.options[x.selectedIndex].text === 'Elige un vehiculo') {
                        document.getElementById('verdetalles').disabled = true;
                    }
                }
            }
        </script>



    </body>
</html>
