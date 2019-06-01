<style>

    td {
        border: none;
        text-align: left;
        padding: 8px;
    }
    
    th {
        border: none;
        text-align: left;
        padding: 8px;
        background-color:#ddd;
    
    }
</style>
<?php 
$user_id=$_SESSION['login_user'];
$utype=$_SESSION['user_type']=$row['type']; 
$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
$array=mysqli_fetch_array($sub);
$sub_id=$array['user_id'];
 ?>
<div class="col-lg-12">
<div class="panel-body">
    <!-- Nav tabs -->
    <?php 
    if($utype=='admin')
    {
   ?>
    <ul class="nav nav-tabs">
      <li><?php echo "<a href='dashboard.php?page=daily_plan'>";?> Today's Plan</a></li>
      <li><?php echo "<a href='dashboard.php?page=tommorrow_plan'>";?> Tomorrow's Plan</a></li>
      <li class="active"><a href="#Pending" data-toggle="tab">Pending Schedules</a></li>
	  <li><?php echo "<a href='dashboard.php?page=empty_log'>";?> Empty Logs</a></li>
      
    </ul>
    <?php }
    else{
     ?>
     <ul class="nav nav-tabs">
      <li><?php echo "<a href='user_dashboard.php?page=daily_plan'>";?> Today's Plan</a></li>
      <li><?php echo "<a href='user_dashboard.php?page=tommorrow_plan'>";?> Tomorrow's Plan</a></li>
      <li class="active"><a href="#Pending" data-toggle="tab">Pending Schedules</a></li>
    </ul>
   <?php  }?> 

   

<div class="tab-pane fade in active" id="Pending">
<div class="panel-body"></div>
 <table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
	<thead>
        <tr>
		  <th>Date & Time</th>
		  <th>Student Name</th>          
          <th>Email Id</th>
          <th>Phone Number</th>		 
		  <th>Course List</th>
          <th>Fees</th>
		  <th>Assign To</th>									
		</tr>
	 </thead>
      <tbody>
<?php
$cur_date=date("Y-m-d");
$run = mysqli_query($connection,"SELECT Distinct(`student_id`), MAX(`sche_date`),`generated_by`,`sche_time`,`sche_type`,`user_id` FROM generate_log where `status`='active' GROUP BY `generated_by`, `student_id` HAVING `user_id`='$user_id' and MAX(`sche_date`)<'$cur_date' ")or die(mysqli_error($connection));
//$count=0;
	while($row = mysqli_fetch_array($run))
	{
		$generated_by=$row['generated_by'];
		$sche_date=$row['MAX(`sche_date`)'];	
		$sche_time=$row['sche_time'];
		$timestamp1= strtotime($sche_date);
     	$date1=date('d-m-Y',$timestamp1);
     	$datetime=$date1.' '.' '.$sche_time;
		$sche_type=$row['sche_type'];		
		$student_id=$row['student_id'];		
		

		$var6=mysqli_query($connection,"select * from student where id='$student_id'");
		$row6=mysqli_fetch_array($var6);
			//$generated_by=$row6['assign_to'];
							
							$ud=$row6['user_id'];
							$sud=$row6['sub_user_id'];
							$student_name=$row6['name'];
	                    	$email=$row6['email'];
	                    	$course_list=$row6['course_list'];
	                    	$course_fee=$row6['course_fee'];
	                    	$contact_no=$row6['contact_no'];
	                    	$assign_to=$row6['assign_to'];
	                    	$assign_to_name=$row6['assign_to_name'];

			
			
							if ($ud!=0 && $sud!=0) 
							{
								$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
								$arr=mysqli_fetch_array($sql);
							}
							else{
								$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
								$arr=mysqli_fetch_array($sql);
							}
							//$name=$arr['name'];
		
	echo"<tr>
		
		<td>$datetime</td>
		<td><a href='dashboard.php?page=view_enquiry_plan&ed=".$row6['id']."'>".$student_name."</a></td>		
			
		

		";?>
	  <td><?php echo $email; ?></td>
		<td><?php echo $contact_no; ?></td>
		<td><?php echo $course_list; ?></td>
		<td><?php echo $course_fee; ?></td>
		<td><?php echo $assign_to_name; ?></td>
				
		  </tr>
	<?php } ?>

			</tbody>
	</table>
</div>
</div> 