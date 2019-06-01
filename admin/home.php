<?php 
include('config.php');
 $user_id=$_SESSION['login_user'];
 $utype=$_SESSION['user_type']=$row['type']; 
 $sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
 $array=mysqli_fetch_array($sub);
 $sub_id=$array['user_id'];
 $sub1=mysqli_query($connection,"SELECT * FROM user where id='$user_id' ")or die(mysqli_error($connection));
 $array1=mysqli_fetch_array($sub1);
 $message11=$array1['sms'];
?><style>
/*script for input type date to display placeholder*/
  input[type="date"]::before { 
          content: attr(data-placeholder);
          width: 100%;
        } 

  input[type="date"]:focus::before,
  input[type="date"]:valid::before { display: none }

    table {
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
        border: 1px solid #ddd;
    }

    td {
        border: none;
        text-align: left;
        padding: 8px;
    }
    
    th {
        border: none;
        text-align: left;
        padding: 8px;
        background-color:#ddd;
    
    }

    tr:nth-child(even){background-color: #f2f2f2}
    
    hr {
        margin-top: 10px;
        margin-bottom: 20px;
        border-color: #27b6ee;
    } 
   .dt-buttons{
        margin-left: 350px;
        
    }

  /*  .table_head{

          background-color: #337ab7;
          color: white;
    }*/
  .required_field{
      color: red;
  }

/*custom css for print image view in setting tab*/
#myImg,  #myImg1{
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}
#in_1{
	width:226px;

}

#myImg, #myImg1:hover {opacity: 0.7;}

/* The Modal (background) */
.modal_print {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    /*z-index: 1;  Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content_print {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content_print, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

.small-box {
  border-radius: 2px;
  position: relative;
  display: block;
  margin-bottom: 20px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
}
.small-box > .inner {
  padding: 10px;
}
.small-box > .small-box-footer {
  position: relative;
  text-align: center;
  padding: 3px 0;
  color: #fff;
  color: rgba(255, 255, 255, 0.8);
  display: block;
  z-index: 10;
  background: rgba(0, 0, 0, 0.1);
  text-decoration: none;
}
.small-box > .small-box-footer:hover {
  color: #fff;
  background: rgba(0, 0, 0, 0.15);
}
.small-box h3 {
  font-size: 18px; 
  font-weight: bold;
  margin: 0 0 10px 0;
  white-space: nowrap;
  padding: 0;
}
.small-box p {
  font-size: 20px;
}
.small-box p > small {
  display: block;
  /*color: #f9f9f9;*/
  font-size: 15px;
  margin-top: 5px;
}
.small-box h3,
.small-box p {
  z-index: 5;
}
#filter{

	position: relative;
	
	top:10px;
}
.small-box .icon {
  -webkit-transition: all 0.3s linear;
  -o-transition: all 0.3s linear;
  transition: all 0.3s linear;
  position: absolute;
  top: -10px;
  right: 10px;
  z-index: 0;
  font-size: 45px;
  color: rgba(0, 0, 0, 0.15);
}
.small-box:hover {
  text-decoration: none;
  /*color: #f9f9f9;*/
}
.small-box:hover .icon {
  font-size: 60px;
}
@media (max-width: 767px) {
  .small-box {
    text-align: center;
  }
  .small-box .icon {
    display: none;
  }
  .small-box p {
    font-size: 12px;
  }
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content_print {
        width: 100%;
    }
}
</style>
<!-- <div class="col-md-12">
	<div class="col-md-2" id="in_1">
		<div class="small-box bg-aqua">
	        <div class="inner">
	    <?php 
$sql=mysqli_query($connection,"SELECT * from common where user_id='$user_id'")or die(mysqli_error($connection));
 $rowcount=mysqli_num_rows($sql);


	       		            ?> <h3><?Php echo $rowcount; ?></h3>
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
$sql=mysqli_query($connection,"SELECT * from course where user_id='$user_id'")or die(mysqli_error($connection));
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
$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common where user_id='$user_id'")or die(mysqli_error($connection));
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
$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common where user_id='$user_id'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);
 $data=$rowcount['a'];


	       		            ?> <h3><?Php echo $data; ?></h3>
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
$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common where user_id='$user_id' ")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);
 $data=$rowcount['a'];


	       		            ?> <h3><?Php echo $data; ?></h3>
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
	
	
</div>
 -->
