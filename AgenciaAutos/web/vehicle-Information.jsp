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
        <title>Información del vehiculo</title>
    </head>
    <body>
        
        <div id="menu">
            <div id="col" class="bg-dark" style="height: 56px; width: 100%; position: absolute"></div>
            <div class="container">
                <img id="logo" src="img/masterc.jpeg" alt="logoimg" align="left">
                <nav class="navbar navbar-expand-md navbar-toggleable-md bg-dark navbar-dark">
                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div id="navbarNav" class="collapse navbar-collapse">

                        <ul class="navbar-nav col-md-12">

                            <li class="nav-item active texto" align="center">
                                <a class="nav-link" href="index.jsp">Inicio<span class="sr-only">(current)</span></a>
                            </li>

                            <li class="nav-item texto" align="center">
                                <a class="nav-link" href="#">Vehiculos</a>
                            </li>

                            <li class="nav-item texto" align="center">
                                <a class="nav-link" href="#">Cotización Express</a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        
        <div id="col" class="bg-dark" style="height: 56px; width: 100%; position: absolute"></div>
        
        <div id="divImage">
            <img src="img/Autos/versa.jpg">
        </div>
        <div class="container">
            
            <div style="padding-top: 35px">
                <h2 class="subText">Atributos</h2>
                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">Modelo</label>
                    <div class="col-10">
                        <input class="form-control" type="text" value="Aqui iria la informacion si tuviera" id="example-text-input" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">No. puertas</label>
                    <div class="col-10">
                        <input class="form-control" type="text" value="Aqui iria la informacion si tuviera" id="example-text-input" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">Km/Lt</label>
                    <div class="col-10">
                        <input class="form-control" type="text" value="Aqui iria la informacion si tuviera" id="example-text-input" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-2 col-form-label">campo todo chido</label>
                    <div class="col-10">
                        <input class="form-control" type="text" value="Aqui iria la informacion si tuviera" id="example-text-input" readonly>
                    </div>
                </div>
            </div>
            
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
