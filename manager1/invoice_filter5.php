<?php

include "config.php";

// $user_id=$_SESSION['login_user'];

$fromdate=strtotime($_POST['fromDate']); 
$fromdate=date("Y-m-d",$fromdate);
$todate=strtotime($_POST['toDate']); 
$todate=date("Y-m-d",$todate);
$utype="admin";
  $user_id = $_POST['us_id'];
  $type = $_POST['type'];
 $type1 = $_POST['type1'];
?> 
    <?php 
         if($type1=='Receipt')
         {





    ?>
    <style>
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
<div class="panel-body"></div>
<div class="col-md-12">
<div class="col-md-1" id="in_1">
		<div class="small-box bg-aqua">
	        <div class="inner">
	        	          <?php 
$sql=mysqli_query($connection,"SELECT count(id) as b from receipt where  date(cur_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);

 $data2=$rowcount['b'];



	       		            ?> <h3><?Php echo $data2; ?></h3>
	            <p>Total Receipt</p>
	        </div>
	        <!-- <div class="icon">
	           <i class="fa fa-check" style="color:#4169e1"></i>
	        </div> -->
	          
	    </div>
	</div>
	<div class="col-md-1" id="in_1">
		<div class="small-box bg-aqua">
	        <div class="inner">
				            <?php 
$sql=mysqli_query($connection,"SELECT SUM(paid_amt) as b from receipt where  date(cur_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);

 $data2=$rowcount['b'];


	       		            ?> <h3><?Php echo $data2; ?></h3>
	            <p>Paid Amount</p>
	        </div>
	       <!--   <div class="icon">
	           <i class="fa fa-remove" style="color:#FF4500"></i>
	        </div> -->
	      
	    </div>	
	</div>
	
	
	
</div>
    <h4>Recent Receipts</h4>
<table id="example" class="datatable table table-striped">
  <thead>
    <tr>
      <th>Sr. No</th>
  				  <th>Date</th>
				  <th>Receipt Number</th>
				  <th>Student Name</th>
				    <th>Mobile NO</th> 
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
			if($fromdate!='' && $todate!='')
				{
					$sr_no=0;
		          $sql1 =mysqli_query($connection,"SELECT * From receipt WHERE  date(cur_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type' ORDER BY cur_date DESC ")or die(mysqli_error($connection));
		          
		           while($row=mysqli_fetch_array($sql1))
					{
						$sr_no++;
			  			$id1=$row['id'];
			  			$due=$row['remaing_amt'];

			  			$amt=$row['total_amt'];
			  			$generated_by=$row['sub_user_id'];
			  			$sud=$row['sub_user_id'];

			   ?>
				<tr id="invoice-23">
				 
				 <td><?php echo $sr_no;?></td>
				    <td><?php echo date('d-m-Y',strtotime($row['cur_date'])); ?></td>
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

				  </td> <td><?php echo $row['s_mobile'];?></td>
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
				  <td><?php echo date('d-m-Y',strtotime($row['fees_due_date']));?></td>
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
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
				  </td>

				  <?php }
				  		else{
				   ?>
				  <td>
					<button data-toggle="modal" class="btn btn-sm btn-success" data-target="#myModal22" data-id="<?php echo $id; ?>" id="<?php echo $id1; ?>" class="btn btn-sm btn-info" ><i class="glyphicon glyphicon-envelope"></i> SMS</button>
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
			<?php
		} 
         else
         {



    ?>
<style>
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
<div class="panel-body"></div>
<div class="col-md-12">
<div class="col-md-1" id="in_1">
		<div class="small-box bg-aqua">
	        <div class="inner">
	        	          <?php 
$sql=mysqli_query($connection,"SELECT count(id) as b from common where  date(issue_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);

 $data2=$rowcount['b'];



	       		            ?> <h3><?Php echo $data2; ?></h3>
	            <p>Total Invoice</p>
	        </div>
	        <!-- <div class="icon">
	           <i class="fa fa-check" style="color:#4169e1"></i>
	        </div> -->
	          
	    </div>
	</div>
	<div class="col-md-1" id="in_1">
		<div class="small-box bg-aqua">
	        <div class="inner">
				            <?php 
$sql=mysqli_query($connection,"SELECT SUM(due_amt) as b from common where  date(issue_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);

 $data2=$rowcount['b'];


	       		            ?> <h3><?Php echo $data2; ?></h3>
	            <p>Due Amount</p>
	        </div>
	       <!--   <div class="icon">
	           <i class="fa fa-remove" style="color:#FF4500"></i>
	        </div> -->
	      
	    </div>	
	</div>
	<div class="col-md-1" id="in_1">
		<div class="small-box bg-aqua">
	        <div class="inner">
	        	          <?php 
$sql=mysqli_query($connection,"SELECT SUM(gross_amount) as b from common where  date(issue_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);
 $data=$rowcount['b'];


	       		            ?> <h3><?Php echo $data; ?></h3>
	            <p>Total Amount</p>
	        </div>
	         <!-- <div class="icon">
	           <i class="fa fa-money" style="color:green;"></i>
	        </div> -->
	      
	    </div>
	</div>
	
	
</div>


    <h4>Recent Invoices</h4>
<table id="example" class="datatable table table-striped">
  <thead>
    <tr>
    
                   <th>Sr. No</th>
				  <th>Invoice Number</th>
				  <th>Student Name</th>
				   <th>Mobile No</th>
				  <th>Contact Person</th>
				
				  <th>Issue Date</th>
				  <th>Due Date</th>
				  <th>Status</th>
				  <th>Due</th>
				 
				  <th>Total</th>
				  <th>Receipt</th>

  </thead>
  <tbody>
        <?php
			if($fromdate!='' && $todate!='')
				{
					$sr_no=0;
		          $sql1 =mysqli_query($connection,"SELECT * From common WHERE  date(issue_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and sub_user_id='$type' ORDER BY issue_date DESC ")or die(mysqli_error($connection));
		          
		           while($data=mysqli_fetch_array($sql1))
					{
						$sr_no++;
						$id1=$data['id'];
						$due=$data['due_amt'];
						$amt=$data['gross_amount'];
						$generated_by=$data['sub_user_id'];
			  			$sud=$data['sub_user_id'];
			   ?>
				<tr id="invoice-23">
				  <td><?php echo $sr_no;?></td>

				  <td><?php echo $data['number'];?></td>
				  <td>
				  <?php 
				  	if($utype=='admin')
					{
				   ?>
				  <a href="dashboard.php?page=edit_new_invoice&id=<?php echo $data['id'];?>"><?php echo $data['student_name'];?></a>
				  <?php 
				 	 }
				 	 else
				 	 {
				   ?>
				   	<a href="dashboard.php?page=edit_new_invoice&id=<?php echo $data['id'];?>"><?php echo $data['student_name'];?></a>
				   <?php } ?>
				  </td>
				   <td><?php echo $data['contact_person'];?></td>
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
				  <!-- <td><?php echo $data['created_at'];?></td> -->
				  <td><?php echo date('d-m-Y', strtotime($data['issue_date']));?></td>
				  <td><?php echo date('d-m-Y', strtotime($data['due_date']));?></td>

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
				  	  <td><a href="dashboard.php?page=add_receipt1&id=<?php echo $data['id'];?>"><button class="btn btn-primary" disabled>Payment</button></a></td>
				  <!-- 	<td>
				  	  <button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');" disabled><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					  <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $data['id']; ?>" id="inv_id" class="btn btn-sm btn-info"><i class="glyphicon glyphicon-eye-open"></i> View</button>
				  </td> -->
				  <?php }
				  		else if($amt==$due){
				   ?>
				    <td><a href="dashboard.php?page=add_receipt1&id=<?php echo $data['id'];?>"><button class="btn btn-primary" >Payment</button></a></td>
				  <!-- <td>
					<button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');"><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					 <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $data['id'];; ?>" id="inv_id" class="btn btn-sm btn-info" disabled><i class="glyphicon glyphicon-eye-open"></i> View</button>
				  </td> -->

				  <?php }
				  		else{
				   ?>
				    <td><a href="dashboard.php?page=add_receipt1&id=<?php echo $data['id'];?>"><button class="btn btn-primary" >Payment</button></a></td>
				 <!--  <td>
					<button class="btn btn-sm btn-primary" id="load-payments-for-23" rel="payments:show" type="button" data-toggle="modal" data-target="#myModal"  onclick="$('#invoice_id').val('<?php echo $id1;?>');"><span class="icon fa fa-money"></span>&nbsp;Payments</button>

					 <button data-toggle="modal" data-target="#myModal1" data-id="<?php echo $data['id'];; ?>" id="inv_id" class="btn btn-sm btn-info" ><i class="glyphicon glyphicon-eye-open"></i> View</button>
				  </td> -->
				   <?php } ?>
				</tr>
				<?php
					}
			   ?>
			  </tbody>
			</table>
			<?php
		} 
	}?>
	