<!-- </form> -->
<?php	 if(isset($_GET["id"]))

    {
    	
       $id = $_GET["id"];
?>
<div class="row">
	
	<div class="col-lg-12">
            <h4>Recent Receipts</h4>
			<table class="datatable table table-striped" id="example" cellspacing="0" width="100%">
			  <thead>
				<tr>
				  
				  <th>Sr. No</th>

				  <th>Receipt Number</th>
				  <th>Date</th>
				  <th>Student Name</th>
				  <th>Course</th>
				  <th>Contact Person</th>
				  
				  <th>Due Date</th>
				  <th>Status</th>
				  <th>Due</th>
				  <th>Paid</th>
				  <th>Total</th>
				  <th>Type</th>
				</tr>
			  </thead>
			  <tbody>
			  <?php 
			  	$sr_no=0;
			  	if($utype=='admin')
			  	{
      		 		$query = mysqli_query($connection,"SELECT * FROM receipt WHERE user_id='$id' order by fees_due_date DESC ")or die(mysqli_error($connection));
      		 	}
      		 	else{
      		 		$query = mysqli_query($connection,"SELECT * FROM receipt WHERE sub_user_id='$sub_id' order by fees_due_date DESC")or die(mysqli_error($connection));
      		 	}
					while($data=mysqli_fetch_array($query))
					{
						
			  			$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];

			  			$amt=$row['total_amt'];

			   ?>
				<tr id="invoice-23">
				 
				  <td><?php echo $sr_no;?></td>
				    <td><?php echo $row['cur_date']; ?></td>
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
				   	<a href="user_dashboard.php?page=add_receipt&id=<?php echo $row['id'];?>"><?php echo $row['sname'];?></a>
				   <?php } ?>

				  </td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				  <td><?php echo $row['course_name'];?></td>
				 <!--  <td><?php echo $row['s_mobile'];?></td> -->
				 <td></td>
				  <td><?php echo $row['fees_due_date'];?></td>
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

				  <td><?php echo $data['due_amt'];?></td>
				  <td><?php echo $data['gross_amount'];?></td>
				

				    <?php 
				  	if($due==0.00)
						{
				  	 ?>
				  	<td>
				  	  <!-- <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');" disabled><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					  <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $data['id']; ?>" id="inv_id" class="btn btn-sm btn-info"><i class="glyphicon glyphicon-eye-open"></i> View</button> -->
					  	  <?php
                 if($message11=='Yes')
                 { ?>
					  <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope"></i> SMS</button>
                <?php }?>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<!-- <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');"><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					 <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $data['id'];; ?>" id="inv_id" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-eye-open"></i> View</button> -->
					  <?php
					  if($message11=='Yes')
                 { ?>
					  <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" onclick="getInfo(this)"><i class="glyphicon glyphicon-envelope"></i> SMS</button>
					 <?php }?>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<!-- <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');"><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					 <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $data['id'];; ?>" id="inv_id" class="btn btn-sm btn-info" ><i class="glyphicon glyphicon-eye-open"></i> View</button> -->
					  <?php
                 if($message11=='Yes')
                 { ?>  
					  <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" onclick="getInfo(this)"><i class="glyphicon glyphicon-envelope"></i> SMS</button>
	             <?php }?>
				  </td>
				   <?php } ?>
				</tr>
				<?php
					}
			   ?>
			  </tbody>
			</table>
		</div>
</div>
<?php 
 }
