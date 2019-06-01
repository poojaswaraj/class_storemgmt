<?php
include('config.php');
 $user_id=$_SESSION['login_user'];
 $utype=$_SESSION['user_type']=$row['type'];
 $sub=mysqli_query($connection,"SELECT * FROM user_profile WHERE type='$utype' and id='$user_id'")or die(mysqli_error($connection));
 $array=mysqli_fetch_array($sub);
 $sub_id=$array['user_id'];
  
	if($id = isset($_GET['id']) ? $_GET['id'] : '')
	{
		$row=mysqli_query($connection,"select * from receipt where id=$id");
		$data=mysqli_fetch_array($row);
	}
else
	{
		$data['sname']="";
		$data['s_mobile']="";
		$data['c_name']="";
		$data['remaing_amt']="";
		$data['paid_amt']="";
		$data['total_amt']="";
		$data['course_name']="";
		$data['fees_due_date']="";
		$data['paid_r_amount']="";
		//$data['state_id']="";
		//$data['con_per_no']="";
		$data['c_mobile']="";
		$data['book_code']="";
		$data['book_issue']="";
		$data['receipt_series']="";
		$data['fine']="";
		$data['ser_no']="";
		
	}
	
?>
<form id="myform" name="frm_purchase" autocomplete="off" method="POST" >
<div class="row">
<h3>Receipt No:<?php echo $data['ser_no']; ?><span style="margin-left:695px;">Date:&nbsp;&nbsp;<?php echo date("d-m-Y"); ?></span></h3><hr>

<h4>Student Info</h4>

<!-- <form id="myform" name="frm_purchase" autocomplete="off" action="code.php" method="POST"> -->
<input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
<input type="hidden" name="sub_us_id" value="<?php echo $sub_id; ?>">
<input type="hidden" name="sub_us_ty" value="<?php echo $utype; ?>">
<input type="hidden" name="new_id" value="<?php echo $id; ?>">	
<input type="hidden" name="student_id" id="student_id">	
<input type="hidden" name="invoice_id" id="invoice_id">	
<!-- <?php
echo $invoice_id=3;
	$row_sum=mysqli_query($connection,"select SUM(paid_amount) from receipt where invoice_id=3");
echo $data_sum=mysqli_fetch_array($row_sum);

?> -->
<input type="hidden" name="cur_date" value="<?php echo date("y/m/d");?>">	

<div class="col-lg-12">
	<div class="col-md-3">
			<label for="txt_semail">Student  Name <label style="color:red;">*</label></label>
		<input type="text" class="form-control" name="name" id="name" placeholder="student Name" value="<?php echo ucwords($data['sname']);?>" style="text-transform:capitalize;"  onkeyup="cust();" required="">
	</div>
	<div class="col-md-3"><label for="txt_mob_no">Mobile No<label style="color:red;">*</label></label>
		<input type="text" class="form-control" name="txt_mob_no" id="txt_mob_no" value="<?php echo $data['s_mobile'];?>" placeholder="Mobile No">
	</div>
	<div class="col-md-3">
			<label for="txt_cname">Course  Name <label style="color:red;">*</label></label>
		<input type="text" class="form-control" name="txt_cname" id="txt_cname" placeholder="Course  Name" value="<?php echo $data['course_name'];?>" style="text-transform:capitalize;"  onkeyup="cust();" required="">
	</div>
	
	<div class="col-md-3"><label for="txt_total_amount">Total Amount<label style="color:red;">*</label></label>
		<input type="text" class="form-control" name="txt_total_amount" id="txt_total_amount" value="<?php echo $data['total_amt'];?>" placeholder="Total Amount">
	</div>
	<div class="panel-body"></div>
	
	
		<div class="col-md-3"><label for="txt_total_amount1">Paid Receipt Amount<label style="color:red;">*</label></label>
		<input type="text" class="form-control" name="txt_total_amount1" id="txt_total_amount1" value="<?php echo $data['paid_r_amount'];?>" placeholder="Total Amount">
	</div>
				
		<div class="col-md-3"><label for="txt_paid_amount">Paid Amount<label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="txt_paid_amount" id="txt_paid_amount" placeholder="Paid Amount" value="<?php echo $data['paid_amt'];?>" required="" onkeyup="taxoncalculation()" >
		</div>
  <div class="col-md-3"><label for="txt_remaing_amount">Remaining Amount <label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="txt_remaing_amount" id="txt_remaing_amount" placeholder="Remaining Amount " value="<?php echo $data['remaing_amt'];?>" required="">
		</div>
		<div class="col-md-3"><label for="txt_remaing_amount">Fine Amount<label style="color:red;">*</label></label>
      <input type="text" class="form-control" name="fine" id="fine"  placeholder="Fine Amount " value="<?php echo $data['fine'];?>">
    </div>
	

		<div class="panel-body"></div>

			

	
	
		<!-- <div class="col-md-6"><label for="txt_semail"> Rupiess In Word<label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="txt_word" id="txt_word" placeholder=" Rupiess In Word">
		</div> -->
		
		<div class="col-md-3"><label for="txt_semail">Select Series<label style="color:red;">*</label></label><select class="form-control" name="select_series" id="select_series" required>
			<?php
			if(isset($data['id']))
			{
				?>
            	<option value="<?php echo $data['number'];?>"><?php echo $data['number'];?></option>
            <?php }?>
    
		</select>
		</div>

			<div class="col-md-3"><label for="txt_semail">Contact Person<label style="color:red;">*</label></label>
			<select class="form-control" name="txt_cperson" id="txt_cperson" required>
			
