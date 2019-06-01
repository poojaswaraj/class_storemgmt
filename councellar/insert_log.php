                <?php 			
//			var_dump($_POST);   
                include "config.php";
//                if(isset($_GET['ed']) && !empty($_GET['ed']))
//			{
			$id=$_POST['ed'];
//			if(isset($_POST['submit']))
//			{	
		 	$sess_id11=$_POST['sess_id11'];
			$sche_type=$_POST['sche_type'];
			
			//$sche_action=$_POST['sche_action']; 
			
			//$en_call_type=$_POST['en_call_type'];
			if(function_exists('date_default_timezone_set'))
		      {
                         date_default_timezone_set("Asia/Kolkata");
              }
			$en_remark=$_POST['en_remark'];
			$sub_id=$_POST['sub_us_id'];
                        $sub_us_ty=$_POST['sub_us_ty'];
                        $query = mysqli_query($connection,"SELECT * FROM user_profile where id='$sess_id11' ");
                        $row=mysqli_fetch_array($query);
                        $type= $row['type'];
                        $d_name= $row['department_id'];
                        $data222=date('h:i:s');

if($type=='user')
{	
$insert="INSERT INTO `generate_log`(`sche_type`, `cur_date`, `cur_time`, `en_remark`,`student_id`,`generated_by`,`status`,`user_id`,`sub_user_id`,`d_name`) VALUES
	('$sche_type',current_date(),'$data222','$en_remark','$id','$sess_id11','active','$sub_id','$sess_id11','$d_name')";

if(mysqli_query($connection,$insert)){
                            
                            
                            echo "1";
                            
			}else{
                            
                            echo "2";
			
                             }




}else{
$insert="INSERT INTO `generate_log`(`sche_type`, `cur_date`, `cur_time`, `en_remark`,`student_id`,`generated_by`,`status`,`user_id`,`sub_user_id`,`d_name`) VALUES
	('$sche_type',current_date(),'$data222','$en_remark','$id','$sess_id11','active','$sub_id','$sess_id11','$d_name')";

			
			if(mysqli_query($connection,$insert)){
                            
                            
                            echo "3";
                            
			}else{
                            
                            echo "2";
			
                             }
			
  } 	
                          
//                        }
				?>