else{
?>
<div class="row" >
	

	<!-- <form id="filter" name="filter" method="post"> -->
<div class="col-lg-12" id="filter"> 

   <input type="hidden" name="us_id" id="us_id" value="<?php echo $user_id; ?>">
	<div class="col-md-1">
		<label>From Date:-</label>
	</div>
	<div class="col-md-2">
		<input type="date" class="form-control" name="fromDate" id="fromDate" >
	</div>
	
	<div class="col-md-1">
		<label>To Date:-</label>
	</div>
	<div class="col-md-2">
		<input type="date" class="form-control" name="toDate" id="toDate" onclick="check()">
		<p id="msg1"></p>
	</div>
	<div class="col-md-2" >
		<select class="form-control" name="sel_duration" id="sel_duration">
			<option value="">Select Period</option>
			<option value="this-week">This Week</option>
			<option value="last-week">Last Week</option>
			<option value="this-month">This Month</option>
			<option value="last-month">Last Month</option>
			<option value="this-year">This Year</option>
		   <option value="five">Five-Five</option>
		</select>
	</div>
    <div class="col-md-1">
		<button name="search" id="search" type="submit" class="btn btn-primary">Search&nbsp;<span class="glyphicon glyphicon-search"></span></button>
	</div>
	
	<!-- <div class="col-md-1">
		<button type="reset" class="btn btn-danger" value="Reset" onclick="reset()">Reset</button>
	</div>
	 -->
</div>
<div class="panel-body"></div>
<div class="panel-body"></div>

<div class="col-md-12" id="hide_div">

		<div class="col-md-2" id="in_1">
		<div class="small-box bg-aqua">
		<div class="inner">
		<?php 
		$sql=mysqli_query($connection,"SELECT * from common ")or die(mysqli_error($connection));
		$rowcount=mysqli_num_rows($sql);


		?> <h3><?Php echo $rowcount; ?></h3>
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
		$sql=mysqli_query($connection,"SELECT sum(due_amt) as a ,SUM(gross_amount) as b from common ")or die(mysqli_error($connection));
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
		$sql=mysqli_query($connection,"SELECT sum(due_amt) as a from common ")or die(mysqli_error($connection));
		$rowcount=mysqli_fetch_array($sql);
		$data=$rowcount['a'];


		?> <h3><?Php echo $data; ?></h3>
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
		$sql=mysqli_query($connection,"SELECT sum(gross_amount) as a from common ")or die(mysqli_error($connection));
		$rowcount=mysqli_fetch_array($sql);
		$data=$rowcount['a'];


		?> <h3><?Php echo $data; ?></h3>
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

	
</div>
<!-- </form> -->
	<div class="col-lg-12" id="reportdata">
        <h4>Recent Receipts</h4>
		<table class="datatable table table-striped" id="example" cellspacing="0" width="100%">
			  <thead>
				<tr>
				  <th>Sr. No</th>
  				  <th>Date</th>

				  <th>Receipt Number</th>
				  <th>Student Name</th>
				  <th>Mobile No</th>
				  <th>Course</th>
				  <!-- <th>Mobile NO</th> -->
				  <th>Contact Person</th>
				  
				  <th>Due Date</th>
				  <th>Status</th>
				  
				  <th>Paid</th>
				  <th>Due</th>
				  <th>Type</th>
				</tr>
			  </thead>
			  <tbody>
			  <?php 
			  	$sr_no=0;
			  	if($utype=='admin')
			  	{
			  		$query = mysqli_query($connection,"SELECT * FROM receipt WHERE user_id='$user_id' order by fees_due_date ")or die(mysqli_error($connection));
      		 	}
      		 	else{
			  		$query = mysqli_query($connection,"SELECT * FROM receipt WHERE user_id='$sub_id' order by fees_due_date ")or die(mysqli_error($connection));
      		 	}
			  		while ($row=mysqli_fetch_array($query)) 
			  		{
			  	
			  			$sr_no++;
			  			$id1=$row['id'];
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

				  </td><td><?php echo $row['s_mobile'];?></td>
				  <!-- <td><?php echo $row['created_at'];?></td> -->
				  <td><?php echo $row['course_name'];?></td>
				  <!-- <td><?php echo $row['s_mobile'];?></td> -->
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
				  <!-- 	  <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');" disabled><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					  <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $id1; ?>" id="inv_id" class="btn btn-sm btn-info"><i class="glyphicon glyphicon-eye-open"></i> View</button> -->
					  <?php
                 if($message11=='Yes')
                 {?> 

					  <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-envelope" ></i> SMS</button>
				   <?php }?>
				  </td>
				  <?php }
				  		else if($amt==$due){
				   ?>
				  <td>
					<!-- <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');"><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					 <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $id1; ?>" id="inv_id" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-eye-open"></i> View</button> -->
					 <?php
                 if($message11=='Yes')
                 { ?>
					 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" onclick="getInfo(this)"><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				 <?php }?>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<!-- <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');"><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					 <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $id1; ?>" id="inv_id" class="btn btn-sm btn-info" ><i class="glyphicon glyphicon-eye-open"></i> View</button> -->
					 <?php
                 if($message11=='Yes')
                 { ?>
					 <button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" onclick="getInfo(this)"><i class="glyphicon glyphicon-envelope"></i> SMS</button>
					 <?php }?>
				  </td>
				   <?php } ?>
				  
				</tr>
				<?php } ?>
			  </tbody>

			  	
			</table>
			 	
		</div>
</div>
<?php } ?>

