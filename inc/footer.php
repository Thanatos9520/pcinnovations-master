<?php 
//	include('modal-login.php');
//	include('modal.php');
require_once 'modal.php';
?>   

<style>
    h4, p {

}
    h4, h6{color:aliceblue}
</style>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <section class="index-link">
    <div style="height: 15px;"></div>
        <div class="container">
        <div class="row">
        <div class="col-md-3 col-xs-12 ">
  <div class="fb-page" data-href="https://www.facebook.com/PCInnovationsLA/" data-tabs="timeline" data-height="330px" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/PCInnovationsLA/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/PCInnovationsLA/">PC Innovations Latinoamérica</a></blockquote></div> 
     </div>    
      
<!--
            <div class="col-md-3 col-xs-12 ">
                 <div style="height: 20px;"></div>
                <div class="link-area">
                      <h4 class="text-uppercase">
                        <strong>Acerca de nostros</strong>
                      </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 70px;">
                    <P style="color: white">Somos la empresa número 1 en el mejor trato personal y con muy buenos precios en el mercado.</P>
                    <a href="#"><i class="fa fa-facebook" style="font-size:50px; color:#0a00ff;"></i></a>
                    <a href="#"><i class="fa fa-twitter" style="font-size:50px; color:#08e3ff; text-indent: 8px;"></i></a>
                    <a href="#"><i class="fa fa-linkedin" style="font-size:50px; color:#ededed;text-indent: 8px;"></i></a>
                    <a href="#"><i class="fa fa-whatsapp" style="font-size:50px; color:#00eb2d; text-indent: 8px;"></i></a>
                </div>
            </div>
-->
                    
                <div class="col-lg-3">
                    <div style="height: 20px;"></div>
                <div class="link-area">
                      <h4 class="text-uppercase">
                        <strong>Página Rápida</strong>
                      </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 85px;">
                   
                   <a class="col-xs-12 col-lg-12 alinear btn btn-danger btn-sm" href="index.php">Inicio</a>
                    
                    <div class="col-xs-12">
  <button class="btn btn-danger btn-sm dropdown-toggle alinear" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     Computadores
  </button>
  <div class="dropdown-menu">
  
                <a class="dropdown-item" href="pcgamer.php">Gaming</a>
                <a class="dropdown-item" href="kits.php">Combo / Kits</a>
                <a class="dropdown-item" href="hogar.php">Hogar / Oficina</a>
                <a class="dropdown-item" href="laptops.php">Laptops</a>
  </div>
</div>
                  <div class="col-xs-12">
  <button class="alinear btn btn-danger btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Componentes
  </button>
  <div class="dropdown-menu">
  
                <a class="dropdown-item" href="mobo.php">Tarjeta Madre</a>
                <a class="dropdown-item" href="ram.php">Memoria Ram</a>
                <a class="dropdown-item" href="gpu.php">Tarjeta de Video</a>
                <a class="dropdown-item" href="psu.php">Fuentes de Poder</a>
                <a class="dropdown-item" href="monitor.php">Monitores</a>
                <a class="dropdown-item" href="#">Enfriamiento</a>
                <a class="dropdown-item" href="case.php">Cases</a>
     
             
  </div>
</div>
                    <a class="btn btn-danger btn-sm alinear col-xs-12" href="contact.php">Contactenos</a>
                   <a class="btn btn-danger btn-sm alinear col-xs-12" href="about.php">Nosotros</a>          
                </div>
            </div>

            <div class="col-md-3 col-xs-12">
                <div style="height: 20px;"></div>
                <div class="link-area">
                        <h4 class="text-uppercase">
                        <strong>Mi Cuenta</strong>
                      </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 95px;">
                    <ul>
                     <?php
                          if(!$_SESSION['id']==""){
                                echo ' 
                                    
                                     <!-- Example split danger button -->
                               
                                     <a class="dropdown-item" href="#account" data-toggle="modal" style="color:white"><img src="svg/si-glyph-flower.svg"/ style="width:24px; height:24px;"> Mi Cuenta</a>
                                     <a class="dropdown-item" href="#profile" data-toggle="modal" style="color:white"><img src="svg/si-glyph-man-doctor.svg"/ style="width:24px; height:24px;"> Mi Perfil</a>
                                      <li id="cartme" style="cursor:pointer">
                                            <a class="nav-item nav-link" id="cart_control" title="Shopping Cart" data-toggle="popover" style="color:white"><img src="svg/si-glyph-trolley-2.svg"/ style="width:24px; height:24px;"> My Shopping Cart</a>
                                            </li>
                                  
                                 ';
                            }else{
                                echo ' 
                                       
                                             <a class="dropdown-item" href="#myModal" data-toggle="modal" style="color:white"><img src="svg/si-glyph-flower.svg"/ style="width:24px; height:24px;"> Mi Cuenta</a>
                                             <a class="dropdown-item" href="#myModal" data-toggle="modal" style="color:white"><img src="svg/si-glyph-man-doctor.svg"/ style="width:24px; height:24px;"> Mi Perfil</a>
                                            
                                            <a class="nav-item nav-link" id="cart_control" title="Shopping Cart" data-toggle="popover" style="color:white"><img src="svg/si-glyph-trolley-2.svg"/ style="width:24px; height:24px;"> My Shopping Cart</a>
                                          
                                 
                                 ';
                            }
                        ?>   
             
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div style="height: 20px;"></div>
                <div class="link-area">
                        <h4 class="text-uppercase">
                        <strong>Contactenos</strong>
                        </h4>
                    <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 90px;">
                    <ul>
                    <li><p style="color:white"><i class="fa fa-envelope-o text-white"></i> : pcinnovations2020@yahoo.com</p></li>
                    <li><p style="color:white"><i class="fa fa-address-book-o text-white"></i> : 8301-2524</p></li>
                    <li><p style="color:white"><i class="fa fa-phone text-white"></i> : 604-265-4794</p></li>
                    <li><p style="color:white"><i class="fa fa-compass text-white"></i> : Dirección Principal:  San josé Costa Rica Curridabat. </p></li>
                    <li><p style="color:white"><i class="fa fa-compass text-white"></i> : Dirección Específica: San josé Costa Rica Curridabat, Granadilla, Urbanización la Nopalera.</p></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="index-social">
    <div class="container">
    <div class="row index-social-link text-center">
            <p class="copy-c"><p>&copy; 2018 PCINNOVATIONS LATINOAMÉRICA</p>
        </div>
        </div>
</section>
 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.2';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>