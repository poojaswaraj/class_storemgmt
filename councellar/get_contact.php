<?php 
include('config.php');

 $id=$_POST['id'];

$sql=mysqli_query($connection,"SELECT * FROM user_profile WHERE name='$id'");
	
	$data=mysqli_fetch_assoc($sql);

if($sql==true)
{
	echo json_encode($data);
}
else{

	echo "2".mysqli_error();
}
	
 ?>