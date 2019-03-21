function addProduct(){
    $("#addProductForm").submit(function(e){
        e.preventDefault();

        let parameters = new FormData($(this)[0]);
       
        $.ajax({
            url:"ajax/save_product.php",
            type:"POST",
            dataType:"json",
            data:parameters,
            contentType: false, 
            processData: false,
        }).done(function(resp){
            $('#addproduct').modal('hide');
            $('.modal-backdrop').remove(); // removemos el fondo oscuro
            swal({
                type: 'success',
                title:'Product added successfully!',
                showConfirmButton:false,
                timer: 800
            })
            $('.infoProduct').html(resp.products);
        }).fail(function(resp){
            console.log(resp.responseText)
        }); 
        $("#addProductForm")[0].reset();
    })
}

function getProductDelete(idProd,idCat){ 
        
    swal({
        title: 'Are you sure you want to delete this product?',
        text: "You won't be able to revert this!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.value)
        {
            $.ajax({
                url:"deleteproduct.php",
                type:"POST",
                dataType:"json",
                data:{'idProd':idProd,'idCat':idCat}
            }).done(function(resp){
                if(!resp.error)
                {
                    $(".infoProduct").html(null);
                    $(".infoProduct").html(resp.products);

                    swal({
                        type: 'success',
                        title:'Deleted!',
                        text:resp.msg,
                        showConfirmButton:false,
                        timer: 800
                    })
                }
                else if(resp.error)
                {
                    swal({
                        type:'error',
                        title:'Failed!',
                        text:resp.msg,
                        showConfirmButton:true
                    })
                }
            }).fail(function(resp){
                alert(resp.responseText);
            }); 
        }
      })
}

function getProductEdit(idProd){
   let query = '1'; // con esto le caemos al mismo archivo y hacemos distintas operaciones 
   
    $.ajax({
        url:'edit_product.php',
        type:'POST',
        dataType:'json',
        data:{'edit_id':idProd,'query':query},
    }).done((resp)=>{
        if(!resp.error){
            $("#edit_id").val(idProd);
            $("#edit_name").val(resp.edit_name);
            $("#edit_category").html(resp.category);
            $("#edit_supplier").html(resp.supplier);
            $("#edit_price").val(resp.edit_price);
            $("#edit_stock").val(resp.edit_stock);
            $("#edit_description").val(resp.edit_description);
            $("#edit_tech").val(resp.edit_tech);
            $("#edit_video").val(resp.edit_video);
        }
        else
        {
            swal({
                type:'error',
                title:'Failed!',
                text:resp.msg,
                showConfirmButton:true
            })
        }
    }).fail((resp)=>{
        alert(resp.responseText)
    });
}

function updateProduct(){
    $('#form_edit').submit(function(e){
        e.preventDefault();
        let id = $("#edit_id").val();
        let parameters = new FormData($(this)[0]);
        $.ajax({
            url:"edit_product.php",
            type:"POST",
            dataType:"json",
            data:parameters,
            contentType: false, 
            processData: false,
            beforeSend: function(objeto){
                $(".infoProduct").html();
            }
        }).done((resp)=>{
            if(!resp.error){
                swal({
                    type: 'success',
                    title:'Updated!',
                    text:resp.msg,
                    showConfirmButton:false,
                    timer: 1000
                })
                $(".infoProduct").html(resp.products);
            }
            else{
                swal({
                    type: 'error',
                    title:'Error!',
                    text:resp.msg,
                    showConfirmButton:false,
                    timer: 1000
                })
            }
           
        }).fail((resp)=>{
            console.log(resp.responseText)
        });
        $("#form_edit")[0].reset(); // vaciamos el formulario
        // $('#edit_id').val(id);
        // $('#query').val("0");
    });
}

function getPhoto(idProd){
    
    $("#idProd").val(idProd);
    $(".d-flex").html(""); // evitamos que se quede alguna imagen pegada

    let getPhoto ="1"; 
    $.ajax({
        url: "addphoto.php",
        type: "POST",
        dataType:'json',
        data:{'idProd':idProd,'getPhoto':getPhoto},
        beforeSend:function(){
            
        }
    }).done(function(resp){
        if(!resp.error)
        {   
            $(".d-flex").html(resp.allPhotos);
        }
        else
        {
            $(".d-flex").html(resp.allPhotos);
        }
    }).fail(function(resp){
        $(".d-flex").html(resp.allPhotos);
    })
}

$("#savePhoto").click(function(){
    $("#savePhotoProd").submit(function(e) {
        e.preventDefault();
        let id = $("#idProd").val();

        let parameters = new FormData($(this)[0]);

          $.ajax({
                url: "addphoto.php",
                type: "POST",
                dataType:'json',
                data: parameters,
                contentType: false, 
                processData: false,
                beforeSend: function(objeto){
                    $(".d-flex").html();
                }
            }).done(function(resp){
                if(!resp.error)
                {   
                    $(".d-flex").html(resp.allPhotos);
                }
                else
                {
                //      $(".message").html("<div class='alert alert-danger'>"+resp.allPhotos+"</div>");
                //    setTimeout(function(){$(".message").html(null);},3000)
                }
                }).fail(function(resp){
                    alert(resp.responseText)
                    $(".d-flex").html(resp.allPhotos);
                });
                $("#savePhotoProd")[0].reset(); // vaciamos el formulario
                $("#idProd").val(id);
      });
});

function deletePhoto(id,photo,idProd){

    swal({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.value) {

            $.ajax({
                url: "del_file.php",
                type: "POST",
                dataType:'json',
                data: {'id':id,'photo':photo,'idProd':idProd},
                beforeSend: function(objeto){
                    
                }
            }).done(function(resp){ 
                if(!resp.error)
                {
                    swal({
                        type: 'success',
                        title:'Deleted!',
                        text:'Your photo has been deleted.',
                        showConfirmButton:false,
                        timer: 800
                    })
                    $(".d-flex").html(resp.allPhotos);
                }
                else
                {
                    swal({
                        type: 'success',
                        title:'Deleted!',
                        text:'Your photo has been deleted.',
                        showConfirmButton:false,
                        timer: 800
                    })
                    $(".d-flex").html(resp.msg);
                }
                
            }).fail(function(resp){
                alert(resp.responseText)
            });

        }
      })    
}