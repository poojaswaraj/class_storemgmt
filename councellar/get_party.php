<?php
 // var_dump($_POST);
include "config.php";
$date1=$_POST['date1'];
$user_id=$_POST['user_id'];
$array=array();
$query1=mysqli_query($connection,"SELECT SUM(paid_amt) as a FROM receipt where cur_date='$date1' and user_id='$user_id' and payment_mode='cash'") or die(mysqli_error($connection));
	$data11=mysqli_fetch_array($query1);
	// $data11=$data1['a'];

	$query2=mysqli_query($connection,"SELECT SUM(paid_amt) as b FROM receipt where cur_date='$date1' and user_id='$user_id' and payment_mode='bank'") or die(mysqli_error($connection));

	$data22=mysqli_fetch_array($query2);
	// $data22=$data2['b'];
	$query3=mysqli_query($connection,"SELECT SUM(paid_amt) as c FROM receipt where cur_date='$date1' and user_id='$user_id' and payment_mode='paytm'") or die(mysqli_error($connection));
	$data33=mysqli_fetch_array($query3);
	// $data33=$data3['c'];

	$query4=mysqli_query($connection,"SELECT SUM(paid_amt) as d FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Networking SP'") or die(mysqli_error($connection));
	$data44=mysqli_fetch_array($query4);
	
	$query5=mysqli_query($connection,"SELECT SUM(paid_amt) as e FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Networking CP'") or die(mysqli_error($connection));
	$data55=mysqli_fetch_array($query5);
	

	$query6=mysqli_query($connection,"SELECT SUM(paid_amt) as f FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Devlopment SP'") or die(mysqli_error($connection));
	$data66=mysqli_fetch_array($query6);
	
	$query7=mysqli_query($connection,"SELECT SUM(paid_amt) as g FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Devlopment CP'") or die(mysqli_error($connection));
	$data77=mysqli_fetch_array($query7);
	
	$query8=mysqli_query($connection,"SELECT SUM(paid_amt) as h FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Softskill'") or die(mysqli_error($connection));
	$data88=mysqli_fetch_array($query8);
	

	$query9=mysqli_query($connection,"SELECT SUM(paid_amt) as i FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Hadoop Training'") or die(mysqli_error($connection));
	$data99=mysqli_fetch_array($query9);
	

	$query10=mysqli_query($connection,"SELECT SUM(paid_amt) as j FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='HR Training'") or die(mysqli_error($connection));
	$data100=mysqli_fetch_array($query10);
	

	$query11=mysqli_query($connection,"SELECT SUM(paid_amt) as k FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Banking'") or die(mysqli_error($connection));
	$data111=mysqli_fetch_array($query11);
	
	$query12=mysqli_query($connection,"SELECT SUM(paid_amt) as l FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Placement Devlopment'") or die(mysqli_error($connection));
	$data122=mysqli_fetch_array($query12);
	$query18=mysqli_query($connection,"SELECT SUM(paid_amt) as l FROM receipt where cur_date='$date1' and user_id='$user_id' and d_name='Placement Networking'") or die(mysqli_error($connection));
	$data188=mysqli_fetch_array($query18);
	$query13=mysqli_query($connection,"SELECT SUM(total_amt) as m FROM add_expense  where date='$date1' and user_id='$user_id' and sel_mode='Cash'") or die(mysqli_error($connection));
	$data133=mysqli_fetch_array($query13);
	$query14=mysqli_query($connection,"SELECT SUM(total_amt) as m FROM add_expense  where date='$date1' and user_id='$user_id' and sel_mode='Paytm'") or die(mysqli_error($connection));
	$data144=mysqli_fetch_array($query14);
	$query17=mysqli_query($connection,"SELECT SUM(total_amt) as m FROM add_expense  where date='$date1' and user_id='$user_id' and sel_mode='Bank'") or die(mysqli_error($connection));
	$data177=mysqli_fetch_array($query17);
	$query15=mysqli_query($connection,"SELECT cash FROM paytm where name='Aditya'") or die(mysqli_error($connection));
	$data155=mysqli_fetch_array($query15);
	$query16=mysqli_query($connection,"SELECT cash FROM paytm where name='Vijay'") or die(mysqli_error($connection));
	$data166=mysqli_fetch_array($query16);
    $data199[0]=$data11[0]-$data133[0];
    $data200[0]=$data22[0]-$data177[0];


     $sum[0]=$data11[0]+$data22[0]+$data33[0]-($data133[0]+$data144[0]+$data177[0]);
     $array=array($data11[0],$data22[0],$data33[0],$data44[0],$data55[0],$data66[0],$data77[0],$data88[0],$data99[0],$data100[0],$data111[0],$data122[0],$sum[0],$data133[0],$data144[0],$data155[0],$data166[0],$data177[0],$data188[0], $data199[0],$data200[0]);

	echo json_encode($array);

?>