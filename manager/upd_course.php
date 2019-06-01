<?php 
include "config.php";

$user_id =$_POST['user_id']; 
$sub_id =$_POST['sub_us_id'];
$sub_us_ty= $_POST['sub_us_ty'];

$txt_id = $_POST['txt_id'];
$cname = $_POST['txt_cname'];
$duration = $_POST['duration'];
$ccode = $_POST['txt_ccode'];
$desc = $_POST['txt_desc'];
$price = $_POST['txt_price'];
$department = $_POST['department'];
// $txt_units = $_POST['txt_units'];

$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type'];

if($type=='user')
{	

$edit_query=mysqli_query($connection,"UPDATE `course` SET `user_id`='$sub_id',sub_user_id='$user_id',course='$cname',ccode='$ccode',description='$desc',base_price='$price',updated_at=now(),department='$department',duration='$duration' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}
}
else{
	$edit_query=mysqli_query($connection,"UPDATE `course` SET `user_id`='$sub_id',sub_user_id='$user_id',course='$cname',ccode='$ccode',description='$desc',base_price='$price',updated_at=now(),department='$department',duration='$duration' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query)
	{
		echo "3";
	}
	else
	{
		echo "2";
	}
}

 ?>