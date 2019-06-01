<?php 
include "config.php";

$mode = $_POST['mode'];
$user_id = $_POST['ur_id'];

 $sql_query = mysqli_query($connection,"INSERT INTO `mode`(`user_id`,`mode`) 
	VALUES ('$user_id','$mode')")or die(mysqli_error($connection));
	
	if($sql_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}


 ?>