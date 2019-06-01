<?php
include "config.php";

$searchTerm = $_GET['term'];
    $user_id=$_GET['u_id'];
$data;
	$select =mysqli_query($connection,"SELECT * FROM student WHERE sub_user_id='$user_id' and name LIKE '%".$searchTerm."%'")or die(mysqli_error($connection));
	while ($row=mysqli_fetch_array($select)) 
		{
		 $data[] = $row['name'];
		}
	//return json data
	echo json_encode($data);

?>

 

