 
          <?php 
include('config.php');
$user_id=$_SESSION['login_user'];
?>
<div class="row">
<!-- /.panel-heading -->
<div class="panel-body">


           <h3>My Setting</h3><hr>
            <form id="mysettingform" name="mysetting" autocomplete="off" method="POST" >
            	<input type="hidden" name="data" id="data" value="<?php echo $_SESSION['login_user']; ?>">

            <?php 
            	// $user_id=$_SESSION['login_user'];

            	// $sql= mysqli_query("SELECT b.* FROM user a INNER JOIN user_profile b ON a.id=b.user_id WHERE a.id='$user_id'")or die(mysqli_error($connection));
            	$sql=mysqli_query($connection,"SELECT * FROM user_profile WHERE id='$user_id'")or die(mysqli_error($connection));
            	$row=mysqli_fetch_array($sql);
            	$sub_id=$row['user_id'];


             ?>
            <div class="col-lg-6">
				<div class="col-lg-12">
				<h4>About You</h4>
				
				
				<div class="col-md-6">
					<label>Name</label>
				</div><div class="panel-body"></div>
				<div class="col-md-6">
					<input type="text" class="form-control" name="txt_name" id="txt_lname" value="<?php echo $row['name']; ?>" placeholder="Name" required>
				</div>
				<div class="panel-body"></div>

				<div class="col-md-6">
					<label>Contact No</label>
				</div><div class="panel-body"></div>
				<div class="col-md-6">
					<input type="text" class="form-control" name="txt_cont" id="txt_cont" value="<?php echo $row['mobile']; ?>" placeholder="Contact No" required>
				</div>
				<div class="panel-body"></div>
				
				<div class="col-md-6">
					<label>Email-ID</label>
				</div><div class="panel-body"></div>
				<div class="col-md-6">
					<input type="email" class="form-control" name="txt_email" id="txt_email" value="<?php echo $row['email']; ?>" placeholder="Email" required>
				</div>
				

				</div>
			</div>
			<div class="col-lg-6">
				<div class="col-lg-12">
				<h4>Change Your Password</h4>
				<div class="col-md-6">
					<label>Old Password</label>
				</div><div class="panel-body"></div>
				<div class="col-md-6">
					<input type="password" class="form-control" name="old_pass" id="old_pass" placeholder="Old Password" onchange="checkpass()">
				</div>
				<center><p id="msg1"></p></center>
				<div class="panel-body"></div>
				
				<div class="col-md-6">
					<label>New Password</label>
				</div><div class="panel-body"></div>
				<div class="col-md-6">
					<input type="password" class="form-control" name="new_pass" id="new_pass" placeholder="New Password" >
				</div>
				<div class="panel-body"></div>
				
				<div class="col-md-6">
					<label>Confirm Password</label>
				</div><div class="panel-body"></div>
				<div class="col-md-6">
					<input type="password" class="form-control" name="cnew_pass" id="cnew_pass" placeholder="Confirm Password">
				</div>
				</div>
				<p id="errormsg"></p>
			</div>
			
			<div class="col-lg-12" align="right">
				<!-- <button name="btn_save" type="submit" class="btn btn-primary">Save</button> -->
				<button name="btn_save" type="submit" class="btn btn-primary" id="btn_save" value="save">Save</button>
			</div>
			<center><p id="msg"></p></center>
			</form>
		<script type="text/javascript">
			$('form#mysettingform').submit(function(e){

	var new_pass = $('#new_pass').val();
	var cnew_pass = $('#cnew_pass').val();
	var txt_cont = $('#txt_cont').val();
        e.preventDefault();

        if(new_pass==cnew_pass)
        {
        	if(new_pass.length>=4 && new_pass.length<=10)
              {   
              	if(txt_cont.length>=10 && txt_cont.length<=15)
             	{    
		            $.ajax({
		                        url:'insert_mysetting.php',
		                        type: "POST",
		                        data: new FormData(this),
		                        contentType:false,
		                        cache:false,  
		                        processData:false,
		                        success: function(data)
		                       	 	{
		                               
		                                 // alert(data);
		                                if(data==1)
		                                {
											swal({
											  position: 'top-right',
			 							      type: 'success',
			  								  title: 'Save Successfully!!!',
			  								  showConfirmButton: false,
			  								  timer: 1500
											})
											  window.setTimeout(function()
											    { 
			 										location.reload();
			 								 	} ,1500);

		                                  
		                                }
		                                else if(data==2){

		                                	// $('#old_pass').css('borderColor','red');
											$('#msg1').html('Please Check All Field .');
											$('#msg1').css('color','red');

		                                }
		                                 else if(data==3){

		                                	$('#old_pass').css('borderColor','red');
											$('#msg1').html('Please Enter Correct Password.');
											$('#msg1').css('color','red');
										
		                                }
		                            	
		                        	}
		           			});
		           }
                  else
                  {
                  	$('#cnew_pass').css('borderColor','#27b6ee');
                    $('#txt_cont').css('borderColor','red');
                    $('#errormsg').html('Mobile Number between 10 to 15 Number.');
                    $('#errormsg').css('color','red');
                  }
	       	 }
   			 else
   				{
	   			 	// $('#cnew_pass').css('borderColor','red');
					$('#errormsg').html('Password must be between 4 to 10 characters.');
					$('#errormsg').css('color','red');
   				}
	       	}
   			 else
   				{
	   			 	$('#cnew_pass').css('borderColor','red');
					$('#errormsg').html('Password Not Match.');
					$('#errormsg').css('color','red');
   				}
    });
			function checkpass(){

		var old_pass =$('#old_pass').val();

		 $.ajax({
                    url:'checkpass.php',
					type:'POST',
					data:{
							old_pass:old_pass
						 },
					success: function(data)
					{
	                    if(data==1)
                        {
                            // alert("Inserted Successfully..");
							$('#old_pass').css('borderColor','#27b6ee');
							$('#msg1').html('');
							document.getElementById('new_pass').disabled=false;
							document.getElementById('cnew_pass').disabled=false;
							document.getElementById('btn_save').disabled=false;
                        }
                        else if(data==2)
                        {
                        	$('#old_pass').css('borderColor','red');
							$('#msg1').html('Please Enter Correct Password.');
							$('#msg1').css('color','red');
							document.getElementById('new_pass').disabled=true;
							document.getElementById('cnew_pass').disabled=true;
							document.getElementById('btn_save').disabled=true;
                        }
                    }
					
			    });
	}

				</script>
