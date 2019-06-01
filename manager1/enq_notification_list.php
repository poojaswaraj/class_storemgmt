<div class="col-lg-12">
<h3 class="page-header">Notification List</h3>
<?php 
$cur_date=date("Y-m-d");
$var=mysqli_query($connection,"select * from notification_list");
while($row4=mysqli_fetch_array($var))
 {
	 $id=$row4['send_by'];
	 $sql = mysqli_query($connection,"SELECT * FROM user where id='$id'");
							$arr=mysqli_fetch_array($sql);
							$name_ge=$arr['name'];
?>
<div class="panel panel-info">
<div class="panel-heading"><div class="row">
<div class="col-md-6"><span style="float:left; padding: 0% 2%"><?php echo $name_ge?>
</span></div><div class="col-md-6"><span style="float:right; padding: 0% 2%"><?php echo $row4['not_date']; ?> &nbsp;&nbsp;<?php echo $row4['not_time']; ?></span></div></div></div>
<div class="panel-body">
<div class="col-sm-4">
<label>Subject:</label><?php echo $row4['subject'];?>
</div>
<div class="col-sm-8">
<label>Description:</label><?php echo $row4['not_desc'];?>
</div>
</div>	
</div><?php } ?>
</div>
