<?php

include "config.php";

    $user_id = $_POST['user_id'];
    $pr_id = $_POST['new_id'];

//	$sub_id =$_POST['sub_us_id'];
	$sub_us_ty= $_POST['sub_us_ty'];
    $txt_total_amount1 = $_POST['txt_total_amount1'];
	$name = ucwords($_POST['name']);
	$txt_mob_no = $_POST['txt_mob_no'];
    $txt_cname = $_POST['txt_cname'];
	$txt_total_amount = $_POST['txt_total_amount'];
	$txt_paid_amount = $_POST['txt_paid_amount'];
	$txt_remaing_amount=$_POST['txt_remaing_amount'];
	$payment_mode=$_POST['mode'];
	$txt_date=$_POST['txt_date'];
	$fine=$_POST['fine'];
	$txt_cperson=$_POST['txt_cperson'];
	$txt_contact=$_POST['txt_contact'];
	//$txt_book=$_POST['book_issue'];
	$book_code=$_POST['book_code'];
	$book_issue=$_POST['book_issue'];
    $select_series=$_POST['select_series'];
    $paytm_name=$_POST['paytm_name'];

	$sql_query = mysqli_query($connection,"UPDATE `receipt` SET `user_id`='$user_id',`sname`='$name',`s_mobile`='$txt_mob_no',`c_name`='$txt_cperson',`remaing_amt`='$txt_remaing_amount',`paid_amt`='$txt_paid_amount',`total_amt`='$txt_total_amount',`course_name`='$txt_cname',`fees_due_date`='$txt_date',`c_mobile`='$txt_contact',`book_code`='$book_code',`book_issue`='$book_issue',`receipt_series`='$select_series',`paid_r_amount`='$txt_total_amount1',`payment_mode`='$payment_mode',`fine`='$fine',`paytm_name`='$paytm_name' WHERE id='$pr_id'")or die(mysqli_error($connection));
		     
				if($sql_query)
				{
					echo "3";
				}
				else
				{
					echo "2";
				}
?>