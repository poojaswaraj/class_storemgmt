<?php 
// var_dump($_POST);
include "config.php";

$user_id =$_POST['user_id'];
$sub_id =$_POST['sub_us_id'];
$sub_us_ty= $_POST['sub_us_ty'];

$user_id = $_POST['user_id'];
$cname = $_POST['txt_cname'];
$ccode = $_POST['txt_ccode'];
$duration = $_POST['duration'];
$desc = $_POST['txt_desc'];
$price = $_POST['txt_price'];
$department = $_POST['department'];

// $txt_units = $_POST['txt_units'];
	
$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type']; 

if($type=='user')
{	
 $sql_query = mysqli_query($connection,"INSERT INTO `course`(`user_id`,`sub_user_id`,`course`,`ccode`,`description`, `base_price`,`created_at`,`department`,`duration`) 
	VALUES ('$sub_id','$user_id','$cname','$ccode','$desc','$price',now(),'$department','$duration')")or die(mysqli_error($connection));
	
	if($sql_query)
	{ 
		echo "1";
	} 
	else
	{
		echo "2";
	}
}
else{
	$sql_query = mysqli_query($connection,"INSERT INTO `course`(`user_id`,`sub_user_id`,`course`,`ccode`,`description`, `base_price`,`created_at`,`department`,`duration`) 
	VALUES ('$sub_id','$user_id','$cname','$ccode','$desc','$price',now(),'$department','$duration')")or die(mysqli_error($connection));
	
	if($sql_query)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}
}

 ?>