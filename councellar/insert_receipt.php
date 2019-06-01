<?php

include "config.php";
 
    $user_id = $_POST['user_id'];
 	$sub_id =$_POST['sub_us_id'];
	$sub_us_ty= $_POST['sub_us_ty'];
 	$student_id= $_POST['new_id'];
 	$d_id= $_POST['d_id'];
 	$fine= $_POST['fine'];
	$invoice_id= $_POST['invoice_id'];
	$name = ucwords($_POST['name']);
	$txt_mob_no = $_POST['txt_mob_no'];
    $txt_cname = $_POST['txt_cname'];
    $cur_date = $_POST['cur_date'];
    $ser_no = $_POST['ser_no'];
	$txt_total_amount = $_POST['txt_total_amount'];
	$txt_paid_amount = $_POST['txt_paid_amount'];
	$txt_remaing_amount=$_POST['txt_remaing_amount'];
	$txt_date=$_POST['txt_date'];
	$txt_cperson=$_POST['txt_cperson'];
	$txt_contact=$_POST['txt_contact'];
	//$txt_book=$_POST['book_issue'];
	$book_code=$_POST['book_code'];
	$book_issue=$_POST['book_issue'];
    $select_series=$_POST['select_series'];
    $payment=$_POST['payment'];
    $paytm_name=$_POST['paytm_name'];
    $paid_r_amount=$_POST['txt_paid_receipt'];
$query1 = mysqli_query($connection,"SELECT * FROM series WHERE id='$select_series' ");
            $row1=mysqli_fetch_array($query1);
$name=$row1['name'];

                     $str=substr($name, 0, strrpos($name, ' '));
                    $val=$row1['value'];
                      $ini =$row1['receipt']+1;
                     $a=$val.$ini;
$query = mysqli_query($connection,"UPDATE series SET receipt=receipt+1 WHERE id='$select_series'"); 

	$sql_query = mysqli_query($connection,"INSERT INTO `receipt`(`user_id`,`sub_user_id`, `sname`,`s_mobile`,`course_name`,`total_amt`,`paid_amt`,`remaing_amt`,`fees_due_date`,`c_name`,`c_mobile`,`book_code`,`book_issue`,`receipt_series`,`s_id`,`cur_date`,`number`,`invoice_id`,`payment_mode`,`paid_r_amount`,`fine`,`ser_no`,`paytm_name`,`d_name`) 
		VALUES ('$sub_id','$user_id','$name','$txt_mob_no','$txt_cname','$txt_total_amount','$txt_paid_amount','$txt_remaing_amount','$txt_date','$txt_cperson','$txt_contact','$book_code','$book_issue','$select_series','$student_id','$cur_date','$a','$invoice_id','$payment','$paid_r_amount','$fine','$ini','$paytm_name','$str')")or die(mysqli_error($connection));
		      //  move_uploaded_file($tmpfile,"images/".$ifile);
	
				if($sql_query)
				{
					echo "1";
				}
				else
				{
					echo "2";
				}
				
				if($payment=='paytm')
	{
		$sql_query56 = mysqli_query($connection,"UPDATE paytm SET cash=cash+'$txt_paid_amount' WHERE name='$paytm_name'");
	}
			
				$receipt_sum = mysqli_query($connection,"SELECT SUM(paid_amt) as a ,total_amt FROM receipt WHERE invoice_id='$invoice_id' ");
            $receipt_sum1=mysqli_fetch_array($receipt_sum);
            $pm=$receipt_sum1['a'];
            $tm=$receipt_sum1['total_amt'];
$query5 = mysqli_query($connection,"UPDATE common SET due_amt=$tm-$pm WHERE id='$invoice_id'");
// require_once('PHPMailer_5.2.4/class.phpmailer.php');
// $email="akshay@e-bc.in";
// $mail= new PHPMailer();
// $body="Dear Student&nbsp;".$name."<br>"."You Paid your Due amount =&nbsp;".$txt_paid_amount."&nbsp;&nbsp;On Date &nbsp;".$cur_date."<br>"."Thanks For Paying ....&nbsp;"."<br><br>"."Your Next Due Amount is=&nbsp;".$txt_remaing_amount."<br>"."Fees Due Date is=&nbsp;".$txt_date."<br><br>"."SevenMentor & Training Pvt. Ltd. and Group Of Companies"."<br>"."Contact No=9890000325";
// 				$mail->IsSMTP();
// 				$mail->SMTPDebug=1;
// 				$mail->SMTPAuth=true;
// 				$mail->SMTPSecure='';
// 				$mail->Host = "mail.e-bc.in";
// 				$mail->Port = 587;
// 				$mail->IsHTML (true);
// 				$mail->Username = 'cs@e-bc.in';
// 				$mail->Password = 'cs@2017';
// 				$mail->SetFrom("cs@e-bc.in");
// 				$mail->Subject = "Receipt";
// 				// $mail->Body ="test";
// 				$mail->MsgHTML($body);
// 				$mail->AddAddress($email);

// $mail->send();
?>