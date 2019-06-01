<?php 
include "config.php";

$source_type = $_POST['schedule'];
$user_id = $_POST['u_id'];

 $sql_query = mysqli_query($connection,"INSERT INTO `branch`(`user_id`,`branch_address`) VALUES ('$user_id','$source_type')")or die(mysqli_error($connection));
	
	if($sql_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}


 ?>