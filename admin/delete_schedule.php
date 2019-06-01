<?php
include "config.php";

$id=$_POST['id'];

	$sql = mysqli_query($connection,"DELETE FROM mstr_schedule where id='$id'")or die(mysqli_error($connection));
		if($sql==true)
		{
			echo "1";
		}

?>