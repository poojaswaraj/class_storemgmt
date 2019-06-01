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
		  <!-- <th>Course List</th>
          <th>Fees</th>
		  <th>Comments</th> -->
		  <th>Contact Person</th>
		  <th>Contact NO.</th>
		  <th>Department</th>
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
		
				$qry=mysqli_query($connection,"SELECT * FROM student where user_id='$user_id' and status='active' ORDER BY `id` DESC")or die(mysqli_error($connection));
			
				while($row = mysqli_fetch_array($qry))
				{
						
					$s_name=$row['name'];
					$email=$row['email'];
					$contact_no=$row['contact_no'];		
					$course_list=$row['course_list'];
					$course_fee=$row['course_fee'];
					$assign_to=$row['assign_to'];
					$assign_to_name=$row['assign_to_name'];
					$comment=$row['comment'];
					$generated=$row['generated_by'];
					$ud=$row['user_id'];
					$sud=$row['sub_user_id'];
				

					
						$sql = mysqli_query($connection,"SELECT * FROM user_profile where user_id='$user_id' and id='$generated'");
						$arr=mysqli_fetch_array($sql);
						$name=$arr['name'];
						$contact1=$arr['mobile'];
						$department=$arr['department_id'];
						
					
					
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
			<!-- <td><?php echo $course_list; ?></td>
			<td><?php echo $course_fee; ?></td>
			<td><?php echo $comment; ?></td> -->
			<td><?php echo $name; ?></td>
			<td><?php echo $contact1; ?></td>
			<td><?php echo $department; ?></td>
			<td><?php echo $assign_to_name; ?></td>
			
		</tr>
		<?php }?>
		</tbody>
	</table>
</div>