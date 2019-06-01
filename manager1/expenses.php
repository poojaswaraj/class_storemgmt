<?php
include('config.php');
$user_id=$_SESSION['login_user'];
$utype=$_SESSION['user_type']=$row['type']; 
$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error());
 $array=mysqli_fetch_array($sub);
 $sub_id=$array['user_id'];

?>

<div class="row">
<h3>Add Expenses<a  href="dashboard.php?page=voucher" style="float:right;"> + Back</a></h3>

	<div class="panel-body"></div>
	<hr>
	<h4>Expense info</h4>
	<form name="frm_voucher" id="frm_voucher" autocomplete="off"  method="POST">
	<div class="col-lg-9">
		<input type="hidden" name="txt_id" value="<?php echo $data['id'];?>"/>
		<input type="hidden" name="user_id" value="<?php echo $user_id;?>"/>
		<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
		<div class="col-md-4">
			<input type="date" class="form-control" name="txt_dt" value="<?php echo $data['pur_date'];?>" placeholder="Date" required="">
		</div>
		<div class="col-md-4">
			<input type="text" class="form-control" name="party_name" id="party_name" placeholder="Party Name" required="">
		</div>
		<div class="col-md-4">
			<input type="text" class="form-control" name="txt_pert" id="txt_pert"  placeholder="Particular" required="">
		</div>
		
		<!-- <div class="col-md-3">
			<select class="form-control" name="sel_head" id="sel_head" required="">
			<?php 
				if(empty($data['head_desc']))
				{
			?>
				<option value="">Select Acc Head  </option>
			<?php
				}
				else{
			?>
				<option value="<?php echo $data['acc_head_id']; ?>"><?php echo $data['head_desc']; ?></option>
			<?php 
				}
				if($utype=='admin'){
					$sql = mysqli_query($connection,"SELECT * FROM acc_head WHERE user_id='$user_id'")or die(mysqli_error($connection));
				}
				else{
					$sql = mysqli_query($connection,"SELECT * FROM acc_head WHERE user_id='$sub_id'")or die(mysqli_error($connection));
				}
				
					while ($row=mysqli_fetch_array($sql)) {
			?>
			<option value="<?php echo $row['id']; ?>"><?php echo $row['head_desc']; ?></option>
			<?php } ?>

		</select>
		</div> -->
		<div class="panel-body"></div>

		<div class="col-md-4">
			<input type="text" class="form-control" name="txt_gst" id="txt_gst"  placeholder="GST No">
		</div>
		<div class="col-md-4">
			<input type="text" class="form-control" name="txt_hsn" id="txt_hsn"  placeholder="HSN/SAC">
		</div>

		<div class="col-md-3">
			<input type="hidden" class="form-control" name="invoice_no"  id="invoice_no" placeholder="Invoice No">
		</div>

		<!-- <div class="col-md-4">
			<input type="text" class="form-control" name="voucher_no"  id="voucher_no" placeholder="Voucher No" >
		</div> -->
		<div class="col-md-4">
			<input type="text" class="form-control" name="state" id="state" placeholder="State" onkeyup="state1()" >
			<input type="hidden" class="form-control" name="txt_code" id="txt_code" placeholder="State Code">
		</div>
		<div class="col-md-3">
			<input type="hidden" class="form-control" name="txt_client"  id="txt_client" placeholder="Project/Client" >
		</div>

		
		<div class="panel-body"></div>

		
		<!-- <div class="col-md-3">
			<input type="text" class="form-control" name="txt_amt" value="<?php echo $data['amount'];?>" placeholder="Amount">
		</div> -->

		<div class="col-md-4">
			<input type="text" class="form-control" name="base_amt" id="base_amt"  placeholder="Base Amount" onkeyup="taxoncalculation();" >
		</div>
		<div class="col-md-4">

		  <div class="btn-group col-md-3">
	
	<button type="button" class="dropdown-toggle " data-toggle="dropdown" aria-expanded="false" style="
    padding: 5% 10%;"> <span class="icon fa fa-caret-down"></span></button>
          <ul class="dropdown-menu" role="menu">
            <?php
				$temp=0;
				$recn=mysqli_query($connection,"SELECT count(id) FROM tax WHERE active=1 and is_default=1");
				$rowcn = mysqli_fetch_array($recn);
				$count=$rowcn['count(id)'];
				$result=mysqli_query($connection,"SELECT * FROM tax WHERE active=1 and is_default=1");
				while($r = mysqli_fetch_array($result))
			{ ?>
            <li>
              <div class="col-md-12" style="font-size:12px;">
                <input type="radio" name="chk[]"  id="<?php echo "game".$temp++;?>" onClick="UpdateCost()" <?php echo $r["is_default"];?> value="<?php echo $r["value"];?>" onkeyup="taxoncalculation();"/>
                <?php echo $r["name"];?> @ <?php echo $r["value"];?>%

              </div>
            </li>
            <?php }?>
          </ul><input type="hidden" name="taxcount" id="taxcount" value="<?php echo $count;?>">
        </div>

      <div class="btn-group col-md-3" >
       <?php 
	  		$defqry=mysqli_query($connection,"SELECT * FROM tax WHERE `is_default` = '1'");
			$defrow = mysqli_fetch_array($defqry);
	     ?>
        <input type="text" readonly name="select_tax" id="select_tax" placeholder="Tax Percentage"  maxlength="6" class="form-control" <?php if(!empty($defrow['value'])) { echo "readonly=\"readonly\""; } ?> onkeyup="taxoncalculation();" onkeypress="return onlyNos(event,this);" style="margin-left: -10px; width: 215px;"/>

      </div>
       <input type="hidden" class="form-control" name="tax_amt" id="tax_amt" placeholder="Tax Amount " onkeyup="taxoncalculation();">
		</div>
		<!-- <div class="panel-body"></div> -->

		<div class="col-md-4">
			<input type="text" class="form-control" name="total_amt" id="total_amt" placeholder="Amount">
		</div>
		<div class="panel-body"></div>

		
		<div class="col-md-4">
			<!-- <input type="text" class="form-control" name="txt_desc" value="<?php echo $data['price'];?>" placeholder="Mode"> -->
		<select class="form-control" name="sel_mode" id="sel_mode" required="">
				<option value="">Select Mode</option>
			<?php
			if($utype=='admin')
			{
				$sql = mysqli_query($connection,"SELECT * FROM mode WHERE user_id='$user_id'")or die(mysqli_error($connection));
			}
			else{
				$sql = mysqli_query($connection,"SELECT * FROM mode WHERE user_id='$user_id'")or die(mysqli_error($connection));
			}
				
					while ($row1=mysqli_fetch_array($sql)) {
			
			
			 ?>
			<option value="<?php echo $row1['mode']; ?>"><?php echo $row1['mode']; ?></option>
			<?php } ?>

		</select>
		</div>
		<div class="col-md-4">
			<!-- <input type="text" class="form-control" name="txt_desc" value="<?php echo $data['price'];?>" placeholder="Mode"> -->
			<select class="form-control" name="paytm_name" id="paytm_name" >
				<option value="">Paytm Account</option>
				
			<?php 
			
			$sql1 = mysqli_query($connection,"SELECT * FROM paytm")or die(mysqli_error($connection));
			
			while ($row1=mysqli_fetch_array($sql1)) {	
			
			 ?>
			<option value="<?php echo $row1['name']; ?>"><?php echo $row1['name']; ?></option>
			<?php } ?>

		</select>
		</div>
		<div class="col-md-4">	
			<input type="text" class="form-control" name="cashback"  placeholder="Cash Back">
		</div>
		<div class="panel-body"></div>
		<div class="col-md-4">	
			<input type="text" class="form-control" name="cheque_no"  placeholder="Cheque No/Transaction No">
		</div>
		<div class="col-md-4">
			<input type="date" class="form-control" name="cheque_dt" id="cheque_dt"  placeholder="Cheque Date">
		</div>
	
		 <div class="col-md-4">
			<input type="text" class="form-control" name="r_cash" id="r_cash" placeholder="Received Cash">
		 </div>
		
		<div class="panel-body"></div>
		
		<div class="panel-body"></div>

		<div class="col-md-2">
			<?php 
				if(empty($id)){
			 ?>
			<button name="btn_voucher" type="submit" id="btn_voucher" class="btn btn-primary" value="btn_voucher" onclick="document.pressed=this.value"  data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Save</button>
			<?php 
				}
				else{
			 ?>
			<button name="btn_voucher_edit" id="btn_voucher_edit" type="submit" class="btn btn-primary" value="btn_voucher_edit" onclick="document.pressed=this.value"  data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Update</button>
			<?php } ?>
			<div id="msg"></div>
		</div>
	</div>
	
	<div class="panel-body"></div>

