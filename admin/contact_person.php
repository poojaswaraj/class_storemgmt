<?php

	$user_id=$_SESSION['login_user'];
	$utype=$_SESSION['user_type']=$row['type']; 
	$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
	$array=mysqli_fetch_array($sub);
	$sub_id=$array['user_id'];
	$sub1=mysqli_query($connection,"SELECT * FROM user where id='$user_id' ")or die(mysqli_error($connection));
 $array1=mysqli_fetch_array($sub1);
 $message11='Yes';

	if(isset($_GET['ed']) && !empty($_GET['ed']))
		{
			 $id=$_GET['ed'];
			$run1 = mysqli_query($connection,"SELECT * FROM user_profile where id='$id' and user_id='$user_id'");
			while($row1=mysqli_fetch_array($run1))
			{
				$id1=$row1['id'];
				$name=$row1['name'];
				$email=$row1['email'];
				$mobile=$row1['mobile'];
				$department_id=$row1['department_id'];
				$branch=$row1['branch_id'];
			
				$image=$row1['img_file'];
				$user_role=$row1['user_role'];
				//$book_name=$row1['book_name'];
				// $run2 =mysqli_query($connection,"SELECT * FROM generate_report where student_id='$id1'");	
				//$row2=mysqli_fetch_array($run2);
			}
		}
?>
<h3 class="page-header">Employee Profile</h3>
<div class="col-lg-12">
<div class="container">
	<div clss="row">
		<div class="col-lg-12">
			<div class="col-md-4">
	            <img src="<?php echo $image;?>" height="200" width="300" ></div>
	            <div class="col-md-4"><label style="font-size: 18px;">Name:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $name; ?>
	            </div>

	            <?php 
	            $qry11=mysqli_query($connection,"SELECT COUNT(id) as count FROM common where user_id='$user_id'  and sub_user_id='$id' ")or die(mysqli_error($connection));
	           $row11 = mysqli_fetch_array($qry11);
	            ?>
	            <div class="col-md-4"><label style="font-size: 18px;">Total Student:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="font-size: 18px;"><?php echo $row11['count']; ?></b></div>
	            <div class="col-md-6"><label style="font-size: 18px;">Email:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $email; ?></div>
	             <!-- <div class="col-md-4"><label style="font-size: 18px;">Lost:</label> &nbsp;&nbsp;&nbsp;&nbsp;<?php echo $row1['department']; ?></div> -->
	            <div class="col-md-6"><label style="font-size: 18px;">Mobile:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $mobile; ?></div>
	            <div class="col-md-6"><label style="font-size: 18px;">Department:</label> &nbsp;&nbsp;&nbsp;<?php echo $department_id; ?></div>
	            <div class="col-md-6"><label style="font-size: 18px;">Branch:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $branch; ?></div>
	             <div class="col-md-6"><label style="font-size: 18px;">Role:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $user_role; ?></div>
	            <div class="col-md-6"></div>

           </div>
       </div>
   </div>
<div class="row" >
	<!--  -->

	<!-- <form id="filter" name="filter" method="post"> -->
	
   <input type="hidden" name="us_id" id="us_id" value="<?php echo $user_id; ?>">
	<hr>
	
	<!-- <div class="col-md-1">
		<button type="reset" class="btn btn-danger" value="Reset" onclick="reset()">Reset</button>
	</div>
	 -->
</div>
<div class="panel-body"></div>
<!-- </form> -->
	<div class="col-lg-12" id="reportdata">
        <h4>Student List</h4>
		<table class="datatable table table-striped" id="example" cellspacing="0" width="100%">
			  <thead>
				<tr>
				  <th>Sr. No</th>
  				  <th>Date</th>
				  <th>Student Name</th>
				  <th>Phone NO</th>
				  <th>Email</th>
				  <th>Contact Person</th>
				  <th>Department</th>
				
				</tr>
			  </thead>
			  <tbody>
			   <?php 
			$user_id=$_SESSION['login_user'];
			$utype=$_SESSION['user_type']=$row['type']; 
			$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id' ")or die(mysqli_error($connection));
			$array=mysqli_fetch_array($sub);
			$sub_id=$array['user_id'];
		
				$qry=mysqli_query($connection,"SELECT * FROM common where user_id='$user_id'  and sub_user_id='$id' ORDER BY `id` DESC")or die(mysqli_error($connection));
			
				while($row = mysqli_fetch_array($qry))
				{
						
					$s_name=$row['student_name'];
					$email=$row['email'];
					$contact_no=$row['contact_person'];		
				//	$course_list=$row['course_list'];
					//$course_fee=$row['course_fee'];
					//$assign_to=$row['assign_to'];
					//$assign_to_name=$row['assign_to_name'];
					//$comment=$row['comment'];
					$generated=$row['sub_user_id'];
					$ud=$row['user_id'];
					$sud=$row['sub_user_id'];
				

					
						$sql = mysqli_query($connection,"SELECT * FROM user_profile where user_id='$user_id' and id='$generated'");
						$arr=mysqli_fetch_array($sql);
						$name=$arr['name'];
						$contact1=$arr['mobile'];
						$department=$arr['department_id'];
						
					
					
		?>

				<tr id="invoice-23">
				 
				  <td><?php echo $row['id'];?></td>
		   	<td><?php echo date('d-m-Y',strtotime($row['issue_date']));?></td>
				  
				
				  <td>
				 
				  <?php echo $row['student_name'];?>

				  </td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				  <td><?php echo $row['contact_person'];?></td>
				  <td><?php echo $row['email'];?></td>
				   
				  <td><?php echo $name;?></td>
				   <td><?php echo $department;?></td>
				  
				  <!-- <td><?php echo $row['status'];?></td> -->
				  

				<?php }?>

				   
				</tr>
			
			  </tbody>

			  	
			</table>
			 	
		</div>
</div>


<script type="text/javascript">
    var datefield=document.createElement("input")
    datefield.setAttribute("type", "date")
    if (datefield.type!="date"){ //if browser doesn't support input type="date", load files for jQuery UI Date Picker
        document.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n') 
    }
</script>
    <script>
if (datefield.type!="date"){ //if browser doesn't support input type="date", initialize date picker widget:
    jQuery(function($){ //on document.ready
        $('#fromDate').datepicker();
        $('#toDate').datepicker();
    })
}
</script>