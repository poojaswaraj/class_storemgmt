<?php
 // var_dump($_POST);
include "config.php";
$id=$_POST['id'];

$query=mysqli_query($connection,"SELECT * FROM payment where invoice_id='$id'") or die(mysqli_error($connection)) ;

$jsonData = array();

while($data=mysqli_fetch_assoc($query))
{
		 $jsonData[] = $data;
	// echo json_encode($data);
}
echo json_encode($jsonData);

?> 
