<?php 

include("config.php");
		
    $id=$_POST['log_dir'];
    $Remark_dir=$_POST['remark_dir'];
   
    $sub_us_ty= $_POST['sub_us_ty'];
    $query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
	$type= $row['type'];
        if($type=='user')
{

       
           $sql_query1 = mysqli_query($connection,"UPDATE `generate_log` SET `dir_remark`='$Remark_dir' WHERE `id`='$id'")or die(mysqli_error($connection));

           if($sql_query1=='true')
           {
               echo 1;
           } 
           else{
                  echo 2;      
           }  
} 
else{
      
          
            $sql_query1 = mysqli_query($connection,"UPDATE `generate_log` SET `dir_remark`='$Remark_dir' WHERE `id`='$id'")or die(mysqli_error($connection));

               if($sql_query1=='true')
               {
                   echo 3;
               } 
               else{
                     echo 2;
               }    
        
}

    

?>