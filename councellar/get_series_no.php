<?php 
include('config.php');

$id=$_POST['id'];

$sql=mysqli_query($connection,"SELECT * FROM series WHERE id='$id'");
	
	$data=mysqli_fetch_assoc($sql);
	$res['receipt']=$data['receipt']+1;

if($sql==true)
{
	echo json_encode($res);
}
else{

	echo "2".mysqli_error();
}
	
 ?>