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
?><div class="row">
<h3>Student List
<?php 
	  	if($utype=='admin')
		{
	   ?>
	 <a  href='dashboard.php?page=add_student' style="float:right;"> + Add Student</a></h3><hr>
	  <?php 
	 	 }
	 	 else
	 	 {
	   ?>
	   <a  href='user_dashboard.php?page=add_student' style="float:right;"> + New Enquiry</a></h3><hr>
	<?php } ?>
	
	<div class="panel-body"></div>
	
<div class="col-md-12">
  <h4>Recent Student</h4>
      <table class="table table-striped table-bordered table-hover dataTable no-footer" id="example" style="width:100%;">
      <thead>
        <tr bgcolor="#999999">
          <td>Sr. No</td>
          
          <td>Student ID</td>
          <td>Student Name</td>
          <td>Contact Number</td> 
          <td>Courses</td>     
		  <td>Contact Person</td>
       
        </tr>
        </thead>
        <tbody>
        <?php
		 if($utype=='admin')
			{
      		 		
			  	$qry=mysqli_query($connection,"SELECT * FROM student WHERE user_id='$user_id'")or die(mysqli_error($connection));
      		}else{
      			$qry=mysqli_query($connection,"SELECT * FROM student WHERE user_id='$sub_id' AND sub_user_id='$user_id' ")or die(mysqli_error($connection));
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
          <td><?php echo $cnt++ ?></td>
         
         <!-- <td><img src="images/<?php echo $row['img_file'];?>" height="60px" width="80px"></td>-->
         <td><?php echo $row['id'];?></td>
          <td><a href='dashboard.php?page=student_profile&ed=<?php echo $row['id']; ?>'><?php echo $row['name'];?></a></td>
          <!--
          <td><?php echo $row['estatus'];?></td>
          <td><?php echo $row['course'];?></td>
          <td><?php echo $row['dob'];?></td>
          <td><?php echo $row['gender'];?></td>
          <td><?php echo $row['contact_student'];?></td>
          <td><?php echo $row['email'];?></td>
          <td><?php echo $row['student_address'];?></td>
          

          <td><?php echo $row1['Due'];?></td>

          <?php 
          		if(empty($amt)){
           ?>
            <td><?php echo "Rs.0.00" ?> </td>
           <?php 
           		}
           		else{
            ?>
          <td><?php echo"Rs.".$row1['Total'];?></td>
          <?php } ?>-->
          
          <td><?php echo $row['contact_no'];?></td>
          <td><?php echo $row['course_list'];?></td>
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
         
          <!--
		  <td>
		   <?php 
			  	if($utype=='admin')
				{
			   ?>
			     <?php echo "<a href='dashboard.php?page=invoices&id=".$row['id']."'  title='View Invoices' data-toggle='tooltip'>";?><span class="icon fa fa-money"></span></a>
			  <?php 
			 	 }
			 	 else
			 	 {
			   ?>
			      <?php echo "<a href='user_dashboard.php?page=invoices&id=".$row['id']."'  title='View Invoices' data-toggle='tooltip'>";?><span class="icon fa fa-money"></span></a>
			   <?php } ?>
		  </td>-->
        </tr>
        <?php } ?>
        </tbody>
      </table>
    </div>
</div>