<option value="<?php echo $data['c_name']; ?>"><?php echo $data['c_name']; ?></option>

            		
		
      <?php
      $qry2=mysqli_query($connection,"SELECT * FROM `user_profile` where user_id='$user_id'");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['name'];?>"><?php echo $row2['name'];?></option>
      <?php } ?>
     
		</select>
		    </div>
		
	
	
		<div class="col-md-3"><label for="txt_contact">Contact No<label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="txt_contact" id="txt_contact"  value="<?php echo $data['c_mobile'];?>" placeholder="Contact No">
		</div>
		<div class="col-md-3"><label for="txt_book">Mode Of Payment<label style="color:red;">*</label></label>
			<select class="form-control" name="mode" id="mode" required>



            <option value="<?php echo $data['payment_mode'];?>"><?php echo $data['payment_mode'];?></option>		
		
      <?php

      $qry2=mysqli_query($connection,"SELECT * FROM `mode`");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['mode'];?>"><?php echo $row2['mode'];?></option>
      <?php } ?>
      
		</select>
		</div>
		<div class="panel-body"></div>
		 <div class="col-md-3">
    <label for="txt_book">Paytm Account</label>
      <select class="form-control" name="paytm_name" id="paytm_name" >
        <option value="<?php echo $data['paytm_name'];?>"><?php echo $data['paytm_name'];?></option>
        
      <?php
      
      $sql1 = mysqli_query($connection,"SELECT * FROM paytm")or die(mysqli_error($connection));
      
      while ($row1=mysqli_fetch_array($sql1)) { 
      
       ?>
      <option value="<?php echo $row1['name']; ?>"><?php echo $row1['name']; ?></option>
      <?php } ?>

    </select>
    </div>
			<div class="col-md-3"><label for="txt_semail">Fees Due Date<label style="color:red;">*</label></label>
			<input type="date" class="form-control" name="txt_date" id="txt_date" placeholder="Fees Due Date" value="<?php echo $data['fees_due_date'];?>" >
		</div>
   	
		<div class="col-md-3"><label for="txt_book">Book Issue<label style="color:red;">*</label></label>
			<select class="form-control" name="book_issue" id="book_issue" required>
			<?php
			if(isset($data['id']))
			{
				?>
            	<option value="<?php echo $data['book_issue'];?>"><?php echo $data['book_issue'];?></option>
            	<?php
            	$data11=$data['book_issue'];
      $qry2=mysqli_query($connection,"SELECT * FROM `book` where book_issue!='$data11'");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['book_issue'];?>"><?php echo $row2['book_issue'];?></option>
      <?php } ?>
            	<?php
            }
            	else
            	{?>
<option value="">Select Book</option>

            		
		
      <?php
      $qry2=mysqli_query($connection,"SELECT * FROM `book`");
        while($row2=mysqli_fetch_array($qry2))
        {
      ?>
      <option value="<?php echo $row2['book_issue'];?>"><?php echo $row2['book_issue'];?></option>
      <?php } ?>
      <?php

            	}
            	?>
		</select>
		</div>
			<div class="col-md-3"><label for="txt_semail">Book Code<label style="color:red;">*</label></label>
			<input type="text" class="form-control" name="book_code" id="book_code" value="<?php echo $data['book_code'];?>" placeholder="Book Code ">
		</div>
		<div class="panel-body"></div>
		<?php 
				if(empty($id))	{
		 ?>
		<button name="btn_save" type="submit" class="btn btn-primary" id="btn_save" value="save" onclick="document.pressed=this.value" data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Save</button>
		<?php 
		}
		else{
		 ?>
			<button name="btn_save1" type="submit" class="btn btn-primary" id="btn_save1" value="save1" onclick="document.pressed=this.value" data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Update</button>
	<button type="submit" class="btn btn-primary" name="print_button" id="print_button" value="Print" onclick="openWin1()" ><span class="glyphicon glyphicon-print"></span>&nbsp;Single Print</button> 

	<button type="submit" class="btn btn-primary" name="print_button" id="print_button" value="Print" onclick="openWin()" ><span class="glyphicon glyphicon-print"></span>&nbsp;Double Print</button> 

	<script type="text/javascript">
         function openWin()
  {
    var divToPrint = document.getElementById('divToPrint');
    var popupWin = window.open('', '_blank', 'width=800,height=620');

    popupWin.document.open();
    popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
    popupWin.document.close();

  }
    </script>
<?php
require_once"print_receipt.php";
?> 

<script type="text/javascript">
         function openWin1()
  {
    var divToPrint = document.getElementById('divToPrint1');
    var popupWin = window.open('', '_blank', 'width=800,height=620');

    popupWin.document.open();
    popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
    popupWin.document.close();

  } 
    </script>
<?php
require_once"print_receipt1.php";
?> 
		<?php 	} ?>
