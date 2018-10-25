<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="vendor/bootstrap/css/footer.css" rel="stylesheet">
    <title>PCINNOVATION</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/card.css" rel="stylesheet">
</head>

<style>
    font-family: "Raleway";
    
    </style>

<body>

    <!-- Navigation -->
    <?php include './inc/nav.php';
    include('conn.php');
     $query=mysqli_query($conn,"select * from product where categoryid = 5 order by product_price");  
      $nro_reg=mysqli_num_rows($query); 
     $Total = $nro_reg;
      

      
    $reg_por_pagina=9; 
      
    $nro_pagina=$_GET['num']; 
    
    if(is_numeric($nro_pagina))
        $inicio=($nro_pagina-1)*$reg_por_pagina;
        else 
        $inicio=0;
        
       $query=mysqli_query($conn,"select * from product where categoryid = 5 order by product_price limit $inicio,$reg_por_pagina");  
      
      $can_paginas=ceil($nro_reg / $reg_por_pagina);
    ?>
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->

        
            <div style="height: 30px;"></div>
          <div class="row">
        <div class="col-lg-4">
           <h1 style=" border-style: double; border-color:#1d1d7e; ">Memoria Ram</h1>
        </div>
        </div>
               <div class="row">
        <div class="col-lg-12">
            <img src="img/Banner_Productos/ram.jpg" style="width:100%;">
        </div>
        </div>
<div style="height: 50px;"></div>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a style="color: #000;" href="index.php">Inicio</a></li>
                <li class="breadcrumb-item active">Memoria Ram</li>
            </ol>  
    <a style="color: gray" >Disponemos de <?php echo $Total ?> productos</a>

		
    <div id="A_Equipment" class="flex-container">
      
    		<?php
    		while($row=mysqli_fetch_array($query)){
                
             $id=$row['productid'];
             $name=$row['product_name'];
             $price=$row['product_price'];
             $photo=$row['photo'];
    			?>
                                
                  <!-- colored -->
                  <div class="ih-item square colored effect4" >
                      <a id="enviar">
                          <div class="img">
                            <img src="POS/<?php if (empty($photo)){echo " upload/noimage.jpg ";}else{echo $photo;} ?>" alt="img">
                          </div>

                          <div class="info">
                              <h3><?php echo $name; ?></h3>
                              <h4>₡ <?php echo $price; ?></h4>
                              <form action="details.php?id=<?php echo $id; ?>" method="post" name="Detalle">
                                <input name="id_txt" type="hidden" value="<?php echo $id; ?>" />
                                <input name="Detalles" type="submit" value="Detalles" class="btn btn-info" />
                              </form>
                          </div>
                      </a>
                  </div>
                      <!-- end colored -->
          <?php
            }
          ?>
          </div>
        
        <div style="height: 50px;"></div>
      <!-- Pagination -->
      <div align="center">
      <?php
       if($nro_pagina>1){
          echo "<a style='color:black;' href='ram.php?num=".($nro_pagina-1)."'> Anterior ></a> ";
       }
       for ($i=1; $i<=$can_paginas; $i++)
       {
          if ($i==$nro_pagina){
               echo $i." ";
             }
           else{ 
               echo "<a style='color:black;' href='ram.php?num=$i'>$i</a> ";
           }
       } 
       if($nro_pagina<$can_paginas){
           echo "<a style='color:black;' href='ram.php?num=".($nro_pagina+1)."'> Siguiente ></a> "; 
       }
       ?>
      </div>
      <!--End Pagination -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <?php include './inc/footer.php'; ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>