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
$sql=mysqli_query($connection,"SELECT count(id) as b from receipt where  date(cur_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' and d_name='$type'")or die(mysqli_error($connection));
 $rowcount=mysqli_fetch_array($sql);

 $data2=$rowcount['b'];



                        ?> <h3><?Php echo $data2; ?></h3>
              <p>Total Student</p>
          </div>
          <!-- <div class="icon">
             <i class="fa fa-check" style="color:#4169e1"></i>
          </div> -->
            
      </div>
  </div>
  </div>     
<table id="example" class="datatable table table-striped">
  <thead>
    <tr>
          <th>Date</th>       
          <th>Student Name</th>
          <th>Receipt No</th> 
          <th>Mode</th>
          <th>Cash</th>  
          <th>Bank</th> 
          <th>Nisha</th>  
          <th>Pawan</th>        
		  
       
        </tr>
        </thead>
        <tbody>
        <?php
		 if($utype=='admin')
			{
      		 		
			  	$qry=mysqli_query($connection,"SELECT * FROM receipt WHERE date(cur_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' AND d_name='$type' ORDER BY cur_date ASC")or die(mysqli_error($connection));
      		}else{
      			$qry=mysqli_query($connection,"SELECT * FROM receipt WHERE date(cur_date) BETWEEN  '$fromdate' AND '$todate' AND user_id='$user_id' AND d_name='$type' ORDER BY cur_date ASC")or die(mysqli_error($connection));
      		}
       	
			$cnt=1;
			while($row=mysqli_fetch_array($qry)){
				$c_id=$row['id'];
        $generated_by=$row['sub_user_id'];
              $sud=$row['sub_user_id'];


		 if($utype=='admin')
			{
				$qry1=mysqli_query($connection,"SELECT SUM(gross_amount) as Total, SUM(due_amt) as Due FROM common WHERE  student_id='$c_id' and type='Invoice' and user_id='$user_id' ")or die(mysqli_error($connection));
			}
			else
			{
				$qry1=mysqli_query($connection,"SELECT SUM(gross_amount) as Total, SUM(due_amt) as Due FROM common WHERE  student_id='$c_id' and type='Invoice' and user_id='$sub_id' AND sub_user_id='$user_id' ")or die(mysqli_error($connection));

			}
					$row1=mysqli_fetch_array($qry1);

					$amt=$row1['Total'];
		?>
        <tr>
          <td><?php echo  date('d-m-Y',strtotime($row['cur_date']));?></td>
         
         <!-- <td><img src="images/<?php echo $row['img_file'];?>" height="60px" width="80px"></td>-->
         
          <td><a href='dashboard.php?page=student_profile&ed=<?php echo $row['s_id']; ?>'><?php echo $row['sname'];?></a></td>
        
          <td><?php echo $row['ser_no'];?></td>
          <td><?php echo $row['payment_mode'];?></td>
          
<?php
          if($row['payment_mode']=='cash')
          {
            ?>
         
          <td><?php echo $row['paid_amt'];?></td>
          <?php
        }
        else
        {
          ?>
          <td><?php echo 0;?></td>
          <?php
        }

        ?>
        <?php
          if($row['payment_mode']=='bank')
          {
            ?>
         
          <td><?php echo $row['paid_amt'];?></td>
          <?php
        }
        else
        {
          ?>
          <td><?php echo 0;?></td>
          <?php
        }

        ?>

         <?php
          if($row['payment_mode']=='paytm' && $row['paytm_name']=='Nisha')
          {
            ?>
         
          <td><?php echo $row['paid_amt'];?></td>
          <?php
        }
        else
        {
          ?>
          <td><?php echo 0;?></td>
          <?php
        }

        ?>
        <?php
          if($row['payment_mode']=='paytm' && $row['paytm_name']=='Pawan')
          {
            ?>
         
          <td><?php echo $row['paid_amt'];?></td>
          <?php
        }
        else
        {
          ?>
          <td><?php echo 0;?></td>
          <?php
        }

        ?>
        
         





<!-- 
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
          
       
       <td><?php echo $g_name;?></td> -->
       
        </tr>
        <?php } ?>
        </tbody>
      </table>
          
