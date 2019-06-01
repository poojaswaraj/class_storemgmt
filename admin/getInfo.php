<?php
error_reporting(0);
include "config.php";
 $id=$_POST['eid'];
 $hidd=$_POST['hidd'];
 $hidd11=$_POST['hidd11'];
	$query = mysqli_query($connection,"select * from receipt where id='$id' and user_id='$hidd' ")or die(mysqli_error($connection));
		$str11=mysqli_fetch_array($query);
		if(!$str11)
		{
			echo 1;
		}
		else
		{
		$data[0]=$str11['s_mobile'];
		$data[1]=$str11['sname'];
		$data[2]=$str11['remaing_amt'];
		$data[3]=$str11['fees_due_date'];
	
		$query1 = mysqli_query($connection,"select company_name,company_phone from company where user_id='$hidd'")or die(mysqli_error($connection));
		$str22=mysqli_fetch_object($query1);
		$str21[0]=$str22->company_name;
        $str23[0]=$str22->company_phone;
		
		$array=array($data[0],$data[1],$data[2],$str21[0],$str23[0],$data[3]);
	echo json_encode($array);

}
?>
