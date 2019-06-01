<style>

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
</style>
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
?>
<div class="row" >
	
<h3>Department Wise Report</h3>
<hr>
	<!-- <form id="filter" name="filter" method="post"> -->
<div class="col-lg-12" id="filter"> 
	<div class="col-md-2">
		<select class="form-control" name="type" id="type" >
			<option value="" >Select Department</option>
			<?php

			$mode_qu=mysqli_query($connection,"SELECT * FROM department where user_id='$user_id' ")or die(mysqli_error($connection));
			while($row=mysqli_fetch_array($mode_qu))
			{
            ?>
			<option value="<?php echo $row['name'];?>"><?php echo $row['name'];?></option>
	<?php	
      }
	?>
			<!-- <option value="Recurring">Recurring Invoices</option> -->
			
		</select>
		<p id="msg"></p>
	</div>
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
	
    <div class="col-md-1">
		<button name="search" id="search" type="submit" class="btn btn-primary">Search&nbsp;<span class="glyphicon glyphicon-search"></span></button>
	</div>
	
	<!-- <div class="col-md-1">
		<button type="reset" class="btn btn-danger" value="Reset" onclick="reset()">Reset</button>
	</div>
	 -->
</div>
<div class="panel-body"></div>
<div class="col-lg-12" id="reportdata">
  <h4>Recent Student</h4>
      <table class="table table-striped table-bordered table-hover dataTable no-footer" id="example" style="width:100%;">
      <thead>
        <tr bgcolor="#999999">
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
      		 		
			  	$qry=mysqli_query($connection,"SELECT * FROM receipt WHERE  user_id='$user_id' ORDER BY cur_date ASC")or die(mysqli_error($connection));
      		}else{
      			$qry=mysqli_query($connection,"SELECT * FROM receipt WHERE  user_id='$user_id' ORDER BY cur_date ASC")or die(mysqli_error($connection));
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
          if($row['payment_mode']=='Paytm' && $row['paytm_name']=='Pawan')
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
    </div>
</div>



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
		var type =$('#type').val();	

		    $.ajax({	
			  
					    url:'invoice_filter4.php',
					    type:'POST',
					    data:{
						        fromDate:fromDate,
						        toDate:toDate,
						        us_id:us_id,
						        type:type
					    },
					    success:function(data)
					    {
					      // alert(data);
					      $('#reportdata').html('');
					      $('#reportdata').html(data);

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

