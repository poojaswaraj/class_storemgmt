<?php

include "config.php";

// $user_id=$_SESSION['login_user'];

$fromdate=strtotime($_POST['fromDate']); 
$fromdate=date("Y-m-d",$fromdate);
$todate=strtotime($_POST['toDate']); 
$todate=date("Y-m-d",$todate);
$utype="admin"; 
 $sel_duration =$_POST['sel_duration'];
 $user_id = $_POST['us_id'];
      


 if($sel_duration=='this-month')
			    {

			$sql5=mysqli_query($connection,"SELECT * from common WHERE created_at > DATE_SUB(NOW(), INTERVAL 1 MONTH)  ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql5);
			// }
			?>

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php    

			if(empty($rowcount))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			            ?> <h3><?Php echo $rowcount; }?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql);


			?> <h3><?Php echo $rowcount; ?></h3>
			<p>Total Courses</p>
			</div>
			<div class="icon">
			<i class="fa fa-tasks" style="color:#f68e41"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
			</div>
			</div>


			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE created_at > DATE_SUB(NOW(), INTERVAL 1 MONTH)  ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;

              if(empty($sum_data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $sum_data; }?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE created_at > DATE_SUB(NOW(), INTERVAL 1 MONTH)  ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

            if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>


			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE created_at > DATE_SUB(NOW(), INTERVAL 1 MONTH)  ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

            if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>


	<?php }



else if($sel_duration=='last-month')
			    {

// 			    	$sr_no=0;
// 		          $sql7 =mysqli_query($connection,"SELECT distinct s_id  FROM receipt WHERE MONTH(cur_date) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY cur_date DESC ")or die(mysqli_error($connection));
// while($row5=mysqli_fetch_array($sql7))
// 			{
			$sql7=mysqli_query($connection,"SELECT * from common WHERE MONTH(created_at) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount1=mysqli_num_rows($sql7);
			// }
			?>

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 

			if(empty($rowcount1))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			?> <h3><?Php echo $rowcount1;
			} ?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql);


			?> <h3><?Php echo $rowcount; ?></h3>
			<p>Total Courses</p>
			</div>
			<div class="icon">
			<i class="fa fa-tasks" style="color:#f68e41"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE MONTH(created_at) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;



			if(empty($sum_data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $sum_data; }?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



		<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE MONTH(created_at) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

          if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE MONTH(created_at) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

                if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>
	<?php }

	else if($sel_duration=='this-week')
			    {

// 			    	$sr_no=0;
// 		          $sql3 =mysqli_query($connection,"SELECT distinct s_id  FROM receipt WHERE cur_date >= DATE_SUB(NOW(), INTERVAL 1 WEEK) ORDER BY cur_date DESC ")or die(mysqli_error($connection));


// while($row5=mysqli_fetch_array($sql3))
// 			{
			$sql3=mysqli_query($connection,"SELECT * from common WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 WEEK) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount1=mysqli_num_rows($sql3);
			// }
			?>

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 

			if(empty($rowcount1))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			?> <h3><?Php echo $rowcount1;
			} ?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>


			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql);


			?> <h3><?Php echo $rowcount; ?></h3>
			<p>Total Courses</p>
			</div>
			<div class="icon">
			<i class="fa fa-tasks" style="color:#f68e41"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
			</div>
			</div>


		   <div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 WEEK) ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;


			?> <h3><?Php echo $sum_data; ?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>




			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 WEEK) ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

          if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 WEEK) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

                if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>
	<?php }



