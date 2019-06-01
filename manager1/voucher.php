<?php
include('config.php');
$user_id=$_SESSION['login_user'];
$utype=$_SESSION['user_type']=$row['type']; 
$sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error());
 $array=mysqli_fetch_array($sub);
 $sub_id=$array['user_id'];

if($id = isset($_GET['id']) ? $_GET['id'] : '')
{
	$query=mysqli_query($connection,"SELECT b.head_desc,c.mode,a.* FROM expenses a INNER JOIN acc_head b ON a.acc_head_id=b.id INNER JOIN mode c ON a.mode_id=c.id where a.id=$id");
	$data=mysqli_fetch_array($query);
}
else{
		$data['pur_date']="";
		$data['particular']="";
		$data['proj_client']="";
		$data['voucher_no']="";
		$data['invoice_no']="";
		$data['party_name']="";
		$data['gst_no']="";
		$data['state']="";
		$data['hsn_code']="";
		$data['basic_amt']="";
		$data['tax_amt']="";
		$data['total_amt']="";
		$data['tax_value']="";
		$data['cheque_date']="";
		$data['cheque_no']="";
		$data['acc_head_id']="";
		$data['mode_id']="";
	}
?>
<div class="row">
	<h3>Expenses<a  href="dashboard.php?page=expenses" style="float:right;"> + Add Expenses</a></h3><hr>
	<div class="col-md-8" align="center">
	<?php if(isset($_GET['status'])&&$_GET['status']==1){ ?>
		<div class="alert alert-success"><label>Data Successfully Insert...</label></div>
	<?php }
			if(isset($_GET['status'])&&$_GET['status']==2){ ?>
		<div class="alert alert-success"><label>Data Successfully Update...</label></div>
	<?php }
			if(isset($_GET['status'])&&$_GET['status']==3){ ?>
		<div class="alert alert-danger"><label>Something Wrong...</label></div>
	<?php }
			if(isset($_GET['status'])&&$_GET['status']==4){ ?>
		<div class="alert alert-danger"><label>Select Employee Code...</label></div>
	<?php } ?>
	</div>
	<div class="panel-body"></div>
	
	<h4>Expense info</h4>
	<form name="frm_voucher" id="frm_voucher" autocomplete="off"  method="POST">
	<div class="col-lg-12">
			
		<input type="hidden" name="user_id" id="user_id" value="<?php echo $user_id;?>"/>
		<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
		<input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">

		<div class="col-md-3">
			<label>Date <label style="color:red;">*</label></label>
			<input type="date" class="form-control" name="txt_dt" id="txt_dt" placeholder="Date" onchange="cust();" required="">

		</div>
		<div class="col-md-3">
			<label>Cash Expense </label>
			<input type="text" class="form-control" name="total_expense" id="total_expense" placeholder="Cash Expense" style="border-color:blue;">
		</div>
		<div class="col-md-3">
			<label>Bank Expense </label>
			<input type="text" class="form-control" name="bank_expense" id="bank_expense" placeholder="Bank Expense" style="border-color:blue;">
		</div>
		<div class="col-md-3">
			<label>Paytm Expense </label>
			<input type="text" class="form-control" name="paytm_exp" id="paytm_exp"  placeholder="Paytm Expense" style="border-color:blue;">
		</div>
		
			<input type="hidden" class="form-control" name="pay_bal" id="pay_bal"  placeholder="Paytm Total Expense" >
			<input type="hidden" class="form-control" name="pay_bal1" id="pay_bal1"  placeholder="Paytm Total Expense" >
	
		
	<!-- 	<div class="col-md-3">
			<label>Paytm Balance <label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="txt_pert" id="txt_pert"  placeholder="Paytm balance for 9890000325" >
			
		</div> -->
		

		<!-- <div class="col-md-3">
			<label>Paytm Balance <label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="txt_gst" id="txt_gst" placeholder="Paytm balance for 8149918410">
		</div> -->
