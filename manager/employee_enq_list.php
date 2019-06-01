<div class="col-lg-12">
<h3 class="page-header">Log Report</h3>
<form role="form" id="frm_cust" name="frm_cust" autocomplete="on" action="" method="POST" enctype="multipart/form-data">
<div class="panel-body">
<div class="col-sm-6">			
			<div class="col-md-6"><label>To:</label><input type="date" class="form-control" id="todate" name="todate" ></div>
			<div class="col-md-6"><label>From:</label><input type="date" class="form-control" id="fromdate" name="fromdate" ></div>
</div>
<div class="col-sm-6">			
			<div class="col-md-6"><label>Select Employee:</label>
			<select name="select_emp" id="select_emp" class="form-control" >
			<option value=""></option>
<?php
			$user_id=$_SESSION['login_user'];
			$utype=$_SESSION['user_type']=$row['type']; 
			$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
			$array=mysqli_fetch_array($sub);
			$sub_id=$array['user_id'];
			$qry6=mysqli_query($connection,"SELECT * FROM `user_profile` where user_id='$user_id'");
			while($row6=mysqli_fetch_array($qry6))
						{
?>
			<option value="<?php echo $row6['id'];?>"><?php echo $row6['name'];?></option>
			<?php 		} ?>			
			</select></div>
			<div class="col-md-6">
			<center><button type="submit"  name="show_data" class="btn btn-md btn-primary " style="margin-top:20px;"><font size="" >Show</font></button></center>
			</div>
</div>
</div>
</div>
<div class="panel-body"></div>
<table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
	  <thead>
        <tr>			<th>Schedule Date</th>				
						<th>Employee Name</th>	
						<th>Enq Name</th>
						<th>Status</th>						
						
		</tr>
	   </thead>
      <tbody>
  
	<?php
	
	
	if(isset($_POST['show_data']))
			{
			$todate=$_POST['todate'];
			$fromdate=$_POST['fromdate'];
			$select_emp=$_POST['select_emp'];
			$run = mysqli_query($connection,"SELECT * FROM generate_log where sche_date BETWEEN '$todate' AND '$fromdate' and generated_by='$select_emp' and user_id='$user_id' and sub_user_id='$select_emp'");
	
	while($row = mysqli_fetch_array($run))
	{
		
		$sch_date=$row['sche_date'];
		$emp_status=$row['en_status'];	
		$name=$row['generated_by'];		
		$enq=$row['student_id'];
	
		$var5=mysqli_query($connection,"select * from admin_enquiry_status where enquiry_status_id='$emp_status'");
		$row5=mysqli_fetch_array($var5);
		$var4=mysqli_query($connection,"select * from student where id='$enq'");
		$row4=mysqli_fetch_array($var4);
		$generated_by=$row4['generated_by'];
			
							$ud=$row4['user_id'];
							$sud=$row4['sub_user_id'];
							$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$name'");
							$arr=mysqli_fetch_array($sql);
							//$name_ge=$arr['name'];
							$name_ge=$row4['assign_to'];
			
		
		echo"<tr>
		<td>$sch_date</td>
		<td>$name_ge</td>		
		<td><a href='dashboard.php?page=view_enquiry_plan&ed=".$row4['id']."'>".$row4['name']."</a></td>	
		<td>".$row5['enquiry_status']."</td>		
				
		";?>		
		</tr>
			<?php } }
			?>
	</tbody>
	</table>
</div>
</form>
</div>