<script>
	function FillBilling(f) {
	  if(f.shifttoo.checked == true) {
	    f.txt_scperson.value = f.txt_cperson.value;
	    f.txt_scemail.value = f.txt_cemail.value;
	    f.txt_sstate.value = f.txt_state.value;
	    f.txt_scode.value = f.txt_code.value;
	    f.txt_saddr.value = f.txt_iaddr.value;
	  }
	}

</script>
</div>
<!-- <div class="panel-body"></div>


<div class="panel-body"></div> -->
<hr></hr>


<!-- <h4>Terms & Conditions</h4> -->
<!-- <?php 
if($utype=='admin')
{
	$query=mysqli_query($connection,"SELECT * FROM company WHERE user_id='$user_id'")or die(mysqli_error($connection));
}
else{
	$query=mysqli_query($connection,"SELECT * FROM company WHERE user_id='$sub_id'")or die(mysqli_error($connection));
}
	
	$arr=mysqli_fetch_array($query);
		
?> -->
<!-- <div class="col-md-6">
	<textarea class="form-control" rows="4" name="txt_terms" id="txt_terms" placeholder="Terms" style="border: none;" readonly=""><?php echo $arr['terms'];?></textarea>
</div>
<div class="panel-body"></div>

<h4>Bank Details</h4>
<div class="col-md-6">
	<textarea class="form-control" rows="4" name="txt_bank" id="txt_bank" placeholder="Company Bank Details." style="border: none;" readonly=""><?php echo $arr['bank_details'];?></textarea>
</div>
<div class="panel-body"></div>

<h4>Notes</h4>
<div class="col-md-6">
	<textarea class="form-control" name="txt_notes" id="txt_notes" placeholder="Notes"></textarea>
</div>
<div class="panel-body"></div> -->

<!-- <h4>Tags</h4>
	<div class="col-md-6">
		<input type="text" class="form-control" name="txt" placeholder="Tags">
	</div>
	<div class="panel-body"></div>
	 -->
	<div class="col-lg-12" align="right">

	<button name="product_submit" type="submit" class="btn btn-primary" style="display: none;">Delete</button>
	<button name="product_submit" type="submit" class="btn btn-primary" name="print_button" id="print_button" value="Print" onclick="PrintDiv(); " style="display: none;"> Print</button>
	<button name="product_submit" type="submit" class="btn btn-primary" style="display: none;">Pdf</button>
	<!-- <button name="product_submit" type="submit" class="btn btn-primary">Save and Send by Email</button> -->
	<!-- <button name="btn_save" type="submit" class="btn btn-primary" id="btn_save" value="save" onclick="document.pressed=this.value" data-loading-text="<i class='fa fa-spinner fa-spin'></i>Processing..."><i class="ace-icon fa fa-check bigger-110"></i>Save</button> -->
	</div>
		

