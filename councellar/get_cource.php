<?php
 //var_dump($_POST);
include "config.php";
$id=$_POST['course'];

$query=mysqli_query($connection,"SELECT * FROM course where course='$id'") or die(mysqli_error($connection));
	$data=mysqli_fetch_assoc($query);
		
	if($query==true)
	{
		echo json_encode($data);
	}
	else{
		echo "error".mysqli_error($connection);
	}

?>