else if($sel_duration=='this-year')
			    {

// 			    	$sr_no=0;
// 		          $sql8 =mysqli_query($connection,"SELECT distinct s_id  FROM receipt WHERE YEAR(cur_date) = YEAR(CURDATE()) ORDER BY cur_date DESC ")or die(mysqli_error($connection));


// while($row5=mysqli_fetch_array($sql8))
// 			{
			$sql8=mysqli_query($connection,"SELECT * from common WHERE YEAR(created_at) = YEAR(CURDATE()) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount1=mysqli_num_rows($sql8);
			// }
			?>

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 

			if(empty($rowcount1))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			?> <h3><?Php echo $rowcount1;
			} ?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql);


			?> <h3><?Php echo $rowcount; ?></h3>
			<p>Total Courses</p>
			</div>
			<div class="icon">
			<i class="fa fa-tasks" style="color:#f68e41"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
			</div>
			</div>	


			  <div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE YEAR(created_at) = YEAR(CURDATE()) ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;


			?> <h3><?Php echo $sum_data; ?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE YEAR(created_at) = YEAR(CURDATE()) ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

          if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE YEAR(created_at) = YEAR(CURDATE()) ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

                if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>
	<?php }
	
 

else if($sel_duration=='last-week')
			    {

// 			    	$sr_no=0;
// 		          $sql11 =mysqli_query($connection,"SELECT distinct s_id FROM receipt WHERE  cur_date >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY AND cur_date < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY ORDER BY cur_date DESC ")or die(mysqli_error($connection));


// while($row5=mysqli_fetch_array($sql11))
// 			{
			$sql11=mysqli_query($connection,"SELECT * from common WHERE  created_at >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY AND created_at < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount1=mysqli_num_rows($sql11);
			// }
			?>

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 

			if(empty($rowcount1))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			?> <h3><?Php echo $rowcount1;
			} ?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>


 

		<div class="col-md-2" id="in_1">
		<div class="small-box bg-aqua">
		<div class="inner">
		<?php 
		$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
		$rowcount=mysqli_num_rows($sql);


		?> <h3><?Php echo $rowcount; ?></h3>
		<p>Total Courses</p>
		</div>
		<div class="icon">
		<i class="fa fa-tasks" style="color:#f68e41"></i>
		</div>
		<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
		</div>
		</div>	


		 <div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE created_at >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY AND created_at < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;


			?> <h3><?Php echo $sum_data; ?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE created_at >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY AND created_at < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

          if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>




			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE created_at >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY AND created_at < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

                if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>
	<?php }
	







