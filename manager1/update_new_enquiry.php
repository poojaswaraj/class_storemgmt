<?php 

  include "config.php";
  $s_id=$_POST['txt_id'];
  $sname = ucwords($_POST['txt_sname']);
  $semail = $_POST['txt_email'];
  $mob_no = $_POST['txt_mobno'];
  $dob=$_POST['dob'];
  $tmp_add=$_POST['tmp_add'];
  $pmt_add=$_POST['pmt_add'];
  $gender=$_POST['gender'];
  $degree=$_POST['degree'];
  $faculty=$_POST['faculty_id'];
  $pyear=$_POST['year_level'];
  $coll_name=$_POST['college_name'];
  $source_type=$_POST['source_type'];
  $course_fee=$_POST['course_fee'];
  $sub_id=$_POST['sess_id11'];
  $course_list=$_POST['id_value'];	 
  $cur_date=date("y/m/d");
  $sess_id11 =$_POST['sub_us_id'];
  $sub_us_ty= $_POST['sub_us_ty'];
  $string = str_replace(' ', '', $sname);
  $comment=$_POST['comment'];
        
	
        
    
	$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
	$type= $row['type'];
        	
	
if($type=='user')
{	            
	if(empty($course_list))
	{
			$sql_query = mysqli_query($connection,"UPDATE student SET `name`='$sname',`contact_no`='$mob_no',`email`='$semail',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pyear',`coll_name`='$coll_name',`source_type`='$source_type',`course_fee`='$course_fee',`comment`='$comment',`type`='Crm',`generated_by`='$sub_id',`user_id`='$sub_id',`sub_user_id`='$sess_id11',`cur_date`='$cur_date' WHERE id='$s_id'")or die(mysqli_error($connection));
			if($sql_query==true)
				{
					echo "1";
				}
				else
				{
					echo "2";
				}
			}
			else
			{
$sql_query = mysqli_query($connection,"UPDATE student SET `name`='$sname',`contact_no`='$mob_no',`email`='$semail',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pyear',`coll_name`='$coll_name',`source_type`='$source_type',`course_list`='$course_list',`course_fee`='$course_fee',`comment`='$comment',`type`='Crm',`generated_by`='$sub_id',`user_id`='$sub_id',`sub_user_id`='$sess_id11',`cur_date`='$cur_date' WHERE id='$s_id'")or die(mysqli_error($connection));
			if($sql_query==true)
				{
					echo "1";
				}
				else
				{
					echo "2";
				}
			}

} else	{	
	if(empty($course_list))
	{
			$sql_query = mysqli_query($connection,"UPDATE student SET `name`='$sname',`contact_no`='$mob_no',`email`='$semail',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pyear',`coll_name`='$coll_name',`source_type`='$source_type',`course_fee`='$course_fee',`comment`='$comment',`type`='Crm',`generated_by`='$sub_id',`user_id`='$sub_id',`sub_user_id`='$sess_id11',`cur_date`='$cur_date' WHERE id='$s_id'")or die(mysqli_error($connection));

				if($sql_query==true)
				{
					echo "3";
				}
				else
				{
					echo "2";
				}
			}
			else
			{
				$sql_query = mysqli_query($connection,"UPDATE student SET `name`='$sname',`contact_no`='$mob_no',`email`='$semail',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pyear',`coll_name`='$coll_name',`source_type`='$source_type',`course_list`='$course_list',`course_fee`='$course_fee',`comment`='$comment',`type`='Crm',`generated_by`='$sub_id',`user_id`='$sub_id',`sub_user_id`='$sess_id11',`cur_date`='$cur_date' WHERE id='$s_id'")or die(mysqli_error($connection));

				if($sql_query==true)
				{
					echo "3";
				}
				else
				{
					echo "2";
				}
			}
			
		}

?>