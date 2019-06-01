<?php 

	include "config.php";

$old_pass = $_POST['old_pass'];

	$query = mysqli_query($connection,"SELECT * FROM `user_profile` WHERE password='$old_pass'")or die(mysql_error($connection));

	$row=mysqli_fetch_array($query);
	 $count=mysqli_num_rows($query);
		if($count>0)
			{		    
				  echo"1";
			}
			else
				{
				    echo"2".mysqli_error($connection);
				}

?>