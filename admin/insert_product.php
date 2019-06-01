<?php 
 //var_dump($_POST);
include "config.php";

 $user_id =$_POST['user_id'];
 $sub_id =$_POST['sub_us_id'];
$sub_us_ty= $_POST['sub_us_ty'];

$txt_code = $_POST['txt_code'];

$txt_course = $_POST['txt_course'];
$txt_ccode = $_POST['txt_ccode'];
// $txt_hsn_no = $_POST['txt_hsn_no'];
 $txt_desc = $_POST['txt_desc'];
$txt_cost = $_POST['txt_cost'];
// $txt_qty = $_POST['txt_qty'];
$select_tax = $_POST['select_tax']; 
$txt_discount = $_POST['txt_discount'];
$txt_price = $_POST['txt_price'];
$txt_amt = $_POST['tax_amt'];
$disc_amt = $_POST['disc_amt'];

$dt=date('y-m-d H:i:s');

$ssid=$_POST['txt_session'];

$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type'];

if($type=='user')
{

$query = mysqli_query($connection,"SELECT * FROM course WHERE course='$txt_course'")or die(mysqli_error($connection));
	$row = mysqli_fetch_array($query);

	$pr_id = $row['id'];
	// $units = $row['units'];
	// $sold=$units-$txt_qty;
	//$sold=$row['sold'];
	//$sold_item=$txt_qty+$sold;

	$count = mysqli_num_rows($query);
if($count>0)
{
	// echo "0";
	$sql21 = mysqli_query($connection,"UPDATE course SET `user_id`='$sub_id',`sub_user_id`='$user_id',`base_price`='$txt_cost',`updated_at`='$dt',`session`='$ssid',`ccode`='$txt_ccode',`description`='$txt_desc' WHERE id='$pr_id'")or die(mysqli_error($connection));

			if($sql21==true)
			{
				  $last_id1 = mysqli_insert_id($connection);

				  $temp=0;
			$aa = mysqli_query($connection,"SELECT * FROM common ")or die(mysqli_error($connection));
				while($rr=mysqli_fetch_array($aa))
				  {
				  	 $c_id= $rr['id'];
				  }
				  if(!empty($c_id)){
				     $temp=$c_id+1;
				  }
				  else{
				  		 $temp=0+1;
				  }	
					
				$sql31 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$sub_id','$user_id','$txt_discount','$txt_amt','$disc_amt','$temp','$pr_id','$txt_cost','$txt_price','$ssid','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

	 				if($sql31==true)
		 				{
		 					$item_id=mysqli_insert_id();
					
 								if(!empty($_POST['chk'])) 
 								{
	    							foreach($_POST['chk'] as $check) 
	    							 {
			 							$sql61 = mysqli_query($connection,"INSERT INTO item_tax (`item_id`,`tax_value`) VALUES ('$item_id','$check')");
					 							
					 						 if($sql61==true)
					 							{
					 								echo "1";
					 							}
												else
												{
													echo "error";
												}
									 }
								}
								else
								{
									echo "1";
								}
		 				}			
			}

}
else{

	$sql2 = mysqli_query($connection,"INSERT INTO course (`user_id`,`sub_user_id`,`course`,`base_price`,`created_at`,`session`,`ccode`,`description`) VALUES ('$sub_id','$user_id','$txt_course','$txt_cost','$dt','$ssid','$txt_ccode','$txt_desc')")or die(mysqli_error($connection));

			if($sql2==true)
			{
				  $last_id1 = mysqli_insert_id($connection);

				  $temp=0;
			$aa = mysqli_query($connection,"SELECT * FROM common ")or die(mysqli_error($connection));
				while($rr=mysqli_fetch_array($aa))
				  {
				  	 $c_id= $rr['id'];
				  }
				  if(!empty($c_id)){
				     $temp=$c_id+1;
				  }
				  else{
				  		 $temp=0+1;
				  }	
					
				$sql3 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$sub_id','$user_id','$txt_discount','$txt_amt','$disc_amt','$temp','$last_id1','$txt_cost','$txt_price','$ssid','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

	 				if($sql3==true)
		 				{
		 					$item_id=mysqli_insert_id();
					
 								if(!empty($_POST['chk'])) 
 								{
	    							foreach($_POST['chk'] as $check) 
	    							 {
       							  
			 							$sql6 = mysqli_query($connection,"INSERT INTO item_tax (`item_id`,`tax_value`) VALUES ('$item_id','$check')");
					 							
					 						 if($sql6==true)
					 							{
					 								echo "1";
					 							}
												else
												{
													echo "error";
												}
									 }
								}
								else
								{
									echo "1";
								}
		 										
		 				}
		 				
			}
 	}
 }//type user if end
 else{

$query = mysqli_query($connection,"SELECT * FROM course WHERE course='$txt_course'")or die(mysqli_error($connection));
	$row = mysqli_fetch_array($query);

	$pr_id = $row['id'];
	// $units = $row['units'];
	// $sold=$units-$txt_qty;
	//$sold=$row['sold'];
	// $sold_item=$txt_qty+$sold;

	$count = mysqli_num_rows($query);
if($count>0)
{
	// echo "0";
	$sql21 = mysqli_query($connection,"UPDATE course SET `user_id`='$user_id',`sub_user_id`='$sub_id',`base_price`='$txt_cost',`updated_at`='$dt',`session`='$ssid',`ccode`='$txt_ccode',`description`='$txt_desc' WHERE id='$pr_id'")or die(mysqli_error($connection));

			if($sql21==true)
			{
				  $last_id1 = mysqli_insert_id($connection);

				  $temp=0;
			$aa = mysqli_query($connection,"SELECT * FROM common ")or die(mysqli_error($connection));
				while($rr=mysqli_fetch_array($aa))
				  {
				  	 $c_id= $rr['id'];
				  }
				  if(!empty($c_id)){
				     $temp=$c_id+1;
				  }
				  else{
				  		 $temp=0+1;
				  }	
					
				$sql31 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$user_id','$sub_id','$txt_discount','$txt_amt','$disc_amt','$temp','$pr_id','$txt_cost','$txt_price','$ssid','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

	 				if($sql31==true)
		 				{
		 					$item_id=mysqli_insert_id($connection);
					
 								if(!empty($_POST['chk'])) 
 								{
	    							foreach($_POST['chk'] as $check) 
	    							 {
			 							$sql61 = mysqli_query($connection,"INSERT INTO item_tax (`item_id`,`tax_value`) VALUES ('$item_id','$check')");
					 							
					 						 if($sql61==true)
					 							{
					 								echo "1";
					 							}
												else
												{
													echo "error";
												}
									 }
								}
								else
								{
									echo "1";
								}
		 				}			
			}

}
else{

	$sql2 = mysqli_query($connection,"INSERT INTO course (`user_id`,`sub_user_id`,`course`,`base_price`,`created_at`,`session`,`ccode`,`description`) VALUES ('$user_id','$sub_id','$txt_course','$txt_cost','$dt','$ssid','$txt_ccode','$txt_desc')")or die(mysqli_error($connection));

			if($sql2==true)
			{
				  $last_id1 = mysqli_insert_id($connection);

				  $temp=0;
			$aa = mysqli_query($connection,"SELECT * FROM common ")or die(mysqli_error($connection));
				while($rr=mysqli_fetch_array($aa))
				  {
				  	 $c_id= $rr['id'];
				  }
				  if(!empty($c_id)){
				     $temp=$c_id+1;
				  }
				  else{
				  		 $temp=0+1;
				  }	
					
				$sql3 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$user_id','$sub_id','$txt_discount','$txt_amt','$disc_amt','$temp','$last_id1','$txt_cost','$txt_price','$ssid','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

	 				if($sql3==true)
		 				{
		 					$item_id=mysqli_insert_id();
					
 								if(!empty($_POST['chk'])) 
 								{
	    							foreach($_POST['chk'] as $check) 
	    							 {
       							  
			 							$sql6 = mysqli_query($connection,"INSERT INTO item_tax (`item_id`,`tax_value`) VALUES ('$item_id','$check')");
					 							
					 						 if($sql6==true)
					 							{
					 								echo "1";
					 							}
												else
												{
													echo "error";
												}
									 }
								}
								else
								{
									echo "1";
								}
		 										
		 				}
		 				
			}
 	}
 }
?>