 <div class="col-lg-12">
	        <div class="panel-body">
	
							<ul class="nav nav-tabs">
							  <li><?php echo "<a href='dashboard.php?page=daily_plan'>";?> Today's Plan</a></li>
							  <li><?php echo "<a href='dashboard.php?page=tommorrow_plan'>";?> Tomorrow's Plan</a></li>
							  <li><?php echo "<a href='dashboard.php?page=Schedule_Pending'>";?>Pending Schedules</a></li>
							  <li class="active"><a href="#Empty_log" data-toggle="tab">Empty Logs</a></li>
							</ul>
   
                      
                            
                                <div class="tab-pane fade in active" id="Empty_log">
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
$user_id=$_SESSION['login_user'];
$utype=$_SESSION['user_type']=$row['type']; 
$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
$array=mysqli_fetch_array($sub);
$sub_id=$array['user_id'];

$run = mysqli_query($connection,"SELECT * FROM student WHERE status='active' and id NOT IN (SELECT student_id FROM generate_log) and user_id='$user_id'")or die(mysqli_error($connection));
$count=0;
	while($row = mysqli_fetch_array($run))
	{ 	
		$generated_by=$row['generated_by'];
		$assign_to=$row['assign_to'];
		$cur_date=$row['cur_date'];	
		//$cust_time=$row['cust_time'];
		//$datetime=$cust_date.' '.' '.$cust_time;				
		$student_id=$row['id'];		
		$count++;
							
							$var6=mysqli_query($connection,"select * from student where id='$student_id'");
							$row6=mysqli_fetch_array($var6);
							$ud=$row6['user_id'];
							$sud=$row6['sub_user_id'];
							$student_name=$row6['name'];
	                    	$email=$row6['email'];
	                    	$course_list=$row6['course_list'];
	                    	$course_fee=$row6['course_fee'];
	                    	$contact_no=$row6['contact_no'];
	                    	$assign_to=$row6['assign_to'];
							
							if ($ud!=0 && $sud!=0) 
							{
								$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$assign_to'");
								$arr=mysqli_fetch_array($sql);
							}
							else{
								$sql = mysqli_query($connection,"SELECT * FROM user where id='$assign_to'");
								$arr=mysqli_fetch_array($sql);
							}
							$name=$arr['name'];
		
		
	echo"<tr>
	
		
		<td>$cur_date</td>
		<td><a href='dashboard.php?page=view_enquiry_plan&ed=".$row6['id']."'>".$row6['name']."</a></td>		
			
			
		";?>
           <td><?php echo $email; ?></td>
           <td><?php echo $course_list; ?></td>
           <td><?php echo $course_fee; ?></td>
           <td><?php echo $contact_no; ?></td>
           <td><?php echo $assign_to; ?></td>
		  </tr>
	<?php }?>

			</tbody>
	</table>
</div>
</div>  