<?php

include "config.php";

// $user_id=$_SESSION['login_user'];

$fromdate=strtotime($_POST['fromDate']); 
$fromdate=date("Y-m-d",$fromdate);
$todate=strtotime($_POST['toDate']); 
$todate=date("Y-m-d",$todate);
$utype="admin";
  $user_id = $_POST['us_id'];
?>     
<table id="example" class="datatable table table-striped">
  <thead>
    <tr>
       <th>Sr. No</th>
				  <th>Invoice Number</th>
				  <th>Student Name</th>
				  <th>Mobile No</th>
				  <th>Contact Person</th>
				  <th>Issue Date</th>
				  <th>Due Date</th>
				  <th>Status</th>
				  <th>Due</th>
				 
				  <th>Total</th>
				  <th>Type</th>
  </thead>
  <tbody>
        <?php
			if($fromdate!='' && $todate!='')
				{
					$sr_no=0;
		          $sql1 =mysqli_query($connection,"SELECT * From common WHERE  date(issue_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' ORDER BY issue_date DESC ")or die(mysqli_error($connection));
		          
		           while($row=mysqli_fetch_array($sql1))
					{
						$sr_no++;
						$id1=$row['id'];
						$due=$row['due_amt'];
						$amt=$row['gross_amount'];
						$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];

			   ?>
				<tr id="invoice-23">
				 <td><?php echo $sr_no;?></td> 
				

				  <td><?php echo $row['number'];?></td>
				
				  <td>
				
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['student_name'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['student_name'];?></a>
				   <?php } ?>

				 <td><?php echo $row['contact_person'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				  <td><?php echo date('d-m-Y', strtotime($row['issue_date']));?></td>
				  <td><?php echo date('d-m-Y', strtotime($row['due_date']));?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				  <td><?php echo $row['due_amt'];?></td>
				 
				  <td><?php echo $row['gross_amount'];?></td>
				  <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  <td><a href="dashboard.php?page=add_receipt1&id=<?php echo $row['id'];?>"><button class="btn btn-primary" disabled >Payment</button></a></td>
				  <?php }
				  		else{
				   ?>
				  	   <td><a href="dashboard.php?page=add_receipt1&id=<?php echo $row['id'];?>"><button class="btn btn-primary" >Payment</button></a></td>
				  	   
				  <?php } ?>

				   
				  
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        
			    <?php
					
			       }
			    }
			    ?>
			  </tbody>

			  	
			</table>
		
   
          
