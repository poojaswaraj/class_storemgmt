<?php 
	include "config.php";

// $cname = addslashes($_POST['txt_cname']);
$name = $_POST['txt_name'];
$txt_email = $_POST['txt_email'];
$txt_cont = $_POST['txt_cont'];
$new_pass = $_POST['new_pass'];
$id=$_POST['data'];
$dt=date('Y-m-d');
$old_pass=$_POST['old_pass'];
	
if(!empty($old_pass))
  {
	 // $sql = mysql_query("UPDATE `user` SET `comp_name`='$cname',`name`='$name',`username`='$txt_email',`password`='$new_pass',`updated_at`='$dt' WHERE `id`='$id'")or die(mysql_error($connection));
		$sql = mysqli_query($connection,"UPDATE `user_profile` SET `name`='$name',`email`='$txt_email',`password`='$new_pass',`mobile`='$txt_cont',`updated_at`='$dt' WHERE `id`='$id'")or die(mysqli_error($connection));

	 	if($sql==true)
	 	{
	 		echo"1";
	 	}
		else
		{
		    echo"2".mysqli_error($connection);
		}
  }
  else
  	{
		echo "3";
	}

?>