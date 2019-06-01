<?php 

include "config.php";
	 $user_id = $_POST['user_id'];
	$sub_id =$_POST['sub_us_id'];
	$sub_us_ty= $_POST['sub_us_ty'];

	$student_name = ucwords($_POST['txt_sname']);
	$email = $_POST['txt_semail'];
	//$cleagal_id = $_POST['txt_cleagal_id'];
	//$txt_gstno = $_POST['txt_gstno'];
	$contact_no = $_POST['txt_cstudent'];
	$tmp_add = $_POST['tmp_add'];
	// $pmt_add = $_POST['pmt_add']; 
	$gender=$_POST['gender'];
	$degree=$_POST['degree']; 
	$faculty=$_POST['faculty_id'];
	$pass_year=$_POST['year_level'];
	$coll_name=$_POST['college_name'];
	$course_list=$_POST['id_value'];
    $dob=$_POST['bdate'];
    $join_date=$_POST['join_date'];
    $cur_date=date("y/m/d");
	$course_fee=$_POST['course_fee'];

// 	$comment=$_POST['Comment'];
	$img_file=$_FILES['image1']['name'];
	$tmp_file=$_FILES['image1']['tmp_name'];
	//$saddr = $_POST['txt_saddr'];
	$string = str_replace(' ', '', $student_name);

$query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type'];
 
if($type=='user')
{	
	
	$qu = mysqli_query($connection,"SELECT * FROM student WHERE `name`='$student_name'")or die(mysqli_error($connection));

	$data=mysqli_fetch_array($qu);
	$s_id=$data['id'];
	$count=mysqli_num_rows($qu);
	if($count>0)
	{
        if (move_uploaded_file($tmp_file,"../images/".$img_file)){      
                $img="../images/".$img_file;            
            }
            if(empty($course_list))
            {  
		$sql_query = mysqli_query($connection,"UPDATE student SET `user_id`='$sub_id',`sub_user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_fee`='$course_fee',`img_file`='$img_file',`join_date`='$join_date'  WHERE id='$s_id'")or die(mysqli_error($connection));
          //  move_uploaded_file($tmpfile,"images/".$ifile);
			if($sql_query)
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
$sql_query = mysqli_query($connection,"UPDATE student SET `user_id`='$sub_id',`sub_user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_list`='$course_list',`course_fee`='$course_fee',`img_file`='$img_file',`join_date`='$join_date' WHERE id='$s_id'")or die(mysqli_error($connection));
          //  move_uploaded_file($tmpfile,"images/".$ifile);
			if($sql_query)
			{
				echo "1";
			}
			else
			{
				echo "2";
			}
}
	}
	else{
		      if (move_uploaded_file($tmp_file,"../images/".$img_file)){      
                $img="../images/".$img_file;            
            }  
			$sql_query = mysqli_query($connection,"INSERT INTO `student`(`user_id`,`sub_user_id`, `name`,`name_slug`,`email`,`contact_no`,`dob`,`tmp_address`,`gender`,`degree`,`faculty`,`pass_year`,`coll_name`,`course_list`,`course_fee`,`img_file`,`join_date`,`generated_by`,`cur_date`) 
		VALUES ('$sub_id','$user_id','$student_name','$string','$email','$contact_no','$dob','$tmp_add','$gender','$degree','$faculty','$pass_year','$coll_name','$course_list','$course_fee','$img_file','$join_date','$user_id','$cur_date')")or die(mysqli_error($connection));
		      //  move_uploaded_file($tmpfile,"images/".$ifile);
				if($sql_query)
				{
					echo "1";
				}
				else
				{
					echo "2";
				}
      
      

	}
}//type user if loop end
else{
	$qu = mysqli_query($connection,"SELECT * FROM student WHERE `name`='$student_name'")or die(mysqli_error($connection));

	$data=mysqli_fetch_array($qu);
	$s_id=$data['id'];
	$count=mysqli_num_rows($qu);
	if($count>0)
	{
         if (move_uploaded_file($tmp_file,"../images/".$img_file)){      
                $img="../images/".$img_file;            
            }  if(empty($course_list))
            {
		$sql_query = mysqli_query($connection,"UPDATE student SET `user_id`='$sub_id',`sub_user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_fee`='$course_fee',`img_file`='$img_file',`join_date`='$join_date' WHERE id='$s_id'")or die(mysqli_error($connection));
            //move_uploaded_file($tmpfile,"images/".$ifile);
			if($sql_query)
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
		$sql_query = mysqli_query($connection,"UPDATE student SET `user_id`='$sub_id',`sub_user_id`='$user_id',`name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_list`='$course_list',`course_fee`='$course_fee',`img_file`='$img_file',`join_date`='$join_date' WHERE id='$s_id'")or die(mysqli_error($connection));
            //move_uploaded_file($tmpfile,"images/".$ifile);
			if($sql_query)
			{
				echo "1";
			}
			else
			{
				echo "2";
			}
	}
}

	else{   


		if (move_uploaded_file($tmp_file,"../images/".$img_file)){      
                $img="../images/".$img_file;            
            }
			$sql_query = mysqli_query($connection,"INSERT INTO `student`(`user_id`,`sub_user_id`, `name`,`name_slug`,`email`,`contact_no`,`dob`,`tmp_address`,`gender`,`degree`,`faculty`,`pass_year`,`coll_name`,`course_list`,`course_fee`,`img_file`,`join_date`,`generated_by`,`cur_date`) 
		VALUES ('$sub_id','$user_id','$student_name','$string','$email','$contact_no','$dob','$tmp_add','$gender','$degree','$faculty','$pass_year','$coll_name','$course_list','$course_fee','$img_file','$join_date','$user_id','$cur_date')")or die(mysqli_error($connection));
		      //  move_uploaded_file($tmpfile,"images/".$ifile);
				if($sql_query)
				{
					echo "1";
				}
				else
				{
					echo "2";
				}


	}
}
?>