<div class="col-md-12">
  <h4>Recent Expenses</h4>
      <table class="table table-striped table-bordered table-hover dataTable no-footer" id="example">
      <thead>
        <tr bgcolor="#999999">
          <td>Expense Date</td>
          <td>Party Name</td>
          <td>Particular</td>                   
          <td>GST No</td>
          <td>HSN/SAC</td>
	      <td>Basic Amount</td>
          <td>CGST</td>
          <td>SGST</td>
          <td>IGST</td>
          <td>Total Tax</td>
          <td>Total Amount</td>	
          <td>Mode</td>
          <td>Paytm Account</td>
		  <td>Cash Back</td>
          <td>Cheque No.</td>
		  <td>Cheque Date</td>
		  <td>Received Cash</td>			 
		  <td>Delete</td>
        </tr>
        </thead>
        <tbody>
        <?php
        $sql12 = mysqli_query($connection,"SELECT * FROM add_expense WHERE user_id='$user_id'")or die(mysqli_error($connection));
        while ($row1=mysqli_fetch_array($sql12)) {
				$a=$row1['date'];
				$id=$row1['id'];
			 ?>
			 <?php
			  	$sql111 = mysqli_query($connection,"SELECT * FROM company where user_id='$user_id'")or die(mysqli_error($connection));
			 
                $res = mysqli_fetch_array($sql111);
                 $code=$res['state_code'];
              $cod=$row1['code'];
              $mode=$row1['sel_mode'];
				
				?>
			 <td><?php echo date('d-m-Y',strtotime($row1['date']));?></td>
			 <td><?php echo $row1['party_name'];?></td>
			 <td><?php echo $row1['txt_pert'];?></td>
			 <td><?php echo $row1['txt_gst'];?></td>
			 <td><?php echo $row1['txt_hsn'];?></td>
			<!--  <td><?php echo $row1['voucher_no'];?></td> -->
			 <td><?php echo $row1['base_amt'];?></td>

		<?php 
      		$gst=mysqli_query($connection,"SELECT b.sgst,b.cgst,b.value,c.select_tax,a.* FROM purches_tax a INNER JOIN tax b ON b.value=a.tax_value INNER JOIN add_expense c ON c.id=a.purches_id where c.id='$id'")or die(mysqli_error($connection));
      			$arr=mysqli_fetch_array($gst);
      			 $tax = $arr['select_tax'];
  				 $a=$tax/2; 	// Divide tax into SGST and CGST
  				  // if($arr['value']=='')
  				  //  {
	       //            echo "<td>0%</td>"; 
	       //         }
	       //         else {
	       //                 echo "<td>".$arr['value']."%</td>"; 
	       //             }
	        if ($code==$cod) {
       	  ?>
	       <td><?php echo $a."%"; ?></td>
           <td><?php echo $a."%"; ?></td>
           <td>0</td>
           <?php 
       		}
       		else{
            ?>
            <td>0</td>
            <td>0</td>
            <td><?php echo $tax."%"; ?></td>
            <?php } ?>
			 <td><?php echo $row1['select_tax']."%";?></td>
			 <td><?php echo $row1['total_amt'];?></td>
			 
			 <td><?php echo $row1['sel_mode'];?></td>
			 <td><?php echo $row1['paytm_name'];?></td>
			 
			 <td><?php echo $row1['cashback'];?></td>
			
			 
			 <td><?php echo $row1['cheque_no'];?></td>

			 <td><?php echo date('d-m-Y',strtotime($row1['cheque_dt']));?></td>
			 <td><?php echo $row1['r_cash'];?></td>
			 <td>

			   <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#deleteModal" onclick="$('#del_id').val('<?php echo $row1['id'];?>');"><span class="icon fa fa-trash-o" ></span>
				</button> 
	      </td>
			 
        </tr>
        <?php
			}
        ?></tbody>
      </table>
