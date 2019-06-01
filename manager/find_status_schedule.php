<?php 
include 'config.php';
$country = intval($_GET['country']);
$query  = "SELECT * FROM admin_enquiry_status WHERE sch_id='$country'";
$result = mysqli_query($connection,$query);

?>
<select name="en_status"  class="form-control" >
<option>Select Status</option>
<?php while ($row=mysqli_fetch_array($result)) { ?>
<option value=<?php echo $row['enquiry_status_id']?>><?php echo $row['enquiry_status']?></option>
<?php } ?>
</select>