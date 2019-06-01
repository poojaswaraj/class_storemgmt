<div class="col-lg-12">
<h3 class="page-header">Enquiry<span style="margin-left:695px;">Date:&nbsp;&nbsp;<?php echo date("d-m-Y"); ?></span></h3>
<h4>Personal Detail's</h4>


<?php
//	$sess_id11=$_SESSION['login_user'];
$user_id=$_SESSION['login_user'];
$utype=$_SESSION['user_type']=$row['type']; 
$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
$array=mysqli_fetch_array($sub);
$sub_id=$array['user_id'];

	if($id = isset($_GET['ed']) ? $_GET['ed'] : '')
	{
		$row=mysqli_query($connection,"select * from student where id=$id");
		$data=mysqli_fetch_array($row);
	}
else
	{
		$data['name']="";
		$data['name_slug']="";
		$data['dob']="";
		$data['gender']="";
		$data['email']="";
		$data['contact_no']="";
		$data['tmp_address']="";
		$data['pmt_address']="";
		//$data['state_id']="";
		//$data['con_per_no']="";
		$data['degree']="";
		$data['faculty']="";
		$data['pass_year']="";
		$data['coll_name']="";
		$data['source_type']="";
		$data['course_list']="";
		$data['course_fee']="";
		$data['assign_to']="";
        $data['comment']="";
			
	}
?>
      
        <div class="panel-body">
	<form role="form" id="frm_student" name="frm_student" autocomplete="on" action="" method="POST" enctype="multipart/form-data">
	<div class="col-lg-12">
		<div class="col-md-3">
			<input type="hidden" name="txt_id" class="form-control" value="<?php echo $data['id'];?>"/>
			<input type="hidden" name="sess_id11" class="form-control" value="<?php echo $user_id;?>"/>
			<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
			<input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
			<label>Student Name <label style="color:red;">*</label></label><input type="text" class="form-control" style="text-transform:capitalize;" name="txt_sname" id="txt_sname" value="<?php echo ucwords($data['name']);?>" placeholder="Student Name" onkeyup="stud()" required />
		</div>
		<div class="col-md-3">
			<label>Email <label style="color:red;">*</label></label><input type="text" class="form-control" name="txt_email" id="txt_email" value="<?php echo $data['email'];?>" placeholder="Email Address" required="">
		</div>
		<div class="col-md-3">
			<label>Mobile Number <label style="color:red;">*</label></label><input type="text" class="form-control" name="txt_mobno" id="txt_mobno" value="<?php echo $data['contact_no'];?>" placeholder="Mobile Number" required="">
		<p id="errormsg"></p>
		</div>
		<div class="col-md-3">
			<label>DOB</label><input type="date" class="form-control" name="dob" id="dob" value="<?php echo $data['dob'];?>" />
		</div>	
		<div class="panel-body"></div>
		<div class="col-md-3">
			<label>Address <label style="color:red;">*</label></label><textarea class="form-control" id="tmp_add" name="tmp_add" placeholder=" Address" required=""><?php echo $data['tmp_address'];?></textarea>
		</div>
		<!--<div class="col-md-3">-->
		<!--	<label>Permanent Address <label style="color:red;">*</label></label><textarea class="form-control" id="pmt_add" name="pmt_add" placeholder="Permanent Address" required=""><?php echo $data['pmt_address'];?></textarea>-->
		<!--</div>--> 
			<div class="col-md-3">
			 <label for="gender">Gender <label style="color:red;">*</label></label>
			 <div class="col">

		<select name="gender" class="form-control" id="gender" required=""> 
			<?php
			if(isset($data['id']))
			{
				?>
            	<option value="<?php echo $data['gender'];?>"><?php echo $data['gender'];?></option>
            	<?php
            	$data11=$data['gender'];
      $qry2=mysqli_query($connection,"SELECT * FROM `gender` where gender!='$data11'");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['gender'];?>"><?php echo $row2['gender'];?></option>
      <?php } ?>
            	<?php
            }
            	else
            	{?>
<option value="">Select Gender</option>

            		
		
      <?php
      $qry2=mysqli_query($connection,"SELECT * FROM `gender`");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['gender'];?>"><?php echo $row2['gender'];?></option>
      <?php } ?>
      <?php

            	}
            	?>
        </select> </div>
	    </div>
		<div class="col-md-3">
			<input type="hidden" class="form-control" name="con_per_des" id="con_per_des" value="<?php echo $data['con_per_des'];?>" placeholder="Contact Person Designation"  />
		</div>
	<!--	<div class="col-md-12">-->
	<!--	<label>Same Permanent Address &nbsp;</label>-->
	<!--	<input type="checkbox" name="samepmt" id="samepmt" onclick="FillBilling(this.form)">-->
	<!--</div>-->





		<div class="panel-body"></div>		
		<!--div class="col-md-4">
		<label>Contact Person Phone Number</label>	<input type="text" class="form-control" name="con_per_no" id="con_per_no" value="<?php echo $data['con_per_no'];?>" placeholder="Contact Person Phone Number"  />
		</div-->
		
                
                <h4 style="position: relative;right: 25px;">Study Details</h4>
                <div class="panel-body"></div>
                <div class="col-md-3" style="position: relative;top: 5px;">
			<label>Degree </label>
            <select name="degree" id="degree" class="form-control">
            	<?php
			if(isset($data['id']))
			{
				?>
            	<option value="<?php echo $data['degree'];?>"><?php echo $data['degree'];?></option>
            	<?php
            	$data11=$data['degree'];
      $qry2=mysqli_query($connection,"SELECT * FROM `degree` where degree!='$data11'");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['degree'];?>"><?php echo $row2['degree'];?></option>
      <?php } ?>
            	<?php
            }
            	else
            	{?>
<option value="">Select Degree</option>

            		
		
      <?php
      $qry2=mysqli_query($connection,"SELECT * FROM `degree`");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['degree'];?>"><?php echo $row2['degree'];?></option>
      <?php } ?>
      <?php

            	}
            	?>
			</select>

			</div>				
			<div class="col-md-3">
			<label>Faculty </label>
			<select name="faculty_id" id="faculty_id" class="form-control">
				 	<?php
			if(isset($data['id']))
			{
				?>
            	<option value="<?php echo $data['faculty'];?>"><?php echo $data['faculty'];?></option>
            	<?php
            	$data11=$data['faculty'];
      $qry2=mysqli_query($connection,"SELECT * FROM `faculty` where fname!='$data11'");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['fname'];?>"><?php echo $row2['fname'];?></option>
      <?php } ?>
            	<?php
            }
            	else
            	{?>
<option value="">Select Faculty</option>

            		
		
      <?php
      $qry2=mysqli_query($connection,"SELECT * FROM `faculty`");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['fname'];?>"><?php echo $row2['fname'];?></option>
      <?php } ?>
      <?php

            	}
            	?>
			</select>			
			
				
			</div>

			<div class="col-md-3">
			<label>Passing Year </label><input type="text" class="form-control" name="year_level" id="year_level" value="<?php echo $data['pass_year'];?>">		
					
			</div>
		
			<div class="col-md-3">		
			    <label>College Name </label><input type="text" class="form-control" name="college_name" id="college_name" placeholder="College Name" value="<?php echo $data['coll_name'];?>">
                        </div>
		
                
                        
                        <div class="panel-body"></div>
                        <h4 style="position: relative;right: 25px;top:5px;">Other Details</h4>
                        <div class="panel-body"></div>
                        
                        <div class="col-md-3">
                        	<label for="course">Course List <label style="color:red;">*</label></label>
			 <div class="col">
			<div class="container">

  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn dropdown-toggle" data-toggle="dropdown" style="width:257px;"><?php if(isset($data['id']))
			{ echo $data['course_list'];
		} else
		{?>Select Course<?php }?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="caret"></span></button>