</div>	
</div>

<!--Delete model start here-->
<div id="deleteModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
		  	<div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal">&times;</button>
			    <h4 class="modal-title" align="center">Delete Expense</h4>
		  	</div>
			   <form  id="del" autocomplete="off" enctype="multipart/formdata" method="POST">
				    <div class="modal-body" id="deleteContent">
		               <input type="hidden" name="data" id="del_id">
		               <div class="form-group">
		                     <p><b>Are you sure want to delete ?</b></p>
		              </div>
				    </div>
				    <center><p id='dmsg'></p></center>
			        <div class="modal-footer">
		               <button class="btn btn-success submit" id="delete_btn" name="submit">Confirm</button>
		               <button type="button" class="btn btn-primary btn-md" data-dismiss="modal">Cancel</button>      
			        </div>
			  </form>
		</div>
	</div>
</div>

<script>
function cust(){

    var party_name = document.getElementById("party_name").value;
    $("#party_name").autocomplete({
        source: 'party_autocomplete.php?u_ty=<?php echo $utype;?>&u_id=<?php echo $user_id;?>', 
        select: function(a,b)
	        {
	            $(this).val(b.item.value); //grabed the selected value
	            getCustOtherInfo(b.item.value);//passed that selected value
	        }
    });
}

function getCustOtherInfo(name){
        $.ajax({
                     url:'get_party.php',
                     type:'POST',
                     data:{
                            name:name
                     },

                     success: function(data)
                     {
                       var obj = $.parseJSON(data);
                        $('#party_name').val(obj.party_name);
                        $('#txt_gst').val(obj.gst_no);
                        $('#state').val(obj.state);
                        $('#txt_code').val(obj.state_code);
                        $('#txt_pert').val(obj.perticular);
                        $('#txt_hsn').val(obj.hsn_code);
                        $('#sel_head').val(obj.acc_head_id);
                        $('#sel_mode').val(obj.mode_id);
                        // $('#voucher_no').val(obj.voucher_no);
                        $('#invoice_no').val(obj.invoice_no);
                        $('#txt_client').val(obj.proj_client);
                        if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
    }


</script>

<script>

function UpdateCost() {
  var sum = 0;
  var gn, elem;
  var a = document.getElementById('taxcount').value;
  for (i=0; i<a; i++) {
    gn = 'game'+i;
    elem = document.getElementById(gn);
    if (elem.checked == true) { sum += Number(elem.value); }
  }
 	 document.getElementById('select_tax').value = sum.toFixed(2);

	var base_amt = document.getElementById('base_amt').value;
	var tax = document.getElementById('select_tax').value;
   
	// calculate tax
	var rtax = parseFloat(base_amt)* parseFloat(tax)/100; 
	var totaltax = parseFloat(base_amt)+ parseFloat(rtax); 
	
	//To calculate the tax price on cost
	var per1 =(parseFloat(tax)/100) * parseFloat(base_amt);

    if (!isNaN(totaltax)) 
	{
    	document.getElementById('total_amt').value = parseFloat(totaltax).toFixed(2);
    }
     else if(!isNaN(base_amt))
    {
    	document.getElementById('total_amt').value = parseFloat(base_amt).toFixed(2);
    }
	document.getElementById('tax_amt').value = parseFloat(per1).toFixed(2);
} 

/*calculation*/
onkeyup="taxoncalculation()"
function taxoncalculation()
{	

	var base_amt = document.getElementById('base_amt').value;
	
	var tax = document.getElementById('select_tax').value;
   
	// calculate tax
	var rtax = parseFloat(base_amt)* parseFloat(tax)/100; 
	var totaltax = parseFloat(base_amt)+ parseFloat(rtax); 
	
	//To calculate the tax price on cost
	var per1 =(parseFloat(tax)/100) * parseFloat(base_amt);

    if (!isNaN(totaltax)) 
	{
    	document.getElementById('total_amt').value = parseFloat(totaltax).toFixed(2);
    }
     else if(!isNaN(base_amt))
    {
    	document.getElementById('total_amt').value = parseFloat(base_amt).toFixed(2);
    }
	   document.getElementById('tax_amt').value = parseFloat(per1).toFixed(2);
}

</script>

<script>
	function state1(){

	    var state = document.getElementById("state").value;
	    $("#state").autocomplete({
	        source: 'select_state.php',
	        select: function(a,b)
		        {
		            $(this).val(b.item.value); //grabed the selected value
		            get_state_code(b.item.value);//passed that selected value
		        }
	    });
	}
		function get_state_code(name){
		 $.ajax({
                     url:'get_state_code.php',
                     type:'POST',
                     data:{
                            name:name
                     },
                     success: function(data)
                     {
                       var obj = $.parseJSON(data);
                        $('#state').val(obj.name);
                        $('#txt_code').val(obj.state_code);
                        
                        if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
		}
</script>


<!-- Insert Script -->
<script>

$('form#frm_voucher').submit(function(e){

     e.preventDefault();

	if(document.pressed == 'btn_voucher')
	  {
	  		$("button#btn_voucher").button('loading');
	           $.ajax({
						data:$("#frm_voucher").serialize(),
						type:"POST",
						url:'insert_voucher1.php',
						success: function(data)
						{
							$("button#btn_voucher").button('reset');
							 // alert(data);
							if(data==1) 
							{
							   // alert('Voucher Inserted !!!');
							
								// location.reload();
								swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Expense Inserted Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
							 	 })
								  window.setTimeout(function()
								    { 
										 location.reload();
									} ,1500);
							}
							else if(data==2)
							{
								alert('Error..');
								// $('#msg').html('Please Check Error.');
								// $('#msg').css('color','red');
								
								return false;
							} 
						}
					 


					 });
	}

 	else
	  if(document.pressed == 'btn_voucher_edit')
	  	{
	  		$("button#btn_voucher_edit").button('loading');
	         $.ajax({
						data:$("#frm_voucher").serialize(),
						type:"POST",
						url:'update_voucher.php',
						success: function(data)
						{
							$("button#btn_voucher_edit").button('reset');
							if(data==1)
							{
								// alert('Save Successfully !!!');
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Voucher Updated Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
							 	 })
								  window.setTimeout(function()
								    { 
										 location.reload();
									} ,1500);
							}
							else if(data==2)
							{
								alert('Error....');
								// $('#msg').html('Please Check Error.');
								// $('#msg').css('color','red');
								return false;
							} 
						}
				   });

	    }
	  return true;

});

</script>
<!-- Delete Script start -->
<script>
$("#delete_btn").click(function(e)
{ 
	var id=$('#del_id').val();
  	e.preventDefault();

       $.ajax({
                url:'delete_add_exp.php',
                type: "POST",
                data: {
                       id:id  
                },
                success: function(data)
                {
                  //alert(data);
                    if(data==1)
                    {
                        window.location.reload();
                    }
                }
            });
})
</script>

<script type="text/javascript">
    var datefield=document.createElement("input")
    datefield.setAttribute("type", "date")
    if (datefield.type!="date"){ //if browser doesn't support input type="date", load files for jQuery UI Date Picker
        document.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n') 
    }
</script>
    <script>
if (datefield.type!="date"){ //if browser doesn't support input type="date", initialize date picker widget:
    jQuery(function($){ //on document.ready
        $('#cheque_dt').datepicker();
       
    })
}
</script>
