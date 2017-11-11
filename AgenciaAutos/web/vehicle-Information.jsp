<%-- 
    Document   : vehicle-Information
    Created on : Nov 5, 2017, 7:16:51 PM
    Author     : gero
--%>

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

        <nav id="mainNav" class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container-fluid">
                <img id="logo" class="img-fluid" src="img/masterc.jpeg" alt="logoimg" align="left">
                <a id="tituloPrincipal" class="navbar-brand js-scroll-trigger" href="index.jsp" target="_self">Agencia de vehiculos</a>
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
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>

        <div id="col" class="bg-dark" style="height: 56px; width: 100%; position: absolute"></div>



        <div id="divImage">
            <img id="divImage" class="img-fluid" src="img/Autos/versa.jpg">
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
                            <div class="col-lg-3 col-md-6 text-center">
                                <div class="service-box mt-5 mx-auto">
                                    <h3 class="mb-3">Modelo</h3>
                                    <p class="text-muted mb-0">a información es un conjunto organizado de datos procesados, 
                                        que constituyen un mensaje que cambia el estado de conocimiento del sujeto o sistema que recibe dicho mensaje. 
                                        Existen diversos enfoques para el estudio de la información: Wikipedia</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 text-center">
                                <div class="service-box mt-5 mx-auto">
                                    <h3 class="mb-3">Cilindraje</h3>
                                    <p class="text-muted mb-0">a información es un conjunto organizado de datos procesados, 
                                        que constituyen un mensaje que cambia el estado de conocimiento del sujeto o sistema que recibe dicho mensaje. 
                                        Existen diversos enfoques para el estudio de la información: Wikipedia</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 text-center">
                                <div class="service-box mt-5 mx-auto">
                                    <h3 class="mb-3">Rendimiento</h3>
                                    <p class="text-muted mb-0">a información es un conjunto organizado de datos procesados, 
                                        que constituyen un mensaje que cambia el estado de conocimiento del sujeto o sistema que recibe dicho mensaje. 
                                        Existen diversos enfoques para el estudio de la información: Wikipedia</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 text-center">
                                <div class="service-box mt-5 mx-auto">
                                    <h3 class="mb-3">No. Puertas</h3>
                                    <p class="text-muted mb-0">a información es un conjunto organizado de datos procesados, 
                                        que constituyen un mensaje que cambia el estado de conocimiento del sujeto o sistema que recibe dicho mensaje. 
                                        Existen diversos enfoques para el estudio de la información: Wikipedia</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 text-center">
                                <div class="service-box mt-5 mx-auto">
                                    <h3 class="mb-3">Llantas</h3>
                                    <p class="text-muted mb-0">a información es un conjunto organizado de datos procesados, 
                                        que constituyen un mensaje que cambia el estado de conocimiento del sujeto o sistema que recibe dicho mensaje. 
                                        Existen diversos enfoques para el estudio de la información: Wikipedia</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>
        
        <section style="width: 100%; background-color: white; padding: 0px !important; margin-top: 150px;">
            <div style="padding-top: 100px;" class="container">
                <div class="container">
                    <div class="row">
                        <div id="servicios" class="col-lg-12 text-center">
                            <h2 class="section-heading">Servicios</h2>
                            <hr class="my-4">
                        </div>
                    </div>
                </div>
                <section class="p-0" id="portfolio">
                    <div class="container-fluid p-0">
                        <div class="justify-content-md-center row no-gutters popup-gallery">
                            <div class="col-lg-4 col-sm-6">
                                <a class="portfolio-box" href="img/Util/cambio-ruedas.jpg">
                                    <img class="img-fluid" src="img/Util/cambio-ruedas.jpg" alt="">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-category text-faded">
                                                Cambio de llantas
                                            </div>
                                            <div class="project-name">
                                                $Precio
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <a class="portfolio-box" href="img/Util/oil-cha.jpg">
                                    <img class="img-fluid" src="img/Util/oil-cha.jpg" alt="">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-category text-faded">
                                                Cambio de aceite
                                            </div>
                                            <div class="project-name">
                                                $Precio
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <a class="portfolio-box" href="img/Util/coche-lavar.jpg">
                                    <img class="img-fluid" src="img/Util/coche-lavar.jpg" alt="">
                                    <div class="portfolio-box-caption">
                                        <div class="portfolio-box-caption-content">
                                            <div class="project-category text-faded">
                                                Lavado de coche
                                            </div>
                                            <div class="project-name">
                                                $Precio
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div id="footer" style="padding-top: 60px; padding-bottom: 60px" class="bg-dark">
                <div class="container">
                    <label class="title"><h2 class="my-4 text-center text-lg-left"><b>Contactanos en</b></h2></label>
                    <h5 style="color: white">Calle Lic. Carlos de La Madrid Béjar 891<br> Centro, 28000 Colima, Col.</h5>
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                </div>
            </div>
        </section>
        
        <script>
            window.onscroll = function() {myFunction();};
            
            function myFunction() {
                if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
                    document.getElementById('mainNav').className = 'navbar navbar-expand-lg navbar-light fixed-top navbar-shrink';
                }
                else
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
