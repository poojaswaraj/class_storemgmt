<?php
session_start();//Start session
include"config.php";

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
	header("location: dashboard.php?page=recurring_invoices");
	exit();
?>