<ul class="dropdown-menu">
	<?php
			$qry1=mysqli_query($connection,"SELECT * FROM `course`");
				while($row1=mysqli_fetch_array($qry1))
				{
			?>
  <li>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="course1"  id="<?php echo $row1['base_price'];?>" value="<?php echo $row1['course'];?>"onchange="checkTotal(this)" class="chk[]"/>&nbsp;&nbsp;<?php echo $row1['course'];?></li>
 <?php } ?>
 

</ul>
  </div>	
</div>
  </div>
</div>
	    </div>


                        </div>

                        <div class="col-md-3">

                      <label>Course Fee <label style="color:red;">*</label></label>
                      <input type="text" name="course_fee" value="<?php echo $data['course_fee'];?>" id="course_fee" class="form-control">
                      <input type="hidden" name="id_value"  id="id_value" class="form-control">

                        </div>
                        <div class="col-md-3">

                        	<label>Source Type <label style="color:red;">*</label></label>
      <select name="source_type" id="source_type" class="form-control" required="">
      	 	
			<?php
			if(isset($data['id']))
			{
				?>
            	<option value="<?php echo $data['source_type'];?>"><?php echo $data['source_type'];?></option>
            	<?php
            	$data11=$data['source_type'];
      $qry2=mysqli_query($connection,"SELECT * FROM `admin_source` where source_name!='$data11'");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['source_name'];?>"><?php echo $row2['source_name'];?></option>
      <?php } ?>
            	<?php
            }
            	else
            	{?>
<option value="">Select Source</option>

            		
		
      <?php
      $qry2=mysqli_query($connection,"SELECT * FROM `admin_source`");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['source_name'];?>"><?php echo $row2['source_name'];?></option>
      <?php } ?>
      <?php

            	}
            	?>
      </select>

                        </div>

                        
                              
                        




                        
                      
  <!--                      <div class="col-md-3">-->
		<!--	<label>Comments <label style="color:red;">*</label></label><textarea class="form-control" id="comment" name="comment" placeholder="Comments"><?php echo $data['comment'];?></textarea>-->
		<!--</div>-->
                         <div class="panel-body"></div>
		<div class="col-md-1" align="center"><br>
		<?php 
				if(empty($id))	{
		 ?>
		 
			<button name="btn_student" type="submit" id="btn_student" class="btn btn-primary" value="save" onclick="document.pressed=this.value">Save</button>
		 
			<!--<button name="btn_student" id="btn_student" type="submit" class="btn btn-primary"  value="save" onclick="document.pressed=this.value" >Save</button>-->
		<?php 
		}
		else{
		 ?>
			<button name="btn_student_edit" id="update" type="submit" class="btn btn-primary" value="update" onclick="document.pressed=this.value" >Update</button>
		<?php 	} ?>
		</div>
	</div>
	</form>
	</div>


