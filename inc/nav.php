<?php 
    session_start(); 
    error_reporting(E_PARSE);
    include('modal.php');
  
?> 
   <link href="css/ihover.css" rel="stylesheet">
   <link href="css/footer.css" rel="stylesheet">
   <link href="css/nav.css" rel="stylesheet">
 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/animate.css@3.5.2/animate.min.css">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"> 
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

<style>
font-family: 'Raleway', sans-serif;
</style>

<nav class="navbar navbar-expand bg-dark navbar-dark">
   
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" style="background-color:rgba(87, 240, 74, 0.3);">
           <span class="fa fa-sort-desc"></span>
       </button>
        <div style="height: 15px;" class="collapse navbar-collapse" id="navbarCollapse1">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <h5 class="nav-item nav-link" href="#" style="color:#ffffff; margin-right:0px;"><i class="fa fa-phone text-white"></i> : +506 8301-2524</h5>
                </li>
                <li class="nav-item">
                    <a id="item1" class="nav-item nav-link" href="#" style="color:#fdfdfd;"><i class="fa fa-envelope-o"></i> pcinnovations2020@yahoo.com</a>
                </li>
                <li class="nav-item">
                    <a id="item1" class="nav-item nav-link" href="https://www.facebook.com/PCInnovationsLA/"><i class="fa fa-facebook fa-x5 text-white"></i></a>
                </li>
                <li class="nav-item">
                    <a id="item1" class="nav-item nav-link" href="#"><i class="fa fa-twitter text-white" ></i></a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <?php
                          if(!$_SESSION['id']==""):
                                echo ' 
                                     <!-- Example split danger button -->
                               
                <div class="">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <li>
                        <i class="fa fa-user"></i>Mi cuenta
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    
                            <a class="dropdown-item" href="#account" data-toggle="modal"><img src="svg/si-glyph-flower.svg"/ style="width:24px; height:24px;">
                            My Account
                            </a>
                            <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#profile" data-toggle="modal"><img src="svg/si-glyph-man-doctor.svg"/ style="width:24px; height:24px;">
                                My Profile
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#logout" data-toggle="modal"><img src="svg/si-glyph-turn-off.svg"/ style="width:24px; height:24px;"> Logout
                                </a>
                            
                        </div>
                    </li>

                        </li>
                        <h4>
                            <li id="cartme" style="cursor:pointer">
                            <a class="nav-item nav-link" id="cart_control" title="Carrito de compras" data-toggle="popover">
                                <i class="fa fa-shopping-cart fa-fw" id="cartir"></i>
                            </a>
                            </li>
                        </h4>                   
                </div>
                                 ';
                            else:
                                echo ' 
                                  <a class="nav-item nav-link" href="#" data-toggle="modal" data-target="#myModal">
                                    <i class="fa fa-user text-white"> Login</i>
                                  </a>
                                  <h4>
                                  <li id="cartme" style="cursor:pointer">
                                    <a  class="nav-item nav-link" id="cart_control" title="Carrito de compras" data-toggle="popover">
                                      <i class="fa fa-shopping-cart fa-fw" id="cartir"></i>
                                    </a>
                                  </li>
                                  </h4>
                                 ';
                            endif;
                        ?>
                         </ul>
                 </div>
        </div>
</nav>

<!-- end nav 1-->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
           <img id="logo" src="img/Logo/Logotipo 1.png" href="index.php" width="30%; !important" class="animated bounceInLeft">
       </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" style="background-color:rgba(87, 240, 74, 0.3);">
           <span class="fa fa-sort-desc"></span>
       </button>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <!-- navbar1 -->
  
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">INICIO</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"aria-expanded="false">
                    COMPUTADORAS
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="pcgamer.php">
                          GAMING
                        </a>
                       <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="kits.php">
                          COMBO / KITS
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="hogar.php">
                          HOGAR / OFICINA
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="laptops.php">
                         LAPTOPS
                        </a>
                        <div class="dropdown-divider"></div>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    COMPONENTES
                    </a>

                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li class="nav-item">                        
                            <a class="dropdown-item" href="mobo.php">
                                 TARJETA MADRE
                            </a>
                        </li>
                        <div class="dropdown-divider"></div>
                        <li class="nav-item">
                            <a class="dropdown-item" href="ram.php">
                                 MEMORIA RAM
                            </a>
                        </li>
                        <div class="dropdown-divider"></div>
                        <li class="nav-item">
                            <a class="dropdown-item" href="gpu.php">
                                 TARJETAS DE VIDEO
                            </a>
                        </li>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="psu.php">
                                 FUENTES DE PODER
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="HDD.php">
                                 DISCOS DUROS
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="monitor.php">
                                 MONITORES
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="cooler.php">
                                 ENFRIAMIENTO
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="case.php">
                                 CASES
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">
                                 Fans
                        </a>
                        <div class="dropdown-divider"></div>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" href="#">
                                <i class="fa fa-microchip fa-x3"></i> PROCESADORES
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="nav-item">
                                    <a class="dropdown-item" href="cpu-intel.php">INTEL</a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item" href="cpu-amd.php">AMD</a>
                                </li>
                            </ul>
                         </li>
                    </ul>
                 </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PERIFÉRICOS</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="teclado.php"><i></i>TECLADOS</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="mouse.php"><i></i> MOUSE</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="mouse-teclado.php"><i></i> COMBO TECLADO Y MOUSE</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="headset.php"><i></i> HEADSET</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="mousepad.php"><i></i> MOUSEPAD</a>
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
   <div id="Cont-Popover" style="display:none;">
            </div>
    <script src="js/eskju.jquery.scrollflow.min.js"></script>
<script>
    $('.dropdown-menu a.dropdown-toggle').on('click', function(e) { // desencadena el evento sobre estas clases
  if (!$(this).next().hasClass('show')) { // si es mientras no sea apunte a un siguiente 
    $(this).parents('.dropdown-menu').first().find('.show').removeClass("show"); 
  }
  var $subMenu = $(this).next(".dropdown-menu"); // hacemos la referencia al sisguiente
  $subMenu.toggleClass('show'); // mostramos el sigiente


  $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
    $('.dropdown-submenu .show').removeClass("show");
  });

  return false;
});
    
    $(document).ready(function(){
  $("#Cont-Popover").load("PopOver.php");
    $('[data-toggle="popover"]').popover({
      html:true,
      content: function(){
        return $("#Cont-Popover").html();
      }
    });
});
</script>
