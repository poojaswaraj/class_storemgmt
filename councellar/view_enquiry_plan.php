<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class="col-lg-12">
<h3 class="page-header">Enquiry Log </h3>
<?php
if(isset($_GET['ed']) && !empty($_GET['ed']))
	{
		 $id=$_GET['ed'];
            $user_id=$_SESSION['login_user'];
            $utype=$_SESSION['user_type']=$row['type']; 
		$run = mysqli_query($connection,"SELECT b.name as assign,b.id as assign_id , a.* FROM student a LEFT JOIN user_profile b ON b.id=a.assign_to where a.id='$id'");	
		
	}
	while($row = mysqli_fetch_array($run))
	{
		$enquiry_id=$row['id'];	
		$student_name=$row['name'];
		$contact_no=$row['contact_no'];
		$email=$row['email'];
		//$state_id=$row[4];	
		$tmp_address=$row['tmp_address'];
		//$enq_comp_fax=$row['cust_comp_fax'];	
		$course_list=$row['course_list'];
		
		$course_fee=$row['course_fee'];	
		$comment=$row['comment'];
		$assign_to=$row['assign_to'];
		$assign_id=$row['assign_id'];
	
	}
?>
    <div class="panel panel-info">
    <div class="panel-heading">Student Details <label style="margin-left:695px;">Date:&nbsp;&nbsp;<?php echo date("y/m/d"); ?></label></div>
        <div class="panel-body">  
			<div class="col-sm-4">			
			<div class="col-md-6"><label>Student Name:</label></div>
			<div class="col-md-6"><?php echo $student_name; ?></div>
			</div>
			<div class="col-sm-4">			
			<div class="col-md-6"><label>Email Id:</label></div>
			<div class="col-md-6" id="company"><?php echo $email; ?></div>
			</div>
			<div class="col-sm-4">
			<div class="col-md-6"><label>Phone Number:</label></div>
			<div class="col-md-6"><?php echo $contact_no; ?></div>
			</div>			
			<div class="col-sm-4">
			<div class="col-md-6"><label>Address:</label></div>
			<div class="col-md-6"><?php echo $tmp_address; ?></div>
			</div>
			<!--
			<div class="col-sm-4">
			<div class="col-md-6"><label>Fax Number:</label></div>
			<div class="col-md-6"><?php echo $enq_comp_fax; ?></div>
			</div>
		    -->
			<div class="col-sm-4">			
			<div class="col-md-6"><label>Course List:</label></div>
			<div class="col-md-6"><?php echo $course_list; ?></div>
			</div>
			<div class="col-sm-4">			
			<div class="col-md-6"><label>Course Fee:</label></div>
			<div class="col-md-6"><?php echo $course_fee; ?></div>
			</div>
			<div class="col-sm-4">
			<div class="col-md-6"><label>Comment:</label></div>
			<div class="col-md-6"><?php echo $comment; ?></div>
			</div>
			
			<div class="col-sm-4">
			<?php if($assign_to==0){
						 	$sql1= mysqli_query($connection,"SELECT * FROM user where id='$user_id'");
							$arr1=mysqli_fetch_array($sql1);
						}
						else{
							$sql1 = mysqli_query($connection,"SELECT * FROM user_profile where id='$assign_to'");
							$arr1=mysqli_fetch_array($sql1);
						}
						//$name_ass=$arr1['name'];
			?>
			<div class="col-md-6"><label>Assign To:</label></div>
			<div class="col-md-6"><label style="color:blue;"><?php echo $assign_to; ?></label></div>
			</div>
			<input type="hidden" class="form-control" name="assign" id="assign" value="<?php echo $assign_id; ?>" />
			<input type="hidden" class="form-control" name="cust_id" id="cust_id" value="<?php echo $enquiry_id; ?>" />
                </div>
          </div>
 <div class="panel panel-primary">
    <div class="panel-heading">Log Details</div>
    <div class="panel-body" style="overflow-y: scroll; overflow-x: scroll;">
	<table class="datatable table table-striped" id="example"  cellspacing="0" width="100%">
   <thead>
    <tr bgcolor="#999999">
	<td>Sr.No</td>
	<td>Schedule Type</td>
        <td>Schedule Date</td>  
        <td>Schedule Time</td>	        
        <td>Status</td>
        <td>Remark</td>
        <td>Director Remark</td>
        <!---<td>Action</td>-->
	
    </tr>
	</thead>
    <tbody>
	<?php
	if(isset($_GET['ed']) && !empty($_GET['ed']))
	{
		$id=$_GET['ed'];
		if($utype=='user')
		{	
			$run=mysqli_query($connection,"SELECT * FROM generate_log where generated_by='$user_id' and sub_user_id='$user_id' and user_id='$sub_id' and student_id='$id' ORDER BY `id` DESC")or die(mysqli_error($connection));
		}else{
			$run=mysqli_query($connection,"SELECT * FROM generate_log where user_id='$user_id' and student_id='$id' ORDER BY `id` DESC")or die(mysqli_error($connection));
			}
	$count=0;
	while($row = mysqli_fetch_array($run))
	{
            $count++;	
		$tab_id=$row['id'];
		$sche_type=$row['sche_type'];
		$sche_date=$row['sche_date'];	
		//$sche_action=$row['sche_action'];		
		$sche_time=$row['sche_time'];
		//$en_call_type=$row['en_call_type'];	
		$en_status=$row['en_status'];
		$en_remark=$row['en_remark'];	
		
				
		$var5=mysqli_query($connection,"select * from admin_enquiry_status where enquiry_status_id='$en_status'");
		$row5=mysqli_fetch_array($var5);
		$var6=mysqli_query($connection,"select * from  mstr_schedule where id='$sche_type'");
		$row6=mysqli_fetch_array($var6);
		
		echo"<tr>
		<td>$count</td>		
                <td>".$row6['sche_type']."</td>                
                <td>$sche_date</td>		
		<td>$sche_time</td>               
                <td>".$row5['enquiry_status']."</td>
                <td>$en_remark</td>
                <td><button type='button' class='btn btn-success' data-toggle='modal' data-target='#myModal2' onclick='efunction_dir($tab_id)'><i class='fa fa-pencil'></i></button></td>
                
		</tr>";?>	
		<!----<td><button type='button' class='btn btn-success' data-toggle='modal' data-target='#myModal' onclick='efun($tab_id)'><i class='fa fa-pencil'></i></button></td>--->
      
			<?php 
                        } } 
			?>
	</tbody>
	</table>
	</div>
	</div>
	<div id="myModal" class="modal fade" tabindex="1" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" align="center">Minutes of the Meeting</h3>
            </div>
            <div class="modal-body">    
                <form  method="post" id="myform1" enctype="multipart/formdata"> 
                    <input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
                <input type="hidden" name="log" id="log">
                 
                 <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Description</h4><textarea class="form-control" name="remark_u" id="remark_u"></textarea></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                </div> 

                 <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Document Upload:</h4><input type="file" name="file" id="file" class="form-control"><input type="text" name="doc" id="doc" style="border:none;width:300px;" ></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                </div> 

                
           
                <br>
              
	            <div class="modal-footer">
	               <button class="btn btn-primary submit" name="save1" id="btn_save1">Save</button>
	               <button type="button" class="btn btn-warning btn-md" data-dismiss="modal">Cancel</button>      
		        </div>

                </form>
            </div>
        </div>
    </div>
