<?php
include "config.php";

$searchTerm = $_GET['term'];
 
 $data;
$select =mysqli_query($connection,"SELECT * FROM tbl_states WHERE name LIKE '%".$searchTerm."%'")or die(mysqli_error($connection));
while ($row=mysqli_fetch_array($select)) 
{
 $data[] = $row['name'];
}
//return json data
echo json_encode($data);
?>

 

