<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Billing Software</title>
<!-- fevicon of ebc invoice -->
    <link rel="shortcut icon" href="images/ebc_logo1.png" type="image/x-icon" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">
<link href="css/sweetalert.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body background="images/imagebackground.png"  height="100px; width:100px";>
<div class="container">
  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <div class="login-panel panel panel-default" style="margin-top:200px">
        <div class="panel-heading">
          <h3 class="panel-title" style="text-align: center;">Forget Password Here</h3>
        </div>
        <div class="panel-body">
        <?php 
          include("config.php");
          $sql = mysqli_query($connection,"SELECT * FROM `company`")or die(mysqli_error($connection));
            $row=mysqli_fetch_array($sql);
            $logo=$row['logo'];

            if(isset($logo)){

         ?>
            <center><img src="<?php echo $row['logo'];?>" alt="" height="100px; width:100px";></center>
        <?php }
            else{
         ?>
             <center><img src="images/ebc_logo.png" alt="test" height="100px; width:100px";></center>
        <?php } ?>
        </div>
        <div class="panel-body">
          <form id="myform" role="form" name="form1" method="post">
            <fieldset>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="Enter Email-ID" name="email" id="email" autofocus>
              </div>
             
              <div class="checkbox">
               	  <label style="float: right; margin-bottom: 5px;">
                      <!-- <a href="index.php">Goto Sign In?</a> -->
                  </label>
              </div>
              <!-- Change this to a button or input when using this as a form -->
              <p id="msg"></p>
              <button type="submit" name="save" id="save" class="btn btn-lg btn-primary btn-block">Submit</button>
            
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/sweetalert.min.js"></script>

<script>

$('form#myform').submit(function(e){

        e.preventDefault();
        
				        $('button#save').button('loading');
				            $.ajax({

				                    url:'forget_pass.php',
				                    type: "POST",
				                    data: new FormData(this),
				                    contentType:false,
				                    processData:false,
				                    success: function(data)
				                    {
				                        // alert(data);
				                        $('button#save').button('reset');
				                        if(data==1)
				                        {
				                          // alert("Successfully..");
				                          // location.reload();
				                          swal({
													  position: 'top-right',
					 							      type: 'success',
					  								  title: 'Password Send to Your Email-ID!!!',
					  								  showConfirmButton: false,
					  								  timer: 1500
												  })
												  window.setTimeout(function()
												    { 
				 										 window.location.href= "index.php";
				 								 	} ,1500);
				                        }
				                        else if(data==2){

				                         	$('#msg').html('Please Enter Valid Email-ID.');
											            $('#msg').css('color','red');
				                        }
				                        
				                    }
				            });
				
    });

</script>


	<!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>