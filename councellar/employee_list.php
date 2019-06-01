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
			$run = mysqli_query($connection,"SELECT * FROM user_profile where user_id='$sess_id11'");
			$count=0;
			while($row = mysqli_fetch_array($run))
			{
				$name=$row['name'];		
				$email=$row['email'];		
				$phn=$row['mobile'];
				$password=$row['password'];
				$count++;
				
	echo"<tr>
		<td>$count</td>		
		<td>$name</td>		
		<td>$phn</td>
		<td>$email</td>
		<td>$password</td>
			
		";?>		
		  </tr>
	<?php }?>
			</tbody>
	</table>
</div>
