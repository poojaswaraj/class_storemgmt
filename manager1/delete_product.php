<?php
include "config.php";

$id=$_POST['id'];

$query = mysqli_query($connection,"SELECT * FROM course a INNER JOIN item b ON a.id=b.product_id WHERE b.id='$id'")or die(mysqli_error($connection));
	$row = mysqli_fetch_array($query);
	$pro_id=$row['course_id'];
	// $qty=$row['quantity'];
	//$sold=$row['sold'];
	// $sold_item=$sold-$qty;
	$count = mysqli_num_rows($query);
	if($count>0)
	{
		
			$sql2 = mysqli_query($connection,"DELETE FROM item where id='$id'")or die(mysqli_error($connection));
			 if($sql2==true)
				{
				  $sql1 = mysqli_query($connection,"DELETE FROM item_tax where item_id='$id'")or die(mysqli_error($connection));
					if($sql1==true)
					 {
						echo "1";
					 }
				}
		
	}
else{

	$sql2 = mysqli_query($connection,"DELETE FROM item where id='$id'")or die(mysqli_error($connection));
	 if($sql2==true)
		{
		  $sql1 = mysqli_query($connection,"DELETE FROM item_tax where item_id='$id'")or die(mysqli_error($connection));
			if($sql1==true)
			 {
				echo "1";
			 }
		}
}
?>