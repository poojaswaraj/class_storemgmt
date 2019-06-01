<?php
session_start();//Start session
include"config.php";
$us_ty=$_GET['us_ty'];
$result = mysqli_query($connection,"SELECT * FROM tbl_session");
while($row = mysqli_fetch_array($result))
{
	$fefe=$row['session_id']; 
}
	$sasa=$fefe+1;

	
	mysqli_query($connection,"UPDATE tbl_session SET session_id = '$sasa'");
	$fgh='000'.$sasa;						
	$finalcode=date("Y-m-$fgh").'-STO';						

	session_regenerate_id();
	$_SESSION['SESS_MEMBER_ID'] = $finalcode;
	session_write_close();

	$sql=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$us_ty'");
	$row=mysqli_fetch_array($sql);
	$type=$row['type'];
	  $user_role=$array['user_role'];
	if($type=='user')
	{
		header("location: user_dashboard.php?page=new_invoice");

	}else{
	header("location: dashboard.php?page=new_invoice");
}
	exit();
?> 