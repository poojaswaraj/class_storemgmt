                <?php 			
// var_dump($_POST);   
                include "config.php";
//                if(isset($_GET['ed']) && !empty($_GET['ed']))
//			{
			$id=$_POST['ed'];
//			if(isset($_POST['submit']))
//			{	
			$sess_id11=$_POST['sess_id11'];
			$sche_type=$_POST['sche_type'];
			// $sche_date=$_POST['sche_date'];
			// //$sche_action=$_POST['sche_action']; 
			// $sche_time=$_POST['sche_time'];
			//$en_call_type=$_POST['en_call_type'];
			// $en_status=$_POST['en_status'];
			$en_remark=$_POST['en_remark'];
			 $sub_id=$_POST['sub_us_id'];
                        $sub_us_ty=$_POST['sub_us_ty'];
                        $query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
                        $row=mysqli_fetch_array($query);
                        $type= $row['type'];
                        if(function_exists('date_default_timezone_set'))
		      {
                         date_default_timezone_set("Asia/Kolkata");
              }
               $data222=date('h:i:s');

$insert="INSERT INTO `generate_log`(`sche_type`, `cur_date`, `cur_time`, `en_remark`,`student_id`,`generated_by`,`status`,`user_id`,`sub_user_id`) VALUES
	('$sche_type',current_date(),'$data222','$en_remark','$id','$sess_id11','active','$sub_id','$sess_id11')";

			
			if(mysqli_query($connection,$insert)){
                            
                            
                            echo "3";
                            
			}else{
                            
                            echo "2";
			
                             }
			
   
                          
//                        }
				?>