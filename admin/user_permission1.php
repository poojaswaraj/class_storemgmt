<?php
include "config.php";

$id = $_POST['tab'];
	$user_id=$_POST['usr_id'];
	$name=$_POST['name'];
	$email=$_POST['email'];
	$mob=$_POST['mob'];
	// $img_file=$_FILES['image1']['name'];
	// $tmp_file=$_FILES['image1']['tmp_name'];
	$pass=$_POST['pass'];
	$user_role=$_POST['user_role'];
	 $department=$_POST['department'];
	$branch=$_POST['branch'];
     // if (move_uploaded_file($tmp_file,"../images/".$img_file)){      
     //            $img="../images/".$img_file;            
     //        }else{        
     //          echo "Sorry, there was an error uploading your file.";      
     //        }
        $sql = mysqli_query($connection,"INSERT INTO `user_profile`(`user_id`, `name`, `mobile`, `email`, `password`, `invoice`,`branch_id`,`department_id`,`user_role`) VALUES ('$user_id','$name','$mob','$email','$pass','Yes','$branch','$department','$user_role')");

			if($sql==true)
			{
				echo "1";
			}
			else{
				echo "2";
			}	


?>
