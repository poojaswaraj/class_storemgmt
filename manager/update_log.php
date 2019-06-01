 <?php 			

            include "config.php";
			$id=$_POST['id'];
		 	$status=$_POST['status'];
			$comment=$_POST['comment'];
			$sql_query1 = mysqli_query($connection,"UPDATE `generate_log` SET `en_remark`='$comment',`sche_type`='$status' WHERE `id`='$id'")or die(mysqli_error($connection));
			if(!$sql_query1)
			{
				echo "2";
			}
			else
			{
				echo "1";
			}
?>