else if($sel_duration=='five')
				{
             
               
           $m=date('m');
           $y=date('Y');


            $dt1="$y"."-$m"."-01"; 

            $dt3=date('m', strtotime('+1 months'));

              $dt4="$y"."-$dt3"."-01";


			$sql7=mysqli_query($connection,"SELECT * from common WHERE date(created_at) BETWEEN  '$dt1' AND '$dt4' ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount1=mysqli_num_rows($sql7);
		
			?> 

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 

			if(empty($rowcount1))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			?> <h3><?Php echo $rowcount1;
			} ?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql);


			?> <h3><?Php echo $rowcount; ?></h3>
			<p>Total Courses</p>
			</div>
			<div class="icon">
			<i class="fa fa-tasks" style="color:#f68e41"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
			</div>
			</div>

 

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE date(created_at) BETWEEN  '$dt1' AND '$dt4' ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;



			if(empty($sum_data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $sum_data; }?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



		<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE date(created_at) BETWEEN  '$dt1' AND '$dt4' ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

          if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE date(created_at) BETWEEN  '$dt1' AND '$dt4' ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

                if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>
	<?php }



	else if($fromdate!='' && $todate!='')
				{

// 			    	$sr_no=0;
// 		          $sql7 =mysqli_query($connection,"SELECT distinct s_id  FROM receipt WHERE MONTH(cur_date) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY cur_date DESC ")or die(mysqli_error($connection));
// while($row5=mysqli_fetch_array($sql7))
// 			{
			$sql7=mysqli_query($connection,"SELECT * from common WHERE date(created_at) BETWEEN  '$fromdate' AND '$todate' ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount1=mysqli_num_rows($sql7);
			// }
			?>

			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 

			if(empty($rowcount1))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{

			?> <h3><?Php echo $rowcount1;
			} ?></h3>
			<p>Total Student</p>
			</div>
			<div class="icon">
			<i class="fa fa-users" style="color:#2bb2e7"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT * from course ")or die(mysqli_error($connection));
			$rowcount=mysqli_num_rows($sql);


			?> <h3><?Php echo $rowcount; ?></h3>
			<p>Total Courses</p>
			</div>
			<div class="icon">
			<i class="fa fa-tasks" style="color:#f68e41"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right" ></i></a>
			</div>
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common WHERE date(created_at) BETWEEN  '$fromdate' AND '$todate' ORDER BY created_at DESC ")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data1=$rowcount['a'];
			$data2=$rowcount['b'];
			$sum_data=$data2-$data1;



			if(empty($sum_data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $sum_data; }?></h3>
			<p>Paid Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-check" style="color:#4169e1"></i>
			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>



		<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common WHERE date(created_at) BETWEEN  '$fromdate' AND '$todate' ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

          if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Due Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-remove" style="color:#FF4500"></i>
			</div>

			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>	
			</div>



			<div class="col-md-2" id="in_1">
			<div class="small-box bg-aqua">
			<div class="inner">
			<?php 
			$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common  WHERE date(created_at) BETWEEN  '$fromdate' AND '$todate' ORDER BY created_at DESC")or die(mysqli_error($connection));
			$rowcount=mysqli_fetch_array($sql);
			$data=$rowcount['a'];

                if(empty($data))
			{?>
			<h3><?Php echo '0'; ?></h3>
			<?php   }
			else{
			?> <h3><?Php echo $data; }?></h3>
			<p>Total Amount</p>
			</div>
			<div class="icon">
			<i class="fa fa-money" style="color:green;"></i>
			</div>
			<div class="icon">

			</div>
			<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
			</div>
	<?php 


}
	?>

   <h4>Recent Receipts</h4>

<table id="example" class="datatable table table-striped">
  <thead>
    <tr>
     <th>Sr. No</th>
                   <th>Date</th>
				  <th>Receipt Number</th>
				  <th>Student Name</th>
				  <th>Mobile No</th>
				  <th>Course</th>
				  <th>Contact Person</th>
				  <th>Due Date</th>
				  <th>Status</th>
				  
				  <th>Paid</th>
				  <th>Due</th>
				  <th>Type</th>
  </thead>
  <tbody>
        <?php
			
 if($sel_duration=='this-month')
			    {

			    	$sr_no=0;
		          $sql1 =mysqli_query($connection,"SELECT * FROM receipt WHERE cur_date > DATE_SUB(NOW(), INTERVAL 1 MONTH)  ORDER BY cur_date DESC ")or die(mysqli_error($connection));

		          
		           while($row=mysqli_fetch_array($sql1))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];
			  				$id=$row['id'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];

			  			$amt=$row['total_amt'];
			  				$date1=$row['cur_date'];
			  				
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				    <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				  <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			} 
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				  
				  <td><?php echo $row['paid_amt'];?></td>
				  <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        <?php
			    }
			   ?>
			  </tbody>			  	
			</table>
<?php
}
else if($sel_duration=='last-month')
			    {

			    	$sr_no=0;
		          $sql2 =mysqli_query($connection,"SELECT * FROM receipt WHERE MONTH(cur_date) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) ORDER BY cur_date DESC ")or die(mysqli_error($connection));

		          
		           while($row=mysqli_fetch_array($sql2))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  				$id=$row['id'];
			  			$due=$row['remaing_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];

			  			$amt=$row['total_amt'];
			  				$date1=$row['cur_date'];
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				    <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				 <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				 
				  <td><?php echo $row['paid_amt'];?></td>
				   <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        <?php
			    }
			   ?>
			  </tbody>			  	
			</table>
<?php
} 
else if($sel_duration=='this-week')
			    {

			    	$sr_no=0;
		          $sql3 =mysqli_query($connection,"SELECT * FROM receipt WHERE cur_date >= DATE_SUB(NOW(), INTERVAL 1 WEEK) ORDER BY cur_date DESC ")or die(mysqli_error($connection));

		          
		           while($row=mysqli_fetch_array($sql3))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];
			  				$id=$row['id'];

			  			$amt=$row['total_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];
			  				$date1=$row['cur_date'];
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				   <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				 <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				  
				  <td><?php echo $row['paid_amt'];?></td>
				   <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        <?php
			    }
			   ?>
			  </tbody>			  	
			</table>
