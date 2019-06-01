<?php 
include "config.php";

$schedule = $_POST['schedule'];
$user_id = $_POST['ur_id'];

 $sql_query = mysqli_query($connection,"INSERT INTO `mstr_schedule`(`user_id`,`sche_type`) 
	VALUES ('$user_id','$schedule')")or die(mysqli_error($connection));
	
	if($sql_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}


 ?>