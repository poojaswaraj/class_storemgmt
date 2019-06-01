<?php 

include "config.php";

$user_id = $_POST['user_id1'];
$label = $_POST['label'];
$value = $_POST['value'];
$ini_val = $_POST['ini_val'];
$department = $_POST['department'];

$est_ini_val = $_POST['est_ini_val'];
$pro_ini_val = $_POST['pro_ini_val'];
// $challan = $_POST['challan'];

// $sql = mysql_query("INSERT INTO series (`user_id`,`name`,`value`,`first_number`,`estimates`,`profarmas`,`challans`) VALUES ('$user_id','$label','$value','$ini_val','$est_ini_val','$pro_ini_val','$challan')")or die(mysql_error($connection));

$sql = mysqli_query($connection,"INSERT INTO series (`user_id`,`name`,`value`,`first_number`,`estimates`,`receipt`,`department`) VALUES ('$user_id','$label','$value','$ini_val','$est_ini_val','$pro_ini_val','$department')")or die(mysqli_error($connection));


		if($sql==true)
		{	
			echo "1";
		}
		else
		{
			echo "2";
		}


 ?>