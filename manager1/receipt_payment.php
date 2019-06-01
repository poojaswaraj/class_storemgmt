<?php 
// var_dump($_POST);
include "config.php";

$user_id =$_POST['user_id'];
$sub_id =$_POST['sub_us_id'];
$sub_us_ty = $_POST['sub_us_ty'];
$txt_date = $_POST['txt_date'];
$amount = $_POST['amount'];
$txt_desc = $_POST['txt_desc'];
$invoice_id = $_POST['invoice_id'];


$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type = $row['type'];

if($type=='user')
{

 $query = mysqli_query($connection,"SELECT * FROM receipt WHERE id='$invoice_id'")or die(mysqli_error($connection));
    $row=mysqli_fetch_array($query);

	$due=$row['remaing_amt'];
	$test=$due-$amount;
	$paid_amount=$row['paid_amt'];
	$p_amt=$paid_amount+$amount;

if($due>=$amount)
	{
	$qu= mysqli_query($connection,"UPDATE receipt SET remaing_amt='$test',paid_amt='$p_amt', status='Closed' WHERE id='$invoice_id'")or die(mysqli_error($connection));

	if($qu==true)
		{

			 $query = mysqli_query($connection,"SELECT * FROM receipt WHERE id='$invoice_id'")or die(mysqli_error($connection));
				$row=mysqli_fetch_array($query);
				
				$due1=$row['remaing_amt'];

			if($due1==0.00)
			{
				
			   $qu= mysqli_query($connection,"UPDATE receipt SET status='Closed' WHERE id='$invoice_id'")or die(mysqli_error($connection));
				  if($qu==true)
					{
					  $sql_query = mysqli_query($connection,"INSERT INTO `payment1`(`user_id`,`sub_user_id`,`invoice_id`, `date`, `amount`, `notes`) VALUES('$sub_id','$user_id','$invoice_id','$txt_date','$amount','$txt_desc')")or die(mysqli_error());
						
						if($sql_query)
							{
								echo "1";
							}
					}
			}
			else
			{

			 $qu= mysqli_query($connection,"UPDATE receipt SET remaing_amt='$test',paid_amt='$p_amt', status='Pending' WHERE id='$invoice_id'")or die(mysqli_error($connection));
				if($qu==true)
					{
					
						$sql_query = mysqli_query($connection,"INSERT INTO `payment`(`user_id`,`sub_user_id`,`invoice_id`, `date`, `amount`, `notes`) VALUES('$sub_id','$user_id','$invoice_id','$txt_date','$amount','$txt_desc')")or die(mysqli_error($connection));
					
							if($sql_query)
							{
								echo "1";
							}
					}
			}

		}
	}
	else
	{
		echo"2";
	}	
}//type user if end
else{

	$query = mysqli_query($connection,"SELECT * FROM receipt WHERE id='$invoice_id'")or die(mysqli_error($connection));
  	$row=mysqli_fetch_array($query);

	$due=$row['remaing_amt'];
	$test=$due-$amount;
	$paid_amount=$row['paid_amt'];
	$p_amt=$paid_amount+$amount;

	if($due>=$amount)
	{
	$qu= mysqli_query($connection,"UPDATE receipt SET remaing_amt='$test',paid_amt='$p_amt', status='Closed' WHERE id='$invoice_id'")or die(mysqli_error($connection));

	if($qu==true)
		{

			 $query = mysqli_query($connection,"SELECT * FROM receipt WHERE id='$invoice_id'")or die(mysqli_error($connection));
				$row=mysqli_fetch_array($query);
				
				$due1=$row['remaing_amt'];

			if($due1==0.00)
			{
				
			   $qu= mysqli_query($connection,"UPDATE receipt SET status='Closed' WHERE id='$invoice_id'")or die(mysqli_error($connection));
				  if($qu==true)
					{
					  $sql_query = mysqli_query($connection,"INSERT INTO `payment`(`user_id`,`sub_user_id`,`invoice_id`, `date`, `amount`, `notes`) VALUES('$user_id','$sub_id','$invoice_id','$txt_date','$amount','$txt_desc')")or die(mysqli_error($connection));
						
						if($sql_query)
							{
								echo "1";
							}
					}
			}
			else
			{

			 $qu= mysqli_query($connection,"UPDATE receipt SET remaing_amt='$test',paid_amt='$p_amt', status='Pending' WHERE id='$invoice_id'")or die(mysqli_error($connection));
				if($qu==true)
					{
					
						$sql_query = mysqli_query($connection,"INSERT INTO `payment`(`user_id`,`sub_user_id`,`invoice_id`, `date`, `amount`, `notes`) VALUES('$user_id','$sub_id','$invoice_id','$txt_date','$amount','$txt_desc')")or die(mysqli_error($connection));
					
							if($sql_query)
							{
								echo "1";
							}
					}
			}

		}

	}//end of due loop
	else{
			echo "2";
		}
}
	
 ?>