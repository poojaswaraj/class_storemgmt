<div class="col-lg-12">
<h3 class="page-header">Enquiry List</h3>
<table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
		<thead>
	        <tr>
	      <th>Id</th>          
          <th>Date</th>
		  <th>Student Name</th>          
          <th>Email Id</th>
          <th>Phone Number</th>		 
		  <th>Contact Persont</th>
          <th>Contact Number</th>
		  <th>Department</th>
		  <th>Assign To</th>
         			
			</tr>
		</thead>
	    <tbody>
	     <?php 
		 	$user_id=$_SESSION['login_user'];
			$utype=$_SESSION['user_type']=$row['type']; 
			$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='user' and id='$user_id'")or die(mysqli_error($connection));
			$array=mysqli_fetch_array($sub);
		$sub_id=$array['user_id'];
		
				$qry=mysqli_query($connection,"SELECT * FROM student where user_id='$sub_id' and sub_user_id='$user_id'  and status='active' ORDER BY `id` DESC")or die(mysqli_error($connection));
			
				while($row = mysqli_fetch_array($qry))
				{
						
					$s_name=$row['name'];
					$email=$row['email'];
					$contact_no=$row['contact_no'];		
					$course_list=$row['course_list'];
					$course_fee=$row['course_fee'];
					$assign_to=$row['assign_to'];
					$comment=$row['comment'];
					$generated=$row['generated_by'];
					$ud=$row['user_id'];
					$sud=$row['sub_user_id'];
					$assign_to_name=$row['assign_to_name'];

					if ($ud!=0 && $sud!=0) 
					{
					 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated'");
						$arr=mysqli_fetch_array($sql);
							$ud=$arr['name'];
								$contact_no=$arr['mobile'];
								$department_id=$arr['department_id'];
					}
					else{
						$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated'");
						$arr=mysqli_fetch_array($sql);
							$ud=$arr['name'];
								$contact_no=$arr['contact'];
					}
					
		?>

		<tr><td><?php echo $row['id'];?></td>
		   	<td><?php echo date('d-m-Y',strtotime($row['cur_date']));?></td>
			
			<td>
			<?php if ($utype=='admin') {?> 
			<a href='dashboard.php?page=view_enquiry_plan&ed=<?php echo $row['id']?>'><?php echo $s_name;  ?></a>
			<?php }else{ ?>
			<a href='dashboard.php?page=enquiry_plan&ed=<?php echo $row['id']?>'><?php echo $s_name;  ?></a>
			<?php } ?>
			</td>
			<td><?php echo $email; ?></td>
			<td><?php echo $contact_no; ?></td>
			<td><?php echo $ud; ?></td>
			<td><?php echo $contact_no;?></td>
			<td><?php echo $department_id;?></td>
			<td><?php echo $assign_to_name; ?></td>
			
		</tr>
		<?php }?>
		</tbody>
	</table>
</div>