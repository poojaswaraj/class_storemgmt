<?php 

include "config.php";
    
	$user_id = $_POST['user_id'];
//	$sub_id =$_POST['sub_us_id'];
	$sub_us_ty= $_POST['sub_us_ty'];
    $txt_id = $_POST['txt_id'];
	$student_name = ucwords($_POST['txt_sname']);
	$email = $_POST['txt_semail'];
	//$cleagal_id = $_POST['txt_cleagal_id'];
	//$txt_gstno = $_POST['txt_gstno'];
	$contact_no = $_POST['txt_cstudent'];
	$tmp_add = $_POST['tmp_add'];
	$pmt_add = $_POST['pmt_add'];
	$gender=$_POST['gender'];
	$degree=$_POST['degree'];
	$faculty=$_POST['faculty_id'];
	$pass_year=$_POST['year_level'];
	$coll_name=$_POST['college_name'];
	$course_list=$_POST['id_value'];
    $dob=$_POST['bdate'];
    $join_date=$_POST['join_date'];

	$course_fee=$_POST['course_fee'];

//	$comment=$_POST['Comment'];
    $img_file=$_FILES['image1']['name'];
	
	$string = str_replace(' ', '',$student_name);
    $query = mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$sub_us_ty'");
	$row=mysqli_fetch_array($query);
		 $type= $row['type'];

if($type=='user')
{	
if($img_file!=null || $img_file='')
{
	if(isset($_FILES["image1"]["name"]))  
	{   
	  $target_dir ="../images/";  
	  $imageFileType = pathinfo($_FILES["image1"]["name"],PATHINFO_EXTENSION);    
	  $target_file = $target_dir.$_FILES["image1"]["name"];   

       if (move_uploaded_file($_FILES["image1"]["tmp_name"], $target_file)) 
        {      
            $img=$target_file;            
        } 
       else{        
            echo "Sorry, there was an error uploading your file.";      
        }       
	}


      if(empty($course_list))
            {  
	$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_fee`='$course_fee',`img_file`='$img',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
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
$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_list`='$course_list',`course_fee`='$course_fee',`img_file`='$img',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}
}
}
else
{
 if(empty($course_list))
            {
$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_fee`='$course_fee',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
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
$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_list`='$course_list',`course_fee`='$course_fee',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
	{
		echo "1";
	}
	else
	{
		echo "2";
	}
}
}

}
else{
	if($img_file!=null || $img_file='')
{
	if(isset($_FILES["image1"]["name"]))  
	{   
	  $target_dir ="../images/";  
	  $imageFileType = pathinfo($_FILES["image1"]["name"],PATHINFO_EXTENSION);    
	  $target_file = $target_dir.$_FILES["image1"]["name"];   

       if (move_uploaded_file($_FILES["image1"]["tmp_name"], $target_file)) 
        {      
            $img=$target_file;            
        } 
       else{        
            echo "Sorry, there was an error uploading your file.";      
        }       
	}
	if(empty($course_list))
            {
	$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_fee`='$course_fee',`img_file`='$img',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
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
$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_list`='$course_list',`course_fee`='$course_fee',`img_file`='$img',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
	{
		echo "3";
	}
	else
	{
		echo "2";
	}
}
}

else
{
if(empty($course_list))
            {
$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_fee`='$course_fee',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
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
$edit_query=mysqli_query($connection,"UPDATE student SET `user_id`='$user_id', `name`='$student_name',`name_slug`='$string',`email`='$email',`contact_no`='$contact_no',`dob`='$dob',`tmp_address`='$tmp_add',`pmt_address`='$pmt_add',`gender`='$gender',`degree`='$degree',`faculty`='$faculty',`pass_year`='$pass_year',`coll_name`='$coll_name',`course_list`='$course_list',`course_fee`='$course_fee',`join_date`='$join_date' WHERE id='$txt_id'")or die(mysqli_error($connection));
	
	if($edit_query==true)
	{
		echo "3";
	}
	else
	{
		echo "2";
	}	
}

}
}
 ?>