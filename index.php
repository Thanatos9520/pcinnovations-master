<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
      
    <title>PCINNOVATIONS</title>
 
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/footer.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--?php include './inc/link.php'; ?-->
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/main2.css" rel="stylesheet">
    <link href="css/ihover.css" rel="stylesheet">
      <link href="css/resCarousel.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/animate.css@3.5.2/animate.min.css">
  
</head>
<body>
	
	<!-- End WOWSlider.com BODY section -->

          <?php include './inc/nav.php'; ?> 
	        <?php include './slider.php'; ?> 

    <header>
  <div style="height: 70px;"></div>
 
      
    </header>
    <!-- Page Content -->
     
    <hr>
     

<div class="contenedor scrollflow -pop -opacity">
        
<div class="post">

    <div class="ih-item square colored effect6 from_top_and_bottom"><a href="products.php?cat=1">
        <div class="img"><img src="img/Main/Mobo.png" style="height:185px;" alt="img"></div>
        <div class="info">
          <h3>Tarjeta Madre</h3>

        </div></a></div>
  
</div>
<div class="post">
  
    <div class="ih-item square colored effect6 from_top_and_bottom"><a href="products.php?cat=6">
        <div class="img"><img src="img/Main/GPU.jpg" style="height:185px;" alt="img"></div>
        <div class="info">
          <h3>Tarjeta de Video</h3>

        </div></a></div>

  </div>
<div class="post"> 
   
    <div class="ih-item square colored effect6 from_top_and_bottom"><a href="products.php?cat=4">
        <div class="img"><img src="img/Main/Monitores.jpg" style="height:185px;" alt="img"></div>
        <div class="info">
          <h3>Monitores</h3>

        </div></a></div>
 
  </div>
  <div class="post"> 
  
    <div class="ih-item square colored effect6 from_top_and_bottom"><a href="products.php?cat=7">
        <div class="img"><img src="img/Main/kits.jpg" style="height:185px;" alt="img"></div>
        <div class="info">
          <h3>Combo/Kits</h3>

        </div></a></div>

  </div>  
  <div class="post"> 

    <div class="ih-item square colored effect6 from_top_and_bottom"><a href="products.php?cat=5">
        <div class="img"><img src="img/Main/ram.jpg" style="height:185px;" alt="img"></div>
        <div class="info">
          <h3>Memoria Ram</h3>

        </div></a></div>
   
  </div> 
  <div class="post"> 
    <div class="ih-item square colored effect6 from_top_and_bottom"><a href="products.php?cat=8">
        <div class="img"><img src="img/Main/combo.jpg" style="height:185px;" alt="img"></div>
        <div class="info">
          <h3>PC Gamer</h3>
        </div></a></div>
  
  </div>

      </div>

      
      
    <div class="container">
    
        <div style="height:60px;" ></div>
        
          <!-- Marketing Icons Section -->

      <!-- Portfolio Section -->
      
      <!-- Features Section --> 
        
 <div class="row scrollflow -pop -opacity">
        <div class="col-lg-6 col-md-6 col-xs-12">
          <h2>Conoce más sobre Pcinnovations Latinoamérica</h2>
          <h4 style="color:black;" class="scrollflow -pop -opacity">Nostros pensamos en nuestros clientes</h4>
          <h6>Por esa razón ofrecemos:</h6>
            <ul>
            <li>Confianza</li>
            <li>Responsabilidad</li>
            <li>Credibilidad</li>
            <li>Compromiso</li>
          </ul>
          <p>Estamos 100% comprometidos con nuestro clientes para lograr la mayor satisfacción posible, incluyendo la mejor calidad de productos y los mejores precios del mercado!</p>
        </div>
        <div class="col-lg-6  scrollflow -pop -opacity">
          <iframe height="100%" width="100%" src="https://www.youtube.com/embed/AS3ds9Skggo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
      </div>
      
      </div>
      <!-- /.row -->
        
            <hr>
        
       <div class="container">

       
      <hr>

      <!-- Call to Action Section -->
      <div class="row mb-4 scrollflow -pop -opacity">
        <div class="col-md-8">
          <p>Si buscar cotizar la computadora a tu medida o que te asesoremos para buscar los mejores componentes ponte en contacto con nosotros!</p>
        </div>
        <div class="col-md-4">
          <a class="btn btn-lg btn-success btn-block animated infinite pulse" href="contact.php" style=" box-shadow: 1px 2px 5px #000000; ">Contactar!</a>
        </div>
      </div>
 </div>
    <!-- /.container -->
 
    <!-- Footer -->
      
      <?php include './inc/footer.php'; ?>  

    <script src="js/resCarousel.js"></script>
    <script src="js/eskju.jquery.scrollflow.min.js"></script>
   
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script>
        //ResCarouselCustom();
        var pageRefresh = true;

        function ResCarouselCustom() {
            var items = $("#dItems").val(),
                slide = $("#dSlide").val(),
                speed = $("#dSpeed").val(),
                interval = $("#dInterval").val()

            var itemsD = "data-items=\"" + items + "\"",
                slideD = "data-slide=\"" + slide + "\"",
                speedD = "data-speed=\"" + speed + "\"",
                intervalD = "data-interval=\"" + interval + "\"";


            var atts = "";
            atts += items != "" ? itemsD + " " : "";
            atts += slide != "" ? slideD + " " : "";
            atts += speed != "" ? speedD + " " : "";
            atts += interval != "" ? intervalD + " " : ""

            //console.log(atts);

            var dat = "";
            dat += '<h4 >' + atts + '</h4>'
            dat += '<div class=\"resCarousel\" ' + atts + '>'
            dat += '<div class="resCarousel-inner">'
            for (var i = 1; i <= 14; i++) {
                dat += '<div class=\"item\"><div><h1>' + i + '</h1></div></div>'
            }
            dat += '</div>'
            dat += '<button class=\'btn btn-default leftRs\'><i class=\"fa fa-fw fa-angle-left\"></i></button>'
            dat += '<button class=\'btn btn-default rightRs\'><i class=\"fa fa-fw fa-angle-right\"></i></button>    </div>'
            console.log(dat);
            $("#customRes").html(null).append(dat);

            if (!pageRefresh) {
                ResCarouselSize();
            } else {
                pageRefresh = false;
            }
            //ResCarouselSlide();
        }

        $("#eventLoad").on('ResCarouselLoad', function() {
            //console.log("triggered");
            var dat = "";
            var lenghtI = $(this).find(".item").length;
            if (lenghtI <= 30) {
                for (var i = lenghtI; i <= lenghtI + 10; i++) {
                    dat += '<div class="item"><div class="tile"><div><h1>' + (i + 1) + '</h1></div><h3>Title</h3><p>content</p></div></div>'
                }
                $(this).append(dat);
            }
        });
    </script>

  </body>
</html
