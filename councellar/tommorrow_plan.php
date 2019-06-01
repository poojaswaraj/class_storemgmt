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
        <?php if ($utype=='admin'){ ?>
        <ul class="nav nav-tabs">
          <li><?php echo "<a href='dashboard.php?page=daily_plan'>";?> Today's Plan</a></li> 
          <li class="active"><a href="#Today" data-toggle="tab">Tomorrow's Plan</a></li>
		  <li><?php echo "<a href='dashboard.php?page=Schedule_Pending'>";?>Pending Schedules</a></li>
		<li><?php echo "<a href='dashboard.php?page=empty_log'>";?> Empty Logs</a></li>
      </ul>
		<?php }
		else{
		 ?>
		 <ul class="nav nav-tabs">
          <li><?php echo "<a href='user_dashboard.php?page=daily_plan'>";?> Today's Plan</a></li> 
          <li class="active"><a href="#Today" data-toggle="tab">Tomorrow's Plan</a></li>
		  <li><?php echo "<a href='user_dashboard.php?page=Schedule_Pending'>";?>Pending Schedules</a></li>
		</ul>
		<?php }?>
        <!-- Tab panes -->
<div class="tab-pane fade in active" id="Today">
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
		$run = mysqli_query($connection,"SELECT c.user_id,c.sub_user_id as s_id,c.generated_by as cust_gen,c.assign_to,c.id,c.name, g.* FROM generate_log g INNER JOIN student c ON c.id=g.student_id where g.sche_date=CURDATE()+1 and c.status='active' and g.user_id='$user_id' and c.user_id='$user_id'")or die(mysqli_error($connection));


		while($row = mysqli_fetch_array($run))
		{
			$generated_by=$row['cust_gen'];
					
			$ud=$row['user_id'];
			$sud=$row['s_id'];

			if ($ud!=0 && $sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user a INNER JOIN user_profile b on a.id=b.user_id where b.id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
			}

			$assign_to=$row['assign_to'];
			$sche_date=$row['sche_date'];	
			$sche_time=$row['sche_time'];
			$datetime=$sche_date.' '.' '.$sche_time;	
			$sche_type=$row['sche_type'];		
			$student_id=$row['student_id'];		
			$student_name=$row['name'];
			$email=$row['email'];
			$course_list=$row['course_list'];
			$course_fee=$row['course_fee'];
			$contact_no=$row['contact_no'];
			//$name=$arr['name'];
			if($assign_to==0){
						 	$sql1= mysqli_query($connection,"SELECT * FROM user where id='$user_id'");
							$arr1=mysqli_fetch_array($sql1);
						}
						else{
							$sql1 = mysqli_query($connection,"SELECT * FROM user_profile where id='$assign_to'");
							$arr1=mysqli_fetch_array($sql1);
						}
						$name_ass=$arr1['name'];
						
		?>
			<tr>
				<td><?php echo $datetime; ?></td>
				<td>
				<?php if($utype=='admin'){ ?>
				<a href='dashboard.php?page=view_enquiry_plan&ed=<?php echo $student_id; ?>'><?php echo $student_name; ?></a>
				<?php }else{ ?>
				<a href='user_dashboard.php?page=view_enquiry_plan&ed=<?php echo $student_id; ?>'><?php echo $student_name; ?></a>
				<?php } ?>
				</td>
				        <td><?php echo $email; ?></td>
						<td><?php echo $contact_no; ?></td>
						<td><?php echo $course_list; ?></td>
						<td><?php echo $course_fee; ?></td>
					
						<td><?php echo $assign_to; ?></td>
						
			</tr>
		<?php }?>
</tbody>
</table>
</div>