<div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   <div class="modal-dialog"> 
      <div class="modal-content"> 

         <div class="modal-header"> 
             <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="diss()">×</button> 
             <h4 class="modal-title" style="text-align:center;">
              Payment Details
             </h4> 
         </div> 
         <div class="modal-body"> 
             <div id="dynamic-content"> <!-- mysql data will load in table -->
                 <div class="row"> 
                     <div class="col-md-12"> 
	                    <div class="table-responsive">
	                     <table id="table" style=".hidden{display:none;}" class="table table-striped table-bordered">
		                     <tr>
		                     <th>Date</th>
		                     <th>Amount</th>
		                     <th>Payment Status</th>
		                     </tr>
	                     </table>
	                    </div>
	                 </div> 
                 </div>
             </div> 
         </div> 
           
       <div class="modal-footer"> 
            <button type="button" class="btn btn-success" data-dismiss="modal" onclick="diss()">Close</button>  
       </div>  
              
      </div> 
   </div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" tabindex="1" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" align="center">Payment Here</h3>
            </div>
            <div class="modal-body">    
                <form  method="post" id="myform" enctype="multipart/formdata"> 

                <input type="hidden" name="invoice_id" id="invoice_id">
                <input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
				<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
				<input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
                 <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Date:</h4><input type="date" class="form-control" name="txt_date" id="txt_date"  placeholder="Date"  required="" /></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                </div> 

                 <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Amount:</h4><input type="text" class="form-control" name="amount" id="amount" placeholder="Amount" required=""></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                </div> 

                 <div class="row">
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                    <div class="col-sm-8 col-md-8 col-lg-8"><h4>Description:</h4><input type="text" class="form-control" name="txt_desc" id="txt_desc" placeholder="Description" required=""></div>
                    <div class="col-sm-2 col-md-2 col-lg-2"></div>
                </div>
           
                <br>
           		 <p id="pmsg"></p>   
	            <div class="modal-footer">

	               <button class="btn btn-primary submit" name="submit" id="save">Save</button>
	               <button type="button" class="btn btn-warning btn-md" data-dismiss="modal">Cancel</button>      
		        </div>

                </form>
            </div>
        </div>
    </div>
</div>
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
                 <input type="hidden" name="user_id" id="hidd11" value="<?php echo $id1; ?>">
				<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
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

