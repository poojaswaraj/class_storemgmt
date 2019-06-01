<?php 
$user_id=$_SESSION['login_user'];
	$utype=$_SESSION['user_type']=$row['type']; 
	$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='user' and id='$user_id'")or die(mysqli_error($connection));
	$array=mysqli_fetch_array($sub);
	 $sub_id=$array['user_id'];
	 $dep=$array['department_id'];
 ?>
<div class="panel-body"></div>
<div class="col-lg-12">
<!-- /.panel-heading -->
<div class="panel-body">
    <!-- Nav tabs -->
   <?php if ($utype=='admin') { ?>
    <ul class="nav nav-tabs">
      <li><?php echo "<a href='dashboard.php?page=enq_daily_plan'>";?> Today's Plan</a></li> 
      <li class="active"><a href="#Today" data-toggle="tab">Tomorrow's Plan</a></li>             
	  <li><?php echo "<a href='dashboard.php?page=enq_Schedule_Pending'>";?>Pending Enquiry</a></li>
	</ul>
<?php }else{ ?>
 <ul class="nav nav-tabs">
      <li><?php echo "<a href='dashboard.php?page=enq_daily_plan'>";?> Today's Plan</a></li> 
      <li class="active"><a href="#Today" data-toggle="tab">Tomorrow's Plan</a></li>             
	  <li><?php echo "<a href='dashboard.php?page=enq_Schedule_Pending'>";?>Pending Enquiry</a></li>
	</ul>
<?php } ?>
<!-- Tab panes -->

<div class="tab-pane fade in active" id="Today">
<div class="panel-body"></div>  <h4>Tomorrow's Plan</h4>
<table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
	<thead>
        <tr>
			<th>Date & Time</th>
			<th>Student Name</th>	
			<th>Email</th>
			<th>Mobile No</th>
			<th>Course</th>	
			<th>Generated By</th>								
		</tr>
	</thead>
    <tbody>
		<?php 
		if ($utype=='user') 
		{
		 $run =mysqli_query($connection,"SELECT c.user_id,c.sub_user_id as s_id, c.generated_by as cust_gen,c.assign_to,c.id,c.name,c.email,c.contact_no,c.course_list, g.* FROM generate_log g INNER JOIN student c ON c.id=g.student_id where g.sche_date=CURDATE()+1 and c.status='active' and g.user_id='$sub_id' and c.user_id='$sub_id' and g.d_name='$dep'")or die(mysqli_error($connection));
		}
		else
		{
		  $run =  mysqli_query($connection,"SELECT c.user_id,c.sub_user_id as s_id,c.generated_by as cust_gen,c.assign_to,c.id,c.name,c.email,c.contact_no,c.course_list ,g.* FROM generate_log g INNER JOIN student c ON c.id=g.student_id where g.sche_date=CURDATE()+1 and c.status='active' and g.user_id='$sub_id' and c.user_id='$sub_id' and g.d_name='$dep'")or die(mysqli_error($connection));
		}
		while($row = mysqli_fetch_array($run))
		{
			$generated_by=$row['cust_gen'];
				
			$ud=$row['user_id'];
			$sud=$row['s_id'];

			if ($ud!=0 && $sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
					$name=$arr['name'];
			}
			$sche_date=$row['sche_date'];	
			$sche_time=$row['sche_time'];
				
			$sche_type=$row['sche_type'];		
				$student_id=$row['student_id'];		
			$student_name=$row['name'];
			$email=$row['email'];
			$contact_no=$row['contact_no'];
			$course_list=$row['course_list'];
			$timestamp1= strtotime($sche_date);
     		$date1=date('d-m-Y',$timestamp1);
     		$datetime=$date1.' '.' '.$sche_time;
		
			
		?>
			<tr>
				<td><?php echo $datetime; ?></td>
				<td>
				<?php if($utype=='admin'){ ?>
				<a href='dashboard.php?page=enquiry_plan&ed=<?php echo $student_id; ?>'><?php echo $student_name; ?></a>
				<?php }else{ ?>
				<a href='dashboard.php?page=enquiry_plan&ed=<?php echo $student_id; ?>'><?php echo $student_name; ?></a>
				<?php } ?>
				</td>
				<td><?php echo $email; ?></td>
				<td><?php echo $contact_no; ?></td>
				<td><?php echo $course_list; ?></td>
				<td><?php echo $name; ?></td>
			</tr>
			</tr>
		<?php }?>


			</tbody>
	</table>
 
</div> 
</div>