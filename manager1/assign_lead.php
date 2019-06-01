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

 <form role="form"  name="frm_student" action="lead_a.php" method="POST" >
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
		  <th>Action</th>
         			
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
                      $c_id=$row['id'];
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

                    <tr>
			<td><?php echo $row['id'];?></td>
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
                     
                        <td><input type="checkbox" name="lead[]"   value="<?php echo $c_id;?> "></td>
		</tr>
		<?php }?>
		</tbody>
	</table>
</div>

 <div class="panel-body"></div>
	
	<div class="col-lg-12">
		
             <div class="panel panel-default">
      <div class="panel-heading">Detail Information<label style="margin-left:695px;"></label></div>
      <div class="panel-body">
            
            
            <div class="col-md-4">
			
			</div>
            
             
            
		
		<!--div class="col-md-4">
		<label>Contact Person Phone Number</label>	<input type="text" class="form-control" name="con_per_no" id="con_per_no" value="<?php echo $data['con_per_no'];?>" placeholder="Contact Person Phone Number"  />
		</div-->
				
					
		<div class="col-md-4">		
			<label>Sales Person Name</label>
			<select name="employee"  class="form-control">
                            <option>Select One</option>
                            <?php
			$qry1=mysqli_query($connection,"SELECT * FROM `user_profile` where `user_id`='$user_id'");
				while($row1=mysqli_fetch_array($qry1))
				{
					$id=$row1['id']
			?>
			<option value="<?php echo $row1['id'];?>"><?php echo $row1['name'];?></option>
			<?php } ?>
			</select>	

					
		</div>
	
	        
		<div class="col-md-4" align="center"><br>
			</label>
		&nbsp;&nbsp;&nbsp;&nbsp;

			<input type="submit" name="submit"  type="submit" class="btn btn-primary" onclick="myfunction()"  value="Submit" >
		
		</div>
	</div>
	</div>
 </div>
 </form>
<script>
    function myfunction(){
        
        alert("Assign Lead Sucessfully!!!")
        
    }
    
    </script>