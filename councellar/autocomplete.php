<?php
include "config.php";

$searchTerm = $_GET['term'];
$user_id=$_GET['u_id'];
$data;
	$select =mysqli_query($connection,"SELECT * FROM course WHERE course LIKE '%".$searchTerm."%'")or die(mysqli_error($connection));
	while ($row=mysqli_fetch_array($select)) 
	{
	 $data[] = $row['course'];
	}
	//return json data
	echo json_encode($data);


?>

 