<?php
}
else if($sel_duration=='this-year')
			    {

			    	$sr_no=0;
		          $sql4 =mysqli_query($connection,"SELECT * FROM receipt WHERE YEAR(cur_date) = YEAR(CURDATE()) ORDER BY cur_date DESC ")or die(mysqli_error($connection));

		          
		           while($row=mysqli_fetch_array($sql4))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];
			  				$id=$row['id'];

			  			$amt=$row['total_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];
			  				$date1=$row['cur_date'];
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				   <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				  <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				  
				  <td><?php echo $row['paid_amt'];?></td>
				  <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        <?php
			    }
			   ?>
			  </tbody>			  	
			</table>
<?php
}

else if($sel_duration=='last-week')
			    {

			    	$sr_no=0;
		          $sql5 =mysqli_query($connection,"SELECT * FROM receipt WHERE  cur_date >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY AND cur_date < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY ORDER BY cur_date DESC ")or die(mysqli_error($connection));

		          
		           while($row=mysqli_fetch_array($sql5))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];
			  				$id=$row['id'];

			  			$amt=$row['total_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];
			  				$date1=$row['cur_date'];
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				    <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				  <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				  
				  <td><?php echo $row['paid_amt'];?></td>
				  <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        <?php
			    }
			   ?>
			  </tbody>			  	
			</table>
<?php
}

else if($sel_duration=='five')
			    {

			    	$sr_no=0;
		          $sql5 =mysqli_query($connection,"SELECT * FROM receipt WHERE date(cur_date) BETWEEN  '$dt1' AND '$dt4' ORDER BY cur_date DESC")or die(mysqli_error($connection));

		          
		           while($row=mysqli_fetch_array($sql5))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];
			  				$id=$row['id'];

			  			$amt=$row['total_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];
			  				$date1=$row['cur_date'];
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				    <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				  <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				  
				  <td><?php echo $row['paid_amt'];?></td>
				  <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        <?php
			    }
			   ?>
			  </tbody>			  	
			</table>
