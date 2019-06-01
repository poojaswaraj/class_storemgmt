<?php

include "config.php";
	
	$user_id = $_POST['user_id'];
	$sub_id = $_POST['sub_us_id'];
	$txt_dt = $_POST['txt_dt'];
	$total_expense = $_POST['total_expense'];
	//$txt_pert = $_POST['txt_pert'];
	$paytm_exp = $_POST['paytm_exp'];

	$pay_bal = $_POST['pay_bal'];
	$pay_bal1 = $_POST['pay_bal1'];
	// $txt_gst = $_POST['txt_gst'];
	$invoice_no = $_POST['invoice_no'];
	$voucher_no = $_POST['voucher_no'];
	$txt_client = $_POST['txt_client'];
	$txt_hsn = $_POST['txt_hsn'];
	$base_amt = $_POST['base_amt'];
	$tax_amt = $_POST['tax_amt'];
	$total_amt = $_POST['total_amt'];
	$state = $_POST['state'];
	$state1 = $_POST['state1'];
	$cheque_no = $_POST['cheque_no'];
	$Banking = $_POST['Banking'];
	$p_d = $_POST['p_d'];
	$p_n = $_POST['p_n'];
	$bank_expense = $_POST['bank_expense'];
	$cash_in = $_POST['cash_in'];
	$cash_in_bank = $_POST['cash_in_bank'];
	$paytm_total=$pay_bal+$pay_bal1; 
	$r_cash= $_POST['r_cash'];
	
    $sum_amt= $_POST['sum_amt'];
    

    $addition=$total_expense+$paytm_exp+$bank_expense;
	
	$sql_query = mysqli_query($connection,"INSERT INTO `expenses`(`user_id`, `sub_user_id`,`date`,`total_expense`, `invoice_no`,`voucher_no`,`txt_client`,`txt_hsn`,`base_amt`,`tax_amt`,`total_amt`,`state`,`state1`,`cheque_no`,`Banking`,`p_d`,`sum_amt`,`paytm_exp`,`pay_bal`,`pay_bal1`,`p_n`,`bank_expense`,`cash_in`,`addition`,`cash_in_bank`,`paytm_total`,`r_cash`) VALUES ('$user_id','$sub_id','$txt_dt','$total_expense','$invoice_no','$voucher_no','$txt_client','$txt_hsn','$base_amt','$tax_amt','$total_amt','$state','$state1','$cheque_no','$Banking','$p_d','$sum_amt','$paytm_exp','$pay_bal','$pay_bal1','$p_n','$bank_expense','$cash_in','$addition','$cash_in_bank','$paytm_total','$r_cash')")or die(mysqli_error($connection));


	                     if($sql_query==true)
							{
								echo "1";
							}
						 else
						   {
							echo "error";
						   }
	?>