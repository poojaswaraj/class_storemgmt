<?php
include('config.php');
$user_id=$_SESSION['login_user'];
$utype=$_SESSION['user_type']=$row['type']; 
$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='user' and id='$user_id'")or die(mysqli_error($connection));
$array=mysqli_fetch_array($sub);
$sub_id=$array['user_id'];

	if($id = isset($_GET['id']) ? $_GET['id'] : '')
	{
		$row=mysqli_query($connection,"select * from course where id=$id");
		$data=mysqli_fetch_array($row);
	}
	else{
		$data['course']="";	
		$data['ccode']="";	
		$data['description']="";
		$data['base_price']="";
		$data['created_at']="";
		$data['updated_at']="";
			$data['duration']="";
		// $data['units']="";
	}
?>

<div class="row">
	<div class="col-md-4"><h3>Course</h3></div>
	<div class="col-md-8" align="center">
	<?php if(isset($_GET['status'])&&$_GET['status']==1){ ?>
		<div class="alert alert-success"><label>Data Successfully Insert...</label></div>
	<?php }
			if(isset($_GET['status'])&&$_GET['status']==2){ ?>
		<div class="alert alert-success"><label>Data Successfully Update...</label></div>
	<?php }
			if(isset($_GET['status'])&&$_GET['status']==3){ ?>
		<div class="alert alert-danger"><label>Something Wrong...</label></div>
	<?php }
			if(isset($_GET['status'])&&$_GET['status']==4){ ?>
		<div class="alert alert-danger"><label>Select Employee Code...</label></div>
	<?php } ?>
	</div>
	<div class="panel-body"></div>
	<hr>
    <!--<h4>Course info</h4>-->
	<form name="frm_course" id="frm_course" autocomplete="off" method="POST">
	<div class="col-lg-9">
		
		<div class="col-md-4">
			<input type="hidden" name="txt_id" class="form-control" value="<?php echo $data['id'];?>"/>

			<input type="hidden" name="user_id" class="form-control" value="<?php echo $user_id;?>"/>
			<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
			<input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
            <label>Course Name</label>
			<input type="text" class="form-control" name="txt_cname" value="<?php echo $data['course'];?>" placeholder="Course Name" required>
		</div>

		<div class="col-md-4">
			<label>Course Code</label>
			 <input type="text" class="form-control" name="txt_ccode" value="<?php echo $data['ccode'];?>" placeholder="Course Code">
		</div>
		
		<div class="col-md-4">
		    <label>Course Description</label>
			<input type="text" class="form-control" name="txt_desc" value="<?php echo $data['description'];?>" placeholder="Course Description">
		</div>
		<div class="panel-body"></div>

		<div class="col-md-4">
			<label>Course Fee</label>
			<input type="text" class="form-control" name="txt_price" value="<?php echo $data['base_price'];?>" placeholder="Course Fee">
		</div>
		<div class="col-md-4">		
			<label>Departments</label>
			<select name="department" id="department" class="form-control">
				<?php
			if(isset($data['id']))
			{
				?>
				<option value="<?php echo $data['department'];?>"><?php echo $data['department'];?></option>
                <?php
			$qry2=mysqli_query($connection,"SELECT * FROM `department` ");
				while($row2=mysqli_fetch_array($qry2))
				{
			?>
			<option value="<?php echo $row2['name'];?>"><?php echo $row2['name'];?></option>
			<?php }?>

				
           <?php
				
             }
            else
            {

		?>


				<option value=" ">Select Department</option>
			<?php
			$qry2=mysqli_query($connection,"SELECT * FROM `department`");
				while($row2=mysqli_fetch_array($qry2))
				{
			?>
			<option value="<?php echo $row2['name'];?>"><?php echo $row2['name'];?></option>
			<?php }} ?>
			</select>				
                        </div>
		
           <div class="col-md-4">
			<label>Course Duration</label>
			<input type="text" class="form-control" name="txt_duration" value="<?php echo $data['duration'];?>" placeholder="Course Duration">
		</div>
		<!-- <div class="col-md-3">
			<input type="text" class="form-control" name="txt_units" value="<?php echo $data['units'];?>" placeholder="Units Available">
		</div> -->
		<div class="panel-body"></div>
		
		<div class="col-md-6">
		<?php 
			if(empty($id)){
		 ?>
			<button name="btn_course" type="submit" id="btn_course" class="btn btn-primary" value="save" onclick="document.pressed=this.value" data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Save</button>
		<?php 
		}
		else{
		 ?>
			<button name="btn_course_edit" type="submit" id="update" class="btn btn-primary" value="update" onclick="document.pressed=this.value" data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Update</button>
		<?php } ?>
		</div>
	</div>
	</form>
	<div class="panel-body"></div>
	
