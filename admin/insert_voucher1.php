<?php

include "config.php";
	
	$user_id = $_POST['user_id'];
	$sub_id = $_POST['sub_us_id'];
	$txt_dt = $_POST['txt_dt'];
	$party_name = $_POST['party_name'];
	$paytm_name = $_POST['paytm_name'];
	$cashback = $_POST['cashback'];
	$txt_pert = $_POST['txt_pert'];
	$txt_gst = $_POST['txt_gst'];
	$txt_hsn = $_POST['txt_hsn'];	
	// $voucher_no = $_POST['voucher_no'];
	$base_amt = $_POST['base_amt'];
	

	$select_tax = $_POST['select_tax'];	
	$total_amt = $_POST['total_amt'];
    $total_amt1=$total_amt-$cashback;
	$sel_mode = $_POST['sel_mode'];
	$cheque_no = $_POST['cheque_no'];
	$cheque_dt = $_POST['cheque_dt'];
	$state = $_POST['state'];
	$txt_code = $_POST['txt_code'];
	$r_cash= $_POST['r_cash'];
	//$ret_app = $_POST['ret_app'];
	 $sql_query1 = mysqli_query($connection,"UPDATE `paytm` SET `cash`=cash-$total_amt1 WHERE `name`='$paytm_name'")or die(mysqli_error($connection));


	$sql_query = mysqli_query($connection,"INSERT INTO `add_expense`(`user_id`, `sub_user_id`,`date`,`party_name`,`txt_pert`,`txt_gst`,`txt_hsn`,`base_amt`,`select_tax`, `total_amt`,`sel_mode`,`cheque_no`,`cheque_dt`,`state`,`code`,`paytm_name`,`cashback`,`r_cash`) VALUES ('$user_id','$sub_id','$txt_dt','$party_name','$txt_pert','$txt_gst','$txt_hsn','$base_amt','$select_tax','$total_amt','$sel_mode','$cheque_no','$cheque_dt','$state','$txt_code','$paytm_name','$cashback','$r_cash')")or die(mysqli_error($connection));

if($sql_query)
	{
		$last_id = mysqli_insert_id($connection);

		 if(!empty($_POST['chk'])) 
		  	{
				foreach($_POST['chk'] as $check) 
				 {
					$sql = mysqli_query($connection,"INSERT INTO purches_tax (`purches_id`,`tax_value`) VALUES ('$last_id','$check')");
							
						if($sql==true)
							{
								echo "1";
							}
						else
						{
							echo "error";
						}
				 }
			}
			else{
				echo "1";
			}
	}
	?>