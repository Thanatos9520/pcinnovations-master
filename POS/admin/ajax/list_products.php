<?php
	
	/* Connect To Database*/
	require_once ("../../conn.php");
 
	
$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
if($action == 'ajax'){
	$query = mysqli_real_escape_string($conn,(strip_tags($_REQUEST['query'], ENT_QUOTES)));
 
	$tables="product";
	$campos="*";
	$sWhere=" product.product_name LIKE '%".$query."%'";
	$sWhere.=" order by product.product_name";
	
	
	include 'pagination.php'; //include pagination file
	//pagination variables
	$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
	$per_page = intval($_REQUEST['per_page']); //how much records you want to show
	$adjacents  = 4; //gap between pages after number of adjacents
	$offset = ($page - 1) * $per_page;
	//Count the total number of row in your table*/
	$count_query   = mysqli_query($conn,"SELECT count(*) AS numrows FROM $tables where $sWhere ");
	if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
	else {echo mysqli_error($conn);}
	$total_pages = ceil($numrows/$per_page);
	//main query to fetch the data
    $query = mysqli_query($conn,"select * from product
     left join category 
     on category.categoryid=product.categoryid
      left join supplier on supplier.userid=product.supplierid order by product_name asc LIMIT $offset,$per_page");
	//loop through fetched data
	
 
 
		
	
	if ($numrows>0){
		
	?>
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
                        <th class='text-center'>Photo</th>
                        <th class='text-center'>ID</th>
						<th>Product </th>
						<th>Category </th>
						<th class='text-right'>Precio</th>
						<th></th>
					</tr>
				</thead>
				<tbody>	
						<?php 
						$finales=0;
						while($row = mysqli_fetch_array($query)){
                        	$photo=$row['photo'];
							$product_id=$row['productid'];
							$prod_name=$row['product_name'];
							$category=$row['category_name'];
							$price=$row['product_price'];	
							$stock=$row['product_qty'];	
							$description=$row['description'];	
							$tech=$row['tech'];	
							$video=$row['video'];					
							$finales++;
						?>	
						<tr class="<?php echo $text_class;?>">
							<td class='text-center'><img src="../<?php if(empty($photo)){echo "upload/noimage.jpg";}else{echo $photo;} ?>" height="30px" width="30px;"></td>
							<td ><?php echo $product_id;?></td>
							<td ><?php echo $prod_name;?></td>
							<td ><?php echo $category;?></td>
							<td class='text-right'><?php echo number_format($price,2);?></td>
							<td>
							<a href="#addPhotoModal" class="add" data-toggle="modal" data-id="<?php echo $product_id;?>"><i class="material-icons" data-toggle="tooltip" title="Agregar foto">attachment</i></a>
								<a href="#"  data-target="#editProductModal" class="edit" data-toggle="modal" data-id='<?php echo $product_id; ?>' data-name="<?php echo $prod_name;?>" data-category="<?php echo $category?>" data-description="<?php echo $description?>" data-tech="<?php echo $tech?>" data-video="<?php echo $video?>" data-stock="<?php echo $stock?>" data-price="<?php echo $price;?>"><i class="material-icons" data-toggle="tooltip" title="Editar" >&#xE254;</i></a>
								<a href="#deleteProductModal" class="delete" data-toggle="modal" data-id="<?php echo $product_id;?>"><i class="material-icons" data-toggle="tooltip" title="Eliminar">&#xE872;</i></a>
                    		</td>
						</tr>
						<?php }?>
						<tr>
							<td colspan='6'> 
								<?php 
									$inicios=$offset+1;
									$finales+=$inicios -1;
									echo "Show $inicios a $finales of $numrows records";
									echo paginate( $page, $total_pages, $adjacents);
								?>
							</td>
						</tr>
				</tbody>			
			</table>
		</div>	
 
	
	
	<?php	
	}	
}
?>          