<?php
}


			else if($fromdate!='' && $todate!='')
				{
					$sr_no=0;
		          $sql6 =mysqli_query($connection,"SELECT * From receipt WHERE  date(cur_date) BETWEEN  '$fromdate' AND '$todate' ORDER BY cur_date DESC ")or die(mysqli_error($connection));
		          
		           while($row=mysqli_fetch_array($sql6))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$id=$row['id'];
			  			$due=$row['remaing_amt'];
			  			$amt=$row['total_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];
			  				$date1=$row['cur_date'];
			  			$date2=$row['fees_due_date'];
			  			$timestamp = strtotime($date1);
			  			$timestamp1= strtotime($date2);

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				    <td><?php echo date('d-m-Y',$timestamp);?></td>
				  <td><?php echo $row['number'];?></td>
				
				  <td>
				 
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				 <td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				   <td><?php echo $row['course_name'];?></td>
				   <?php  if ($sud!=0) 
			{
			 	$sql = mysqli_query($connection,"SELECT * FROM user_profile where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM user where id='$generated_by'");
				$arr=mysqli_fetch_array($sql);
				$g_name=$arr['name'];
			}
				 ?>
				  <td><?php echo $g_name;?></td>
				  <td><?php echo  date('d-m-Y',$timestamp1);?></td>
				  <!-- <td><?php echo $row['status'];?></td> -->
				   <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  		<td><div class="row" style="background-color: #03a9f4; color: white;  border-radius: 5px; padding: 3px; width: 130; height: 25px; ">Closed</div></td>
				  <?php }
				  		else{
				   ?>
				  	  	<td><div class="row" style="background-color: #ff9800; color: white; border-radius: 5px; padding: 3px; width: 130; height: 25px;">Pending</div></td>
				   <?php } ?>

				 
				  <td><?php echo $row['paid_amt'];?></td>
				 <td><?php echo $row['remaing_amt'];?></td>

				   
				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" onclick="getInfo(this)" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>
				   <?php } ?>
					 <!-- <td><a href="dashboard.php?page=edit_new_invoice&id=<?php echo $row['id'];?>"><button id="load-payments-for-23" rel="payments:show" value="<?php echo $row['id'];?>" type="button">Payments</button></a></td> -->
		          </tr>
		        
			    <?php
					
			       }
			    }
			    ?>
			    	  </tbody>

			  	
			</table>
		
   <div id="myModal22" class="modal fade" tabindex="1" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" align="center">SEND MESSAGE</h3>
            </div>
            <div class="modal-body">    
                <form  id="myform2" role="form" name="form1" method="post"> 

                <input type="hidden" name="invoice_id" id="invoice_id">
                 <input type="hidden" name="user_id" id="hidd" value="<?php echo $user_id; ?>"> 
                 <input type="hidden" name="user_id" id="hidd11" value="<?php echo $id; ?>">
				<input type="hidden" name="sub_us_id" id="sub_us_id" value="<?php echo $sub_id; ?>">
				<input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
                 
                    <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Mobile No:</h4><input type="text" class="form-control" name="mobile" id="mobile11" placeholder="Mobile No" value=""required=""></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    </div> 

                    <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"> <label for="exampleTextarea">Message</label>
                    <textarea class="form-control" id="tarea" rows="7" placeholder="Type Message....." name="tarea"></textarea>
                    </div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    </div>
           
                    <br>
                	<p id="pmsg"></p>  
	                <div class="modal-footer">
	                <button class="btn btn-primary submit" name="submit" id="save">SEND</button>
	                <button type="button" class="btn btn-warning btn-md" data-dismiss="modal">Cancel</button>      
		            </div>
 
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
	function getInfo(button)
	{
		var id=button.id;
        
		var hidd=$('#hidd').val();
		 
		var hidd11=$('#hidd11').val();
		
		 
		
		//alert(id);
		$.ajax({
              url:'getInfo.php',
              data:{'eid':id,'hidd':hidd,'hidd11':hidd11},
              type:'post',
              //dataType:'json',
              success:function(response){
                
              	var obj = $.parseJSON(response);
               
	             if(response==1)
                {
                	alert("Client Don't Have Mobile No");
                window.location.href= "dashboard.php?page=home";
                }
                else
                {
	            $("#mobile11").val(obj[0]);
                $("#tarea").val("Dear Student "+obj[1]+"\nWould you like to remind you of the payment.Please settle the outstanding amount ."+"\nAmount ="+obj[2]+"\n"+"Fees Due Date="+obj[5]+"\n\n"+obj[3]+". ("+obj[4]+").");

                  }

           
               
              }

		});

	}
</script>
<script>
$('form#myform2').submit(function(e){

        e.preventDefault();
        
				        $('button#save').button('loading');
				          
				           var mobn=$('#mobile11').val();
				           var message=$('#tarea').val();

				            $.ajax({

				                    url:'send_message.php',
				                    type: "POST",
				                    data:{'mobn':mobn,'message':message},
				                    success: function(data)
				                    {
				                    	var obj = $.parseJSON(data);
				                    	
				                    	if(data==1)
				                    	{
				                    		swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Send Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "dashboard.php?page=receipt";
 								 	} ,1500);
				                    	}
				                    }

				                   });

				                    });
				      
</script>

          

			    