</div>
<div id="myModal2" class="modal fade" tabindex="1" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" align="center">Director Remark</h3>
            </div>
            <div class="modal-body">    
                <form  method="post" id="myform2" enctype="multipart/formdata"> 
                    <input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
                <input type="hidden" name="log_dir" id="log_dir">
                 
                 <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Remark</h4><textarea class="form-control" name="remark_dir" id="remark_dir"></textarea></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                </div> 
                <br>
              
	            <div class="modal-footer">
	               <button class="btn btn-primary submit" name="btn_save" id="btn_save2">Save</button>
	               <button type="button" class="btn btn-warning btn-md" data-dismiss="modal">Cancel</button>      
		    </div>

                </form>
            </div>
        </div>
    </div>
</div>

</div>

<script>
	function efun(id)
{
    $.ajax({
             url:'get_remark_data.php',
             type:'POST',
             data:{
                    id:id
             },
	
             success: function(data)
             {
                var obj = $.parseJSON(data);
                $('#log').val(obj.id);
                $('#remark_u').val(obj.mom_description);
                $('#file').prop(obj.upload_document);
                $('#doc').val(obj.upload_document);
               
                if(data==1)
                {
                    alert("update");
                }

             } 

    });

}

	function efunction_dir(id)
{
    $.ajax({
             url:'get_remark_data_dir.php',
             type:'POST',
             data:{
                    id:id
             },
	
             success: function(data)
             {
                var obj = $.parseJSON(data);
                $('#log_dir').val(obj.id);
                $('#remark_dir').val(obj.dir_remark);
               
               
                if(data==1)
                {
                    alert("update");
                }

             } 

    });

}
$('form#myform2').submit(function(e){

     e.preventDefault();


	  		$("button#btn_save2").button('loading');
	         $.ajax({
						url:'update_remark_view.php',
						type:"POST",
						data: new FormData(this),
                                                contentType:false,
                                                processData:false,
						success: function(data)
						{
							$("button#btn_save2").button('reset');
							if(data==1)
							{
								// alert('Save Successfully !!!');
								
								//  window.location.href= "logproduct.php";
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Save Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "user_dashboard.php?page=view_enquiry_plan&ed=<?php echo $id;?>";
 								 	} ,1500);
								 
                                                                }else if(data==3)
                                                                {
								// alert('Save Successfully !!!');
								
								//  window.location.href= "logproduct.php";
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Save Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "dashboard.php?page=view_enquiry_plan&ed=<?php echo $id;?>";
 								 	} ,1500);
								 
							}
							else if(data==2)
							{
								alert('Error....');
								// $('#msg').html('Please Check Error.');
								// $('#msg').css('color','red');
								return false;
							} 
						}
				   });
	    		 
});
$('form#myform1').submit(function(e){

     e.preventDefault();


	  		$("button#btn_save1").button('loading');
	         $.ajax({
						url:'update_remark.php',
						type:"POST",
						data: new FormData(this),
                                                contentType:false,
                                                processData:false,
						success: function(data)
						{
							$("button#btn_save1").button('reset');
							if(data==1)
							{
								// alert('Save Successfully !!!');
								
								//  window.location.href= "logproduct.php";
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Save Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "user_dashboard.php?page=view_enquiry_plan&ed=<?php echo $id;?>";
 								 	} ,1500);
								 
                                                                }else if(data==3)
                                                                {
								// alert('Save Successfully !!!');
								
								//  window.location.href= "logproduct.php";
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Save Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "dashboard.php?page=view_enquiry_plan&ed=<?php echo $id;?>";
 								 	} ,1500);
								 
							}
							else if(data==2)
							{
								alert('Error....');
								// $('#msg').html('Please Check Error.');
								// $('#msg').css('color','red');
								return false;
							} 
						}
				   });
	    		 
});

</script>







 