<div class="col-md-12">
  <h4>Course List</h4>
      <table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
      <thead>
        <tr bgcolor="#999999">
          <td>Sr.No</td>
          <td>Course Name</td>
          <td>Course Code</td>
          <td>Description</td>
          <td>Price</td>
          <td>Department</td>
          <td>Duration</td>
          <!-- <td>Units</td> -->
		  	  
		  <td>Edit</td>
        </tr>
        </thead>
        <tbody>
        <?php
        if($utype=='admin')
		{
			$qry=mysqli_query($connection,"SELECT * FROM course  ORDER BY `id` DESC")or die(mysqli_error($connection));
		}
		else{
			$qry=mysqli_query($connection,"SELECT * FROM course ORDER BY `id` DESC")or die(mysqli_error($connection));
		}
			$cnt=1;
			while($row=mysqli_fetch_array($qry)){
		?>
        <tr>
          <td><?php echo $cnt++ ?></td>
          <!-- <td><?php echo $row['id']; ?></td> -->
          <td><?php echo $row['course'];?></td>
          <td><?php echo $row['ccode'];?></td>
          <td><?php echo $row['description'];?></td>
		  <td><?php echo $row['base_price'];?></td>
		  <td><?php echo $row['department'];?></td>
		  <td><?php echo $row['duration'];?></td>

          <!-- <td><?php echo $row['units'];?></td> -->
          
          <td>
         
           <?php 
			  	if($utype=='admin')
				{
			   ?>
			  <?php echo "<a href='dashboard.php?page=course&id=".$row['id']."' title='Edit Product' data-toggle='tooltip'>";?><span class="icon fa fa-edit"></span></a>
			  <?php 
			 	 }
			 	 else
			 	 {
			   ?>
			   <?php echo "<a href='dashboard.php?page=course&id=".$row['id']."' title='Edit Product' data-toggle='tooltip'>";?><span class="icon fa fa-edit"></span></a>
			   <?php } ?>
          </td>
        </tr>
        <?php }?>
        </tbody>
      </table>
</div>
</div>
<!-- Insert Script -->
<script>

$('form#frm_course').submit(function(e){

     e.preventDefault();

	if(document.pressed == 'save')
	  {
	  	$("button#btn_course").button('loading');
	           $.ajax({
						data:$("#frm_course").serialize(),
						type:"POST",
						url:'ins_course.php',
						success: function(data)
						{
							$("button#btn_course").button('reset');
							 // alert(data);
							if(data==1) 
							{
							   // alert('Product Inserted !!!');
								swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Your Course has been saved',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
								     location.reload();
								 	} ,1500);
							}
							else if(data==2)
							{
								// alert('Error..');
								$('#msg').html('Please Check Error.');
								$('#msg').css('color','red');
								
								return false;
							} 
						}
					 
					 });
	}

 	else
	  if(document.pressed == 'update')
	  	{
	  		$("button#update").button('loading');
	         $.ajax({
						data:$("#frm_course").serialize(),
						type:"POST",
						url:'upd_course.php',
						success: function(data)
						{
							$("button#update").button('reset');
							if(data==1)
							{
								// alert('Updated Successfully !!!');
							 
								swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Your product has been updated',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
								      window.location.href= "dashboard.php?page=course";
								 	} ,1500);

								
							}
							else if(data==3)
							{
								// alert('Updated Successfully !!!');
							 
								swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Your product has been updated',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
								      window.location.href= "dashboard.php?page=course";
								 	} ,1500);

								
							}
							else if(data==2)
							{
								// alert('Error....');
								$('#msg').html('Please Check Error.');
								$('#msg').css('color','red');
								return false;
							} 
						}
				   });

	    }
	  return true;

});

</script>