<?php 

include "config.php";

$data = $_POST['aa'];
$sub_id=$_POST['sub_us_id'];
 $user_id = $_POST['u_id'];
$sub_us_ty= $_POST['sub_us_ty'];
 $txt_code = $_POST['txt_code'];
$txt_ccode = $_POST['txt_ccode'];
$txt_course = $_POST['txt_course'];
// $txt_hsn_no = $_POST['txt_hsn_no'];
// $txt_desc = $_POST['txt_desc'];
$txt_cost = $_POST['txt_cost'];
// $txt_qty = $_POST['txt_qty'];


$select_tax = $_POST['select_tax'];
$txt_discount = $_POST['txt_discount'];
$txt_price = $_POST['txt_price'];
$txt_amt = $_POST['tax_amt'];

$disc_amt = $_POST['disc_amt'];

$dt=date('y-m-d H:i:s');

$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='user'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type'];

// if($type=='user')
// {
// $ssid=$_POST['txt_session'];
 $qu = mysqli_query($connection,"SELECT * FROM item WHERE common_id='$data'");
 $arr=mysqli_fetch_array($qu);
 	$s_id=$arr['session'];
 

$query = mysqli_query($connection,"SELECT * FROM course WHERE course='$txt_course'")or die(mysqli_error($connection));
	$row = mysqli_fetch_array($query);

	$pr_id = $row['id'];
	$sold=$row['sold'];
	// $sold_item=$txt_qty+$sold;

	$count = mysqli_num_rows($query);
if($count>0)
{
	// echo "0";
	$sql21 = mysqli_query($connection,"UPDATE course SET `sub_user_id`='$user_id',`base_price`='$txt_cost',`updated_at`='$dt',`session`='$s_id',`ccode`='$txt_ccode' WHERE id='$pr_id'")or die(mysqli_error($connection));

			if($sql21==true)
			{
				  $last_id1 = mysqli_insert_id($connection);
					
	$sql31 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$sub_id','$user_id','$txt_discount','$txt_amt','$disc_amt','$data','$pr_id','$txt_cost','$txt_price','$s_id','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

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
	$sql2 = mysqli_query($connection,"INSERT INTO course (`user_id`,`sub_user_id`,`course`,`base_price`,`created_at`,`session`,'ccode') VALUES ('$user_id','$sub_id','$txt_course','$txt_cost','$dt','$s_id','$txt_ccode')")or die(mysqli_error($connection));

			if($sql2==true)
			{
				  $last_id1 = mysqli_insert_id();
					
				$sql3 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$sub_id','$user_id','$txt_discount','$txt_amt','$disc_amt','$data','$last_id1','$txt_cost','$txt_price','$s_id','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

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
// }//type user if end
// else{
// 	// $ssid=$_POST['txt_session'];
//  $qu = mysqli_query($connection,"SELECT * FROM item WHERE common_id='$data'");
//  $arr=mysqli_fetch_array($qu);
//  	$s_id=$arr['session'];
 

// $query = mysqli_query($connection,"SELECT * FROM course WHERE course='$txt_course'")or die(mysqli_error($connection));
// 	$row = mysqli_fetch_array($query);

// 	$pr_id = $row['id'];
// 	$sold=$row['sold'];
// 	// $sold_item=$txt_qty+$sold;

// 	$count = mysqli_num_rows($query);
// if($count>0)
// {
// 	// echo "0";
// 	$sql21 = mysqli_query($connection,"UPDATE course SET `sub_user_id`='$sub_id',`base_price`='$txt_cost',`updated_at`='$dt',`session`='$s_id',`ccode`='$txt_ccode' WHERE id='$pr_id'")or die(mysqli_error($connection));

// 			if($sql21==true)
// 			{
// 				  $last_id1 = mysqli_insert_id($connection);
					
// 				$sql31 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$user_id','$sub_id','$txt_discount','$txt_amt','$disc_amt','$data','$pr_id','$txt_cost','$txt_price','$s_id','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

// 	 				if($sql31==true)
// 		 				{
// 		 					$item_id=mysqli_insert_id($connection);
					
//  								if(!empty($_POST['chk'])) 
//  								{
// 	    							foreach($_POST['chk'] as $check) 
// 	    							 {
// 			 							$sql61 = mysqli_query($connection,"INSERT INTO item_tax (`item_id`,`tax_value`) VALUES ('$item_id','$check')");
					 							
// 					 						 if($sql61==true)
// 					 							{
// 					 								echo "1";
// 					 							}
// 												else
// 												{
// 													echo "error";
// 												}
// 									 }
// 								}
// 								else
// 								{
// 									echo "1";
// 								}
// 		 				}			
// 			}

// }
// else{
// 	$sql2 = mysqli_query($connection,"INSERT INTO course (`user_id`,`sub_user_id`,`course`,`base_price`,`created_at`,`session`,`ccode`) VALUES ('$user_id','$sub_id','$txt_course','$txt_cost','$dt','$s_id','$txt_ccode')")or die(mysqli_error($connection));

// 			if($sql2==true)
// 			{
// 				  $last_id1 = mysqli_insert_id();
					
// 				$sql3 = mysqli_query($connection,"INSERT INTO item (`user_id`,`sub_user_id`,`discount`,`tax_amt`,`disc_amt`,`common_id`,`product_id`,`unitary_cost`,`price`,`session`,`state_code`,`status`,`type`,`ccode`) VALUES ('$user_id','$sub_id','$txt_discount','$txt_amt','$disc_amt','$data','$last_id1','$txt_cost','$txt_price','$s_id','$txt_code','1','invoice','$txt_ccode')")or die(mysqli_error($connection));

// 	 				if($sql3==true)
// 		 				{
// 		 					$item_id=mysqli_insert_id();
					
//  								if(!empty($_POST['chk'])) 
//  								{
// 	    							foreach($_POST['chk'] as $check) 
// 	    							 {
       							  
// 			 							$sql6 = mysqli_query($connection,"INSERT INTO item_tax (`item_id`,`tax_value`) VALUES ('$item_id','$check')");
					 							
// 					 						 if($sql6==true)
// 					 							{
// 					 								echo "1";
// 					 							}
// 												else
// 												{
// 													echo "error";
// 												}
// 									 }
// 								}
// 								else
// 								{
// 									echo "1";
// 								}
		 										
// 		 				}
		 				
// 			}
// }

// }
 ?>
