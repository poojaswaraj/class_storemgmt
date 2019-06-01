<?php
include "config.php";

$searchTerm = $_GET['term'];
$user_ty=$_GET['u_ty'];
$user_id=$_GET['u_id'];
$data;

$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$user_ty'");
	$row=mysqli_fetch_array($query);
		$type= $row['type'];
		$us_id= $row['user_id'];

if($type=='user')
{	
	$select =mysqli_query($connection,"SELECT distinct(party_name) FROM `expenses` WHERE user_id='$us_id' and party_name LIKE '%".$searchTerm."%'")or die(mysqli_error($connection));
	while ($row=mysqli_fetch_array($select)) 
	{
	 $data[] = $row['party_name'];
	}
	//return json data
	echo json_encode($data);
}
else
{
	$select =mysqli_query($connection,"SELECT distinct(party_name) FROM `expenses` WHERE user_id='$user_id' and party_name LIKE '%".$searchTerm."%'")or die(mysqli_error($connection));
	while ($row=mysqli_fetch_array($select)) 
	{
	 $data[] = $row['party_name'];
	}
	//return json data
	echo json_encode($data);
}
?>

 

