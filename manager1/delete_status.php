<?php
include "config.php";

$id=$_POST['id'];

	$sql = mysqli_query($connection,"DELETE FROM admin_enquiry_status where enquiry_status_id='$id'")or die(mysqli_error($connection));
		if($sql==true)
		{
			echo "1";
		}

?>