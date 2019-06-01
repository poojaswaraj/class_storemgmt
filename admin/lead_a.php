<?php 
include("config.php");
if(isset($_POST['submit'])){
    
     
        $employee=$_POST['employee'];
        $assign=$_POST['lead'];
        $query1= mysqli_query($connection,"SELECT * FROM `user_profile` WHERE `id` = '$employee'");
        $data1=mysqli_fetch_array($query1);       
        $emp_name= $data1['name'];
		foreach($assign as $chk)
        
		{
        
                     // $data['name'] = $employee_name;
                        $data['assign_to']  = $employee;
                        $data['id']  = $chk;
            
        
                $query= mysqli_query($connection,"SELECT * FROM `student` WHERE `id` = '$chk'");
                $data=mysqli_fetch_array($query);       
        
                $sql_query1 = mysqli_query($connection,"UPDATE student SET `assign_to`='$employee',`assign_to_name`='$emp_name' WHERE `id`='$chk'")or die(mysqli_error($connection));
  
// 		$sql_query2 = mysqli_query($connection,"UPDATE generate_log SET `generated_by`='$employee'  WHERE `student_id`='$chk'")or die(mysqli_error($connection));
        
	// echo $sql_query1;
                if( $sql_query1=='true')
                {
            
          
                    header("location:dashboard.php?page=assign_lead");
            
                } else{
            
            
                    header("location:dashboard.php?page=assign_lead");
            
       
                 }   
      
                }
    
    }

?>