<script>
 	
 $(document).ready(function(){
 
 $(document).on('click', '#inv_id', function(e){
  
  e.preventDefault();
  
  var uid = $(this).data('id'); // get id of clicked row
  
  $('#dynamic-content').hide(); // hide dive for loader
  
  $.ajax({
      url: 'get_payment_details.php',
      type: 'POST',
      data: 'id='+uid,
      dataType: 'json'
  })
  .done(function(data){

      console.log(data);
   	$('#dynamic-content').hide(); // hide dynamic div
	$('#dynamic-content').show(); //

		 if(data){

                var len = data.length;
                var txt = "";
                if(len > 0){
                    for(var i=0;i<len;i++){
                        if(data[i].date && data[i].amount && data[i].notes){
                          txt += "<tr><td>"+data[i].date+"</td><td>"+data[i].amount+"</td><td>"+data[i].notes+"</td></tr>";
                        }
                    }
                    if(txt != ""){
                        $("#table").append(txt).removeClass("hidden");
                    }
                }
            }

  })
  .fail(function(){
      $('.modal-body').html('<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...');
  });
  
 });
 
});

function diss()
{
	location.reload();
}
</script>
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
                window.location.href= "dashboard.php?page=receipt";
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
<!-- Insert Script -->
<script>
$('form#myform').submit(function(e){

        e.preventDefault();

          $('button#save').button('loading');
            $.ajax({

                    url:'receipt_payment.php',
                    type: "POST",
                    data: new FormData(this),
                    contentType:false,
                    processData:false,
                    success: function(data)
                    {
                        // alert(data);
                        $('button#save').button('reset');
                        if(data==1)
                        {
                           swal({
								  position: 'top-right',
 							      type: 'success',
  								  title: 'Payment Successfully!!!',
  								  showConfirmButton: false,
  								  timer: 1500
								})
								  window.setTimeout(function()
								    { 
 										location.reload();
 								 	} ,1500);
								$('#amount').css('borderColor','#ccc');
								$('#pmsg').html(''); 

                        }
                        else if(data==2){

                            // alert("Error In payments");
                            $('#pmsg').html('Paid amount is greter than due amount!!!'); 
							$('#pmsg').css('color','red');
							$('#amount').css('borderColor','red');
                        }
                        
                    }
            });

    });	

</script>

<script>
	function check()
	{
		var toDate=$('#toDate').val();
		if(toDate!=="mm/dd/yyyy")
		   {
			  $('#toDate').css('borderColor','#ccc');
			  $('#msg1').html('');		  
			}
	}
</script>

<script>
$('#search').click(function()
	{
		var fromDate=$('#fromDate').val();
		var toDate=$('#toDate').val();
		var us_id =$('#us_id').val();
		var sel_duration =$('#sel_duration').val();	

		    $.ajax({	
			  
					    url:'invoice_filter.php',
					    type:'POST',
					    data:{
						        fromDate:fromDate,
						        toDate:toDate,
						        us_id:us_id,
						        sel_duration:sel_duration
					    },
					    success:function(data)
					    {
					      // alert(data);
					      $('#reportdata').html('');
					      $('#reportdata').html(data);
					        $('#hide_div').hide();


					      $('#example').DataTable({

							     "dom": 'lBfrtip',
							     "buttons": [
							            {
							                extend: 'collection',
							                text: 'Export',
							                exportOptions: {
							                   columns: [ 0, 1, 2]
							                    
							                },
							                buttons: [
							                    // 'copy',
							                    'excel'
							                    // 'csv',
							                    // 'pdf',
							                    // 'print'
							                ]
							            }
							        ]
							  });
	      
						      var table=$('#example').DataTable();
							      table
							      .order([[0,'desc']])
							      .draw(false);
					    }
					});

	});
</script>

<script type="text/javascript">
    var datefield=document.createElement("input")
    datefield.setAttribute("type", "date")
    if (datefield.type!="date"){ //if browser doesn't support input type="date", load files for jQuery UI Date Picker
        document.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n') 
    }
</script>
    <script>
if (datefield.type!="date"){ //if browser doesn't support input type="date", initialize date picker widget:
    jQuery(function($){ //on document.ready
        $('#fromDate').datepicker();
        $('#toDate').datepicker();
    })
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
