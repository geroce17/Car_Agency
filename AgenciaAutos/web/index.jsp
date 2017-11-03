<%-- 
    Document   : index
    Created on : 2/11/2017, 10:38:11 PM
    Author     : geroC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Hello, world!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
  </head>
  <body>
      
      <div class="container">
            
              <div id="menu">
                    <img id="logo" src="img/masterc.jpeg" alt="logoimg" align="left">
                    <nav class="navbar navbar-expand-md navbar-toggleable-md bg-dark navbar-dark">
                        
                        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        
                        <div id="navbarNav" class="collapse navbar-collapse">
                            
                            <ul class="navbar-nav col-md-12">
                                
                              <li class="nav-item active texto" align="center">
                                <a class="nav-link" href="#">Inicio<span class="sr-only">(current)</span></a>
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
          
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                  <div class="carousel-item active">
                    <img class="d-block img-fluid" src="img/Autos/NismoSentra.jpg" alt="First slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block img-fluid" src="img/Autos/xtrail.jpg" alt="Second slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block img-fluid" src="img/Autos/frontierNP300.jpg" alt="Third slide">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
            </div>
      </div>
      
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
      <script src="js/bootstrap.min.js"></script>
  </body>
</html>
