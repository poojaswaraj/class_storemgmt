<?php 
include "config.php";

$status = $_POST['status'];
$user_id = $_POST['ur_id'];
$status_type=$_POST['status_type'];
$sql=mysqli_query($connection,"select * from mstr_schedule where user_id='$user_id' and sche_type='$status_type'");
	$row5=mysqli_fetch_array($sql);
    $data=$row5['id'];
	
 $sql_query = mysqli_query($connection,"INSERT INTO `admin_enquiry_status`(`enquiry_status`, `sch_id`, `user_id`) VALUES ('$status','$data',$user_id)")or die(mysqli_error($connection));
    
	if($sql_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}


 ?>

