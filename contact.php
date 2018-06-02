<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
      
      <link href="vendor/bootstrap/css/footer.css" rel="stylesheet">
    <title>PCINNOVATIONS</title>
    <?php include './inc/link.php'; ?>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
      
          <style>
     h4, p, li, h6, h1, h3, h5, label {
  font-family: Georgia, Cambria, Times, "Times New Roman";
}
      </style>
      
  </head>

  <body>

    <!-- Navigation -->
      <?php include './inc/nav.php'; ?>  
    <!-- Page Content -->
    <div class="container">
           <div style="height: 50px;"></div>
      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3 active animated shake">CONTACTO
        <small></small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">INICIO</a>
        </li>
        <li class="breadcrumb-item active">CONTACTO</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4 animated fadeInDown">
          <!-- Embedded Google Map -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62883.856739098!2d-84.06410630127736!3d9.913871584955364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8fa0e3bf9923854d%3A0x24b13fc6b916a2d5!2sSan+Jos%C3%A9%2C+Curridabat!5e0!3m2!1ses!2scr!4v1516845338249" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>" 
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3 class="animated bounce">DETALLES DE CONTACTO</h3>
            <h5>Dirección Principal:</h5>
          <p>
            Curridabat,  San José, <br> Costa Rica.
          </p> 
            <h5>Dirección Especifica:</h5>
          <p>
            Dirección Específica: San josé Costa Rica Curridabat, Granadilla, Urbanización la Nopalera.
          </p>
          <p>
            <abbr title="Phone">Teléfono</abbr>: 8301-2524 
              <br>
           
          </p>
          <p>
            <abbr title="Email">Email</abbr>:
            <a href="mailto:pcinnovations@gmail.com">pcinnovations2020@yahoo.com
            </a>
          </p>
          <p>
            <abbr title="Hours">Horario</abbr>: Lunes - Viernes: 8:00 AM a 5:00 PM
            <abbr title="Hours">Horario</abbr>: Sábados : 9:00 AM a 3:00 PM
          </p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row scrollflow -slide-right -opacity">
        <div class="col-lg-8 mb-4 ">
          <h3>Envíanos un mensaje</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Nombre completo:</label>
                <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Número teléfonico:</label>
                <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Dirección de correo:</label>
                <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Mensaje:</label>
                <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary animated infinite pulse">Enviar Mensaje</button>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
      <?php include './inc/footer.php'; ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
      
  </body>

</html>