<div class="panel-body"></div>
		<div class="col-md-3">
			<label>Cash Amount</label>
			<input type="text" class="form-control" name="invoice_no" id="invoice_no" placeholder="Cash Amount">
		</div>
		
		<div class="col-md-3">
			<label>Bank Amount </label>
			<input type="text" class="form-control" name="voucher_no" id="voucher_no" placeholder="Bank Amount" >
		</div>
		
		<div class="col-md-3">
			<label>Paytm Amount </label>
			<input type="text" class="form-control" name="txt_client" id="txt_client" placeholder="Paytm Amount" >
		</div>
				
<div class="panel-body"></div>
		<div class="col-md-3">
			<label>Networking SP</label>
			<input type="text" class="form-control" name="txt_hsn" id="txt_hsn"  placeholder="Networking SP">
		</div>
		<!-- <div class="col-md-3">
			<input type="text" class="form-control" name="txt_amt" value="<?php echo $data['amount'];?>" placeholder="Amount">
		</div> -->
         
		<div class="col-md-3">
			<label>Networking CP</label>
			<input type="text" class="form-control" name="base_amt" id="base_amt" placeholder="Networking CP"  >
		</div>
		
		<div class="col-md-3">
			<label>Development SP</label>
       <input type="text" class="form-control" name="tax_amt" id="tax_amt" placeholder="Development SP" >
		</div>
		<!-- <div class="panel-body"></div> -->
        
		<div class="col-md-3">
			<label>Development CP</label>
			<input type="text" class="form-control" name="total_amt" id="total_amt" placeholder="Development CP">
		</div>
		<div class="panel-body"></div>

		<div class="col-md-3">
			<label>Softskill</label>
			<input type="text" class="form-control" name="state" id="state"  placeholder="Softskill"  >
			<input type="hidden" class="form-control" name="txt_code" id="txt_code" placeholder="Softskill">
		</div>
		<div class="col-md-3">
			<label>Hadoop Training</label>
			<input type="text" class="form-control" name="state1" id="state1"  placeholder="Hadoop Training"  >
		</div>
		
		<div class="col-md-3">
			<label>HR Training </label>
			<input type="text" class="form-control" name="cheque_no" id="cheque_no"  placeholder="HR Training ">
		</div>
		
		<div class="col-md-3">
			<label>Banking </label>
			<input type="text" class="form-control" name="Banking" id="Banking" placeholder="Banking">
		</div>
		
		<div class="panel-body"></div>
		
	
		<div class="col-md-3">
			<label>Placement Devlopment</label>
			<input type="text" class="form-control" name="p_d" id="p_d" placeholder="Placement Devlopment">
		</div>
		<div class="col-md-3">
			<label>Placement Networking</label>
			<input type="text" class="form-control" name="p_n" id="p_n" placeholder="Placement Networking">
		</div>

		<div class="col-md-3">
			<label>Grant Total </label>
			<input type="text" class="form-control" name="sum_amt" id="sum_amt" placeholder="Grant Total">
		</div>
        <div class="col-md-3">
			<label>Cash In Hand</label>
			<input type="text" class="form-control" name="cash_in" id="cash_in" placeholder="Cash In Hand">
			<input type="hidden" class="form-control" name="cash_in_bank" id="cash_in_bank" placeholder="Cash In Bank">
		</div>
		<div class="panel-body"></div>
		 <div class="col-md-3">
		 	<label>Received Cash</label>
			<input type="text" class="form-control" name="r_cash" id="r_cash" placeholder="Received Cash">
		 </div>



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
          <td>Date</td>
          <td>Total Expense</td>
          <td>Cash Expense</td>
          <td>Bank Expense</td>
          <td>Paytm Expense</td>
          <td>Paytm Balance For 8149918410</td>
          <td>Paytm Balance For 9890000325</td>
          <td>Cash Amount</td>
		  <td>Bank Amount</td>
		  <td>Paytm Amount</td>
		  <td>Networking SP</td>
		  <td>Networking CP</td>
		  <td>Development SP</td>
		  <td>Development CP</td>
		  <td>Softskill</td>
		  <td>Hadoop Training</td>
		  <td>HR Training</td>
		  <td>Banking</td>
		  <td>Placement Devlopment</td>
		  <td>Placement Networking</td>
		  <td>Grand Total</td>
		  <td>Cash In Hand</td>
		  <td>Received Cash</td>

		  <td>Delete</td>
        </tr>
        </thead>
        <tbody>
        <?php
       $query12=mysqli_query($connection,"SELECT * FROM expenses WHERE user_id='$user_id' ORDER BY date DESC")or die(mysqli_error($connection));
       while($row1=mysqli_fetch_array($query12))
				{
					
		  ?>
		  <td><?php echo date('d-m-Y',strtotime($row1['date'])); ?></td>
		  <td><?php echo $row1['addition']; ?></td>
		  <td><?php echo $row1['total_expense']; ?></td>
		  <td><?php echo $row1['bank_expense']; ?></td>
		  <td><?php echo $row1['paytm_exp']; ?></td>
		  <td><?php echo $row1['pay_bal']; ?></td>
		  <td><?php echo $row1['pay_bal1']; ?></td>
		  <td><?php echo $row1['invoice_no']; ?></td>
		  <td><?php echo $row1['voucher_no']; ?></td>
		  <td><?php echo $row1['txt_client']; ?></td>
		  <td><?php echo $row1['txt_hsn']; ?></td>
		  <td><?php echo $row1['base_amt']; ?></td>
		  <td><?php echo $row1['tax_amt']; ?></td>
		  <td><?php echo $row1['total_amt']; ?></td>
		  <td><?php echo $row1['state']; ?></td>
		  <td><?php echo $row1['state1']; ?></td>
		  <td><?php echo $row1['cheque_no']; ?></td>
		  <td><?php echo $row1['Banking']; ?></td>
		  <td><?php echo $row1['p_d']; ?></td>
		  <td><?php echo $row1['p_n']; ?></td>
		  <td><?php echo $row1['sum_amt']; ?></td>
		  <td><?php echo $row1['cash_in']; ?></td>
		  <td><?php echo $row1['r_cash']; ?></td>
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
	var date1=$("#txt_dt").val();
	
	var user_id=$("#user_id").val()
	
	
        $.ajax({
                     url:'get_party.php',
                     type:'POST',
                     data:{
                            date1:date1,
                            user_id:user_id
                     },

                     success: function(data)
                     {
                     	var obj= $.parseJSON(data);
                     	
                        $("#invoice_no").val(obj[0]);
                        $("#voucher_no").val(obj[1]);
                        $("#txt_client").val(obj[22]);
                        $("#txt_hsn").val(obj[3]);
                        $("#base_amt").val(obj[4]);
                        $("#tax_amt").val(obj[5]);
                        $("#total_amt").val(obj[6]);
                        $("#state").val(obj[7]);
                        $("#state1").val(obj[8]);
                        $("#cheque_no").val(obj[9]);
                        $("#p_d").val(obj[11]);
                        $("#Banking").val(obj[10]);
                        $("#sum_amt").val(obj[12]);
                        $("#total_expense").val(obj[13]);
                        $("#paytm_exp").val(obj[14]);
                        $("#pay_bal").val(obj[15]);
                        $("#pay_bal1").val(obj[16]);
                        $("#bank_expense").val(obj[17]);
                        $("#p_n").val(obj[18]);
                        $("#cash_in").val(obj[19]);
                        $("#cash_in_bank").val(obj[20]);
                        $("#r_cash").val(obj[21]);
                      

                        
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
						url:'insert_voucher.php',
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
                url:'delete_expense.php',
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