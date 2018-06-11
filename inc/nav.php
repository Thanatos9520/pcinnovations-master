<?php 
    session_start(); 
    error_reporting(E_PARSE);
	include('modal.php');
?> 


   <link href="css/ihover.css" rel="stylesheet">
   <link href="css/footer.css" rel="stylesheet">
   <link href="css/nav.css" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet"> 
 
<link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/animate.css@3.5.2/animate.min.css"
  integrity="sha384-OHBBOqpYHNsIqQy8hL1U+8OXf9hH6QRxi0+EODezv82DfnZoV7qoHAZDwMwEJvSw"
  crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">
           <img src="img/Logo/Logotipo_White.png" href="index.php" width="30%;" class="animated bounceInLeft">
       </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" style="background-color:rgba(87, 240, 74, 0.3);">
           <span class="navbar-toggler-icon"></span>
       </button>

        <div class="collapse navbar-collapse flex-column align-items-end" id="navbarCollapse">
            <!-- navbar1 -->
            <div class="navbar-nav mb-lg-0">
               <h5 class="nav-item nav-link" href="#" style="color:#ffffff; margin-right:0px;"><i class="fa fa-phone text-white"></i> : 8301-2524</h5>
                <a class="nav-item nav-link" href="#" style="color:#fdfdfd;"><i class="fa fa-envelope-o"></i> pcinnovations2020@yahoo.com</a>
                <a class="nav-item nav-link" href="https://www.facebook.com/PCInnovationsLA/"><i class="fa fa-facebook fa-x5 text-white"></i></a>
                <a class="nav-item nav-link" href="#"><i class="fa fa-twitter text-white" ></i></a>
                
                <?php
                          if(!$_SESSION['id']==""){
                                echo ' 
                                    
                                     <!-- Example split danger button -->
                               
                                     <div class="">
                                     <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><li><i class="fa fa-user"></i>
        Mi cuenta
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
     
      <a class="dropdown-item" href="#account" data-toggle="modal"><img src="svg/si-glyph-flower.svg"/ style="width:24px; height:24px;"> My Account</a>
                                     <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#profile" data-toggle="modal"><img src="svg/si-glyph-man-doctor.svg"/ style="width:24px; height:24px;"> My Profile</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#logout" data-toggle="modal"><img src="svg/si-glyph-turn-off.svg"/ style="width:24px; height:24px;"> Logout</a>
            
         </div>
        </li></li>
                                           <h4><li id="cartme" style="cursor:pointer">
                                            <a class="nav-item nav-link" id="cart_control" title="Carrito de compras" data-toggle="popover"><i class="fa fa-shopping-cart fa-fw" id="cartir"></i></a>
                                            </li></h4>
                                   
                                    </div>
                                  
                                 ';
                            }else{
                                echo ' 
                                          <a class="nav-item nav-link" href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-user text-white"> Login</i></a>
                                          	<h4><li id="cartme" style="cursor:pointer">
                                            <a class="nav-item nav-link" id="cart_control" title="Carrito de compras" data-toggle="popover"><i class="fa fa-shopping-cart fa-fw" id="cartir"></i></a>
                                            </li></h4>
                                 ';
                            }
                        ?>
                      
            </div>
            <div id="Cont-Popover" style="display:none;">
            </div>

            <!-- navbar2 -->
            <ul class="navbar-nav mt-0">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">INICIO</a>
                </li>
                    <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">COMPUTADORAS</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="pcgamer.php"><i class="fa fa-gamepad fa-x3"></i> GAMING</a>
                             <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="kits.php"><i class="fa fa-gears fa-x3"></i> COMBO / KITS</a>
                             <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="hogar.php"><i class="fa fa-desktop fa-x3"></i> HOGAR / OFICINA</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="laptops.php"><i class="fa fa-laptop fa-x3"></i> LAPTOPS</a>
                             <div class="dropdown-divider"></div>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">COMPONENTES</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="mobo.php"><i class="fa fa-desktop fa-x3"></i> TARJETA MADRE</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="ram.php"><i class="fa fa-microchip fa-x3"></i> MEMORIA RAM</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="gpu.php"><i class="fa fa-film fa-x3"></i> TARJETAS DE VIDEO</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="psu.php"><i class="fa fa-flash fa-x3"></i> FUENTES DE PODER</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="HDD.php"><i class="fa fa-database fa-x3"></i> DISCOS DUROS</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="monitor.php"><i class="fa fa-television fa-x3"></i> MONITORES</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="cooler.php"><i class="fa fa-snowflake-o fa-x3"></i> ENFRIAMIENTO</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="case.php"><i class="fa fa-cube fa-x3"></i> CASES</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="fans.php"><i class="fa fa-cube fa-x3"></i> Fans</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#"><i class="fa fa-microchip fa-x3"></i> PROCESADORES</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="cpu-intel.php">INTEL</a></li>
              <li><a class="dropdown-item" href="cpu-amd.php">AMD</a></li>
            </ul>
                        </a>
                    </div>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="contact.php">CONTACTENOS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.php">NOSOTROS</a>
                </li>
          
                
            </ul>
        </div>
    </div>
</nav>
    <script src="js/eskju.jquery.scrollflow.min.js"></script>
    <script src="js/Drop.js"></script>