<div class="panel-body"></div>
</div>
<!-- <center><p id='msg'></p></center> -->
</form>	

 <!--Delete model start here-->
<div id="deleteModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
		  	<div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal">&times;</button>
			    <h4 class="modal-title">Delete Product</h4>
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


<!-- script for select sesries no -->
<script>
 
$(document).ready(function(){
    $('#select_series').on('change',function(){
        var id = $(this).val();

      if(id)
        {
          $.ajax({
                    type:'POST',
                    url: "get_series_no.php",
                    data:{
                            id:id
                    },
                    dataType: "JSON",
                    success:function(data)
                    {
                      $('#ser_no').val(data.first_number);
                      
                    }
                }); 
          }else{
              $('#select_series').html('Select Series first'); 
          }
      });
});

</script>

<!-- Select state and state code -->

<script>
	function state(){

	    var txt_state = document.getElementById("txt_state").value;
	    $("#txt_state").autocomplete({
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
                        $('#txt_state').val(obj.name);
                        $('#txt_code').val(obj.state_code);
                          if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
		}

		function state_ship(){

	    var txt_sstate = document.getElementById("txt_sstate").value;
	    $("#txt_sstate").autocomplete({
	        source: 'select_state.php',
	        select: function(a,b)
		        {
		            $(this).val(b.item.value); //grabed the selected value
		            get_bstate_code(b.item.value);//passed that selected value
		        }
	    });
	}
		function get_bstate_code(name){
		 $.ajax({
                     url:'get_state_code.php',
                     type:'POST',
                     data:{
                            name:name
                     },
                     success: function(data)
                     {
                       var obj = $.parseJSON(data);
                        $('#txt_sstate').val(obj.name);
                        $('#txt_scode').val(obj.state_code);
                        
                        if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
		}

</script>

<script>
function isNumber(evt) {   
     evt = (evt) ? evt : window.event;        
     var charCode = (evt.which) ? evt.which : evt.keyCode;     
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {     
               alert("Please enter only Numbers.");          
                 return false;      
                   }       
                    return true;  
                      }
</script>
<!-- <script src="../bower_components/jquery/dist/jquery.min.js"></script> -->
<script>
function PrintDiv()
{    
	var divToPrint = document.getElementById('divToPrint');
	var popupWin = window.open('', '_blank', 'width=800,height=620');

	popupWin.document.open();
	popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
	popupWin.document.close();
}
</script>

<script type="text/javascript">
	// $(function() 
	// {
	//  $( "#txt_course" ).autocomplete({
	//   source: 'autocomplete.php'
	//  });
	// });

// This function is used for product suggesions and fetch values
 function auto(){

    var txt_course = document.getElementById("txt_course").value;
    $("#txt_course").autocomplete({
        source: 'autocomplete.php?u_ty=<?php echo $utype;?>&u_id=<?php echo $user_id;?>',
        select: function(a,b)
	        {
	            $(this).val(b.item.value); //grabed the selected value
	            getCourseOtherInfo(b.item.value);//passed that selected value
	        }
    });
}

function getCourseOtherInfo(name){
        $.ajax({
                     url:'get_course.php',
                     type:'POST',
                     data:{
                            name:name
                     },
                     success: function(data)
                     {
                       var obj = $.parseJSON(data);
                        $('#txt_course').val(obj.course);
                        $('#txt_desc').val(obj.description);
                        $('#txt_cost').val(obj.base_price);
                          $('#txt_price').val(obj.base_price);
                       	$('#txt_ccode').val(obj.ccode);
                        if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
    }

// This function is used for customer suggesions and fetch values
 function cust(){

    var name = document.getElementById("name").value;
    $("#name").autocomplete({
        source:'stud_autocomplete.php?u_ty=<?php echo $utype;?>&u_id=<?php echo $user_id;?>&u_id=<?php echo $user_id;?>', 
        select: function(a,b)
	        {
	            $(this).val(b.item.value); //grabed the selected value
	            getCustOtherInfo(b.item.value);//passed that selected value
	        }
    });
}

function getCustOtherInfo(name){
        $.ajax({
                     url:'get_student.php',
                     type:'POST',
                     data:{
                            name:name
                     },
                    // dataType:'json',
                     success: function(data)
                     {
                       var obj = $.parseJSON(data);

                        $('#name').val(obj.student_name);
                          $('#student_id').val(obj.student_id);
                          $('#invoice_id').val(obj.id);
                         $('#txt_cname').val(obj.course_list);
               
                         $('#txt_paid_amount').val(obj.paid_amount);
                         $('#txt_word').val(obj.amt_words); 
                           $('#txt_date').val(obj.due_date); 
                            $('#txt_scperson').val(obj.contact_person); 
                              $('#txt_total_amount').val(obj.gross_amount); 
                                   $('#txt_mob_no').val(obj.contact_person); 
                              
                        if(data==1)
                        {
                            alert("update");
                        }
                     } 
            });
    }


</script>
<script>
 
$(document).ready(function(){
    $('#txt_cperson').on('change',function(){
        var id = $(this).val();

      if(id)
        {
          $.ajax({
                    type:'POST',
                    url: "get_contact.php",
                    data:{
                            id:id
                    },
                    dataType: "JSON",

                    success:function(data)
                    {
                      $('#txt_contact').val(data.mobile);
                      
                    }
                }); 
          }else{
              $('#txt_cperson').html('Select Contact first'); 
          }
      });
});

</script>	

<!-- Insert Script -->
<script>

$('form#myform').submit(function(e){

     e.preventDefault(); 

	if(document.pressed == 'add_item')
	  {
	  	// var txt_qty = $('#txt_qty').val();
	  	var txt_cost =$('txt_cost').val();

	  	 if(txt_cost=="")
	  	 {
	  	 	$('#txt_qty').css('borderColor','red');
			$('#msg').html('Please Enter Quantity');
		    $('#msg').css('color','red');
	  	 }
	  	 else
	  	 {
	  	  $("button#product_submit1").button('loading');
	           $.ajax({
						data:$("#myform").serialize(),
						type:"POST",
						url:'insert_product.php',
						success: function(data)
						{
							$("button#product_submit1").button('reset');

							 // alert(data);
							if(data==1) 
							{
								// alert('Product Inserted !!!');
								$("#products").load(" #products");
		             		    $("#pro").load(" #pro");
		             		    $("#bill").load(" #bill");
							}
							else if(data==2)
							{
								// alert('Error..');
								$('#pmsg').html('Error In Product Insertion.!!!'); 
								$('#pmsg').css('color','red');

								return false;
							} 
						}
					 
					});
	           
			  	 	$('#txt_qty').css('borderColor','#ccc');
					$('#msg').html('');
	       }
	}	

 	else
	  if(document.pressed == 'save')
	  	{
	  		$("button#btn_save").button('loading');
	         $.ajax({
						data:$("#myform").serialize(),
						type:"POST",
						url:'insert_receipt.php',
						success: function(data)
						{
							$("button#btn_save").button('reset');
							if(data==1)
							{
								// alert('Save Successfully !!!');
								
								//  window.location.href= "logproduct.php";
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Save Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "dashboard.php?page=receipt";
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
                            url:'delete_product.php',
                            type: "POST",
                            data: {
                                   id:id  
                            },
                            success: function(data)
                                {
                                  //alert(data);
                                    if(data==1)
                                    {
                                        // alert('Deleted Successfully.');
          								// $('#dmsg').html('Product Deleted Successfully.!!!'); 
										// $('#dmsg').css('color','green');
                                        // window.location.reload();
                                        $("#products").load(" #products");
			             		    	$("#deleteModal").load(" #deleteModal");
			             		    	$("#bill").load(" #bill");
                                    }                          
                                }
                        });
        })
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

	var totalcost = document.getElementById('txt_cost').value;
	var tax = document.getElementById('select_tax').value;
	var dis = document.getElementById('txt_discount').value;
    var qut = document.getElementById('txt_qty').value;
    // To calculate totalcost of products 
	//var totalcost =  parseFloat(amt) * parseFloat(qut);
	// calculate tax
	var rtax = parseFloat(totalcost)* parseFloat(tax)/100; 
	var totaltax = parseFloat(totalcost)+ parseFloat(rtax); 
	
	//To calculate the tax price on cost
	var per1 =(parseFloat(tax)/100) * parseFloat(totalcost);

	// var a =(parseFloat(dis)/100) * parseFloat(totalcost);

	var rdis = parseFloat(totalcost) * parseFloat(dis)/100;
	var taxdis = parseFloat(totalcost)- parseFloat(rdis); 

	var per =(parseFloat(tax)/100) * parseFloat(taxdis);

	var rdiss = parseFloat(totaltax) * parseFloat(dis)/100;
	var final = parseFloat(totaltax)- parseFloat(rdiss); 

   if (!isNaN(final)) 
	{
    	document.getElementById('txt_price').value = parseFloat(final).toFixed(2);
    }
    else if (!isNaN(taxdis)) 
	{
    	document.getElementById('txt_price').value = parseFloat(taxdis).toFixed(2);
    }
    else if (!isNaN(totaltax)) 
	{
    	document.getElementById('txt_price').value = parseFloat(totaltax).toFixed(2);
    }
    else if(!isNaN(totalcost))
    {
    	document.getElementById('txt_price').value = parseFloat(totalcost).toFixed(2);
    }
		if(!isNaN(per)){

		 document.getElementById('tax_amt').value = parseFloat(per).toFixed(2);
		}else{
			document.getElementById('tax_amt').value = parseFloat(per1).toFixed(2);
		}

} 

/*calculation*/
onkeyup="taxoncalculation()"
function taxoncalculation()
{	
         
	var paid_amt = document.getElementById('txt_paid_amount').value;
	var total_amt = document.getElementById('txt_total_amount').value;
     var remaing_amt = parseFloat(total_amt)- parseFloat(paid_amt); 
       //document.myform.txt_remaing_amount.value=remaing_amt;
      //alert(remaing_amt);
   $("#txt_remaing_amount").val(remaing_amt);
	// var tax = document.getElementById('select_tax').value;
	// var dis = document.getElementById('txt_discount').value;
 //    var qut = document.getElementById('txt_qty').value;
   
	// //var totalcost =  parseFloat(amt) * parseFloat(qut);
	// var rtax = parseFloat(totalcost)* parseFloat(tax)/100; 
	// var totaltax = parseFloat(totalcost)+ parseFloat(rtax); 
	
	// //To calculate the tax price on cost
	// var per1 =(parseFloat(tax)/100) * parseFloat(totalcost);

	// var disc_amt =(parseFloat(dis)/100) * parseFloat(totalcost);
	// var rdis = parseFloat(totalcost) * parseFloat(dis)/100;
	
	
	// //calculate tax on discount
	// var per =(parseFloat(tax)/100) * parseFloat(taxdis);

	// var rdiss = parseFloat(totaltax) * parseFloat(dis)/100;
	// var final = parseFloat(totaltax)- parseFloat(rdiss); 

 //   if (!isNaN(final)) 
	// {
 //    	document.getElementById('txt_price').value = parseFloat(final).toFixed(2);
 //    }
 //  else if (!isNaN(taxdis)) 
	// {
 //    	document.getElementById('txt_price').value = parseFloat(taxdis).toFixed(2);
 //    }

 //    else if (!isNaN(totaltax)) 
	// {
 //    	document.getElementById('txt_price').value = parseFloat(totaltax).toFixed(2);
 //    }

 //    else if(!isNaN(totalcost))
 //    {
 //    	document.getElementById('txt_price').value = parseFloat(totalcost).toFixed(2);
 //    }
    
	// 	document.getElementById('disc_amt').value = parseFloat(disc_amt).toFixed(2);
		

	// 	if(!isNaN(per)){

	// 	 document.getElementById('tax_amt').value = parseFloat(per).toFixed(2);
	// 	}else{
	// 		document.getElementById('tax_amt').value = parseFloat(per1).toFixed(2);
	// 	}

}

</script>
<script>

$('form#myform').submit(function(e){

     e.preventDefault();
if(document.pressed == 'save1')
	  	{
	  		$("button#btn_save1").button('loading');
	         $.ajax({
						data:$("#myform").serialize(),
						type:"POST",
						url:'update_new_receipt.php',
						success: function(data)
						{
							$("button#btn_save1").button('reset');
							if(data==3)
							{
								// alert('Save Successfully !!!');
								
								//  window.location.href= "logproduct.php";
								  swal({
									  position: 'top-right',
	 							      type: 'success',
	  								  title: 'Save Successfully!!!',
	  								  showConfirmButton: false,
	  								  timer: 1500
								  })
								  window.setTimeout(function()
								    { 
 										window.location.href= "dashboard.php?page=receipt";
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
        $('#idate').datepicker();
        $('#ddate').datepicker();
    })
}
</script>