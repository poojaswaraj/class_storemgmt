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
<h3 class="page-header">Employee List</h3>
<table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
	<thead>
        <tr>
						<th>Sr.No.</th>
						<th>Name</th>
						<th>Contact No</th>									
						<th>Email</th>	
						<th>Password</th>														
		</tr> 
	 </thead>
      <tbody>
	     	<?php 
			$sess_id11=$_SESSION['login_user'];
			$run = mysqli_query($connection,"SELECT * FROM user_profile ");
			$count=0;
			while($row = mysqli_fetch_array($run))
			{
				$name=$row['name'];		
				$email=$row['email'];		
				$phn=$row['mobile'];
				$password=$row['password'];
				$count++;
				?>
				
	<tr>
		<td><?php echo $count;  ?></td>		
		<td><a href="dashboard.php?page=contact_person&ed=<?php echo $row['id']?>"><?php echo $name;  ?></a></td>		
		<td><?php echo $phn;  ?></td>
		<td><?php echo $email;  ?></td>
		<td><?php echo $password;  ?></td>
			
		
		  </tr>
	<?php }?>
			</tbody>
	</table>
</div>
