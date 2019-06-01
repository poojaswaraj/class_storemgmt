<?php 
include "config.php";

$user_id =$_POST['user_id'];
$sub_id =$_POST['sub_us_id'];
$sub_us_ty= $_POST['sub_us_ty'];

$txt_id = $_POST['txt_id'];
$cname = $_POST['txt_cname'];
$ccode = $_POST['txt_ccode'];
$desc = $_POST['txt_desc'];
$price = $_POST['txt_price'];
$department = $_POST['department'];
$txt_duration = $_POST['txt_duration'];

$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type'];


$edit_query=mysqli_query($connection,"UPDATE `course` SET `user_id`='$sub_id',`sub_user_id`='$user_id', course='$cname',ccode='$ccode',description='$desc',base_price='$price',updated_at=now(),department='$department',duration='$txt_duration' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}


 ?>