<script>
function stud(){

    var txt_sname = document.getElementById("txt_sname").value;
    $("#txt_sname").autocomplete({
        source: 'stud_autocomplete1.php?u_ty=<?php echo $utype;?>&u_id=<?php echo $user_id;?>', 
        select: function(a,b)
	        {
	            $(this).val(b.item.value); //grabed the selected value
	            getStudOtherInfo(b.item.value);//passed that selected value
	        }
    });
}

function getStudOtherInfo(name){
        $.ajax({
                     url:'get_student1.php',
                     type:'POST',
                     data:{
                            name:name
                     },

                     success: function(data)
                     {
                       var obj = $.parseJSON(data);
                        $('#txt_sname').val(obj.name);
                        $('#txt_email').val(obj.email);
                        $('#txt_mobno').val(obj.contact_no);
                        $('#tmp_add').val(obj.tmp_address);
                        // $('#pmt_add').val(obj.pmt_address);
                        $('#gender').val(obj.gender);
                        $('#degree').val(obj.degree);
                        $('#faculty_id').val(obj.faculty);
                        $('#year_level').val(obj.pass_year);
                        $('#college_name').val(obj.coll_name);
                        $('#course').val(obj.course_list);
                        $('#course_fee').val(obj.course_fee);
                        $('#dob').val(obj.dob);
                        $('#comment').val(obj.comment);
                         
                        
                        if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
    }
</script>
<!-- Insert Script -->
<script>
$('form#frm_student').submit(function(e){

     e.preventDefault();
	 var txt_mobno = $('#txt_mobno').val();
	if(document.pressed == 'save')
	  {
	   if(txt_mobno.length>=10 && txt_mobno.length<=15)
              	{
	  	  $("button#btn_student").button('loading');
	           $.ajax({
						data:$("#frm_student").serialize(),
						type:"POST",
						url:'insert_new_enquiry.php',
 
						success: function(data)
						{
							 //alert(data);
							$("button#btn_student").button('reset');
							 
							 
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
 										window.location.href= "dashboard.php?page=enquiry_list";
 								 	} ,1500);
								 
							}   else if(data==3)
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
 										window.location.href= "dashboard.php?page=enquiry_list";
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
	}
	else{
		       				$('#txt_mobno').css('borderColor','red');
			  				$('#errormsg').html('Mobile Number between 10 to 11 Number.');
							$('#errormsg').css('color','red');
	        				}
	  }
 	else
	 if(document.pressed == 'update')
	  	{
	  			  if(txt_mobno.length>=10 && txt_mobno.length<=15)
              	{
	  		$("button#update").button('loading');
	         $.ajax({
						data:$("#frm_student").serialize(),
						type:"POST",
						url:'update_new_enquiry.php',
						success: function(data)
						{
							$("button#update").button('reset');

							 
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
 										window.location.href= "dashboard.php?page=enquiry_list";
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
 										window.location.href= "dashboard.php?page=enquiry_list";
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
	    }
	    else{
		       				$('#txt_mobno').css('borderColor','red');
			  				$('#errormsg').html('Mobile Number between 10 to 11 Number.');
							$('#errormsg').css('color','red');
	        				}
	  return true;
}
});
</script>
<script type="text/javascript">
	function checkTotal(button) {
		document.frm_student.course_fee.value = '';
		//var id=button.id;
		//alert(id);
	
		var sum = 0;
		for (i=0;i<document.frm_student.course1.length;i++) {
		  if (document.frm_student.course1[i].checked) {
		  	sum = sum + parseInt(document.frm_student.course1[i].id);
		  }
		}
		document.frm_student.course_fee.value = sum;


		 var checkboxes = document.getElementsByClassName('chk[]');

      var vals = "";
      for (var i=0, n=checkboxes.length;i<n;i++)
      {
        if (checkboxes[i].checked)
        {
            vals += ","+checkboxes[i].value;


        }
      }
      if (vals) vals = vals.substring(1);
      //alert(vals);
      document.frm_student.id_value.value = vals;


		
		
}
</script>

