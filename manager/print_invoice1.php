<?php
    if(isset($_GET["id"]))
    {
         $id = $_GET["id"];

        $query = mysqli_query($connection,"SELECT * FROM common WHERE id='$id'")or die(mysqli_error($connection));
            $data=mysqli_fetch_array($query);
            $user_id=$data['user_id'];
             $aa = mysqli_query($connection,"SELECT * FROM company WHERE user_id='$user_id'")or die(mysqli_error($connection));
                   $rr=mysqli_fetch_array($aa);
    }

?>

<div id="divToPrint" style="display:none;">
  <div style="width: 800px; height: 620px; background-color: white; text-align: left;">
    <div class="panel-body" style="font-size:20px">

        <style>
          .container1, .row-data1
            {
                width: 100%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0;
            }
            .para
            {
                width: 100%;
                height: auto;
                float: left;
                padding: 1%;
                margin: 0;
            }
            .wrapper
            {
                width: 100%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0%;
                border: 1px solid darkgray;
            }
            .logo
            {
                    padding: 2%;
                    margin: 0;
                    width: 40%;
                    float: left;
            }
            .full-div
            {
                width: 100%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0;
            }
            .div-left
            {
                width: 50%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0;
            }
            .div-left1
            {
                width: 90%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0;
                text-align: center;
            }
            .div-right1
            {
                width: 30%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0;   
            }
            .div-right
            {
                width: 50%;
                height: auto;
                float: left;
                padding: 0%;
                margin: 0;
            }
            .logo-right
            {
                    float: right;
                    padding: 2%;
                    margin: 0;
                    width: 50%;
            }
            .inner-div
            {
                width: 98%;
                float: left;
                padding: 1%;
                margin: 0;
                font-size: 14px;
                text-align: left;
            }
            .header
            {
                margin-top: 8px;
                margin-bottom: 0.72px;
                font-size: 1em;
                font-weight: 600;
                text-align: center;
            }
            .block1
            {
                width: 98%;
                height: auto;
                float: left;
                border-left: 1px solid darkgray;
                padding:2% 0% 2% 2%;
                font-size: 15px;
                border-bottom: 1px solid darkgray;
            }
            .block2
            {
                    width: 100%;
                    height: auto;
                    float: left;
                    padding: 1% 1%;
                    text-align: left;
                    /*border-left: 1px solid darkgray;*/
            }
            .border-left
            {
                border-left: 1px solid darkgray;
            }
            .outter-block
            {
                width: 100%;
                float: left;
                padding: 0% 0%;
                margin: 0;
                font-size: 14px;
                text-align: center;
                border-top: 1px solid darkgrey;
                
            }
            .border-outter
            {
                border-top: 1px solid darkgray;
                border-bottom: 1px solid darkgray;
                border-left: 1px solid darkgray;
                border-right: 1px solid darkgray;
                padding: 0px 5px;
            }
            .border-outter1
            {
                border-right: 1px solid darkgray;
                height: 40px;
                padding: 12% 2% 2% 2%;
            }
            table 
            {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            td, th
            {
                border: 1px solid #dddddd;
                /*text-align: center;*/
                padding: 5px;
                font-size: 12px;
            }
            .div-cont
            {
                    height: auto;
                    float: left;
                    padding: 8px;
                    margin: 0;
                    border: 1px solid #dddddd;
                    text-align: left;
            }
            .div-vertical
            {
                width: 100%;
                border-bottom: 1px solid #dddddd;
                padding: 1px 0px;
            }
            .div-cont1
            {
                    width: 13%;
                    font-size: 12px;
                    float: left;
                    margin: 0;
                
            }
            .bottom-content
            {
                font-size: 12px;

            }
            .td_data{
                padding: 5px 55px 5px 5px;
            }
        </style>
   
        <div class="container1">
            <div class="wrapper">            
            <!---------------------------------------->
                <?php 

                    $sql = mysqli_query($connection,"SELECT * FROM student where user_id='$user_id'")or die(mysqli_error($connection));
                        $res = mysqli_fetch_array($sql);
               ?>

                <div class="div-left">
                    <img src="<?php echo $rr['logo'];?>" alt="logo" class="logo">
                </div> 
                <div class="div-right" style="float: right;">
                    <!-- <img src="address-line-ushakal.png" alt="logo" class="logo-right"> -->
                    <div style="padding: 0 7%; margin-top: 8px;">
                      <b><?php echo $rr['company_name']; ?></b>
                    </div>
                 
                    <div style=" padding: 0 7%; font-size: 15px;">
                       <b>Contact No.:</b><?php echo $rr['company_phone']; ?>
                    </div>
                     <div style=" padding: 0 7%; font-size: 15px;">
                     <b> E-MAIL: </b><?php echo $rr['company_email']; ?>
                    </div>
                    <div style=" padding: 0 7%; font-size: 15px;">
                     <b> Website: </b><?php echo $rr['company_url']; ?>
                    </div>


                </div>
                <div class="div-left1">
                    <div class="header" >INVOICE</div>
                   
                </div>
                <div class="full-div">
                    <div class="outter-block">
                    <div class="div-left" style="width:49%;">
                    <div class="inner-div">                              
                    <?php echo $rr['company_address'];?>
                    </div>
                   </div>
                   <div class="div-left" style="width:49%;">
                   <div class="inner-div">                              
                    <?php echo $rr['company_address2'];?>
                    </div>
                    </div>
                </div>
                </div>
                
                <div class="div-right1">
                   
                </div>
                <div class="outter-block">
                    <div class="div-left" style="width:49%;">
                        <div class="block2">
                            <b>Invoice No:</b> <?php echo $data['number']; ?>
                        </div>
                        <div class="block2">
                           <b> Date Of Issue: </b><?php 
                           // echo date('d-M-Y',strtotime($data['issue_date']));
                            if($data['issue_date']!='0000-00-00')
                                {
                                     echo date('d-M-Y',strtotime($data['issue_date'])); 
                                }else{
                                    echo'';
                                }
                            ?>
                        </div>
                       
                    </div>
                    <div class="div-right border-left">
                     
                    </div>
                </div>

                <div class="outter-block">
                    <div class="div-left" style="width:49%;">
                        <div class="inner-div">
                            <b>Billed To</b>
                        </div>
                    </div>

                    <div class="div-right border-left">
                        <div class="inner-div">
                            <b>Shipped To</b>
                        </div>
                    </div>
                </div>

                <div class="outter-block">
                    <div class="div-left" style="width:49%; border: 1px solid #dddddd;">

                        <div class="block2">
                           <b> Name: </b><?php echo $data['student_name']; ?>
                        </div>

                        <div class="block2">
                          <b> Contact No: </b><?php echo $data['contact_person']; ?>
                        </div>

                         <div class="block2">
                           <b>Email-ID: </b><?php echo $data['email']; ?>
                        </div>

                        <div class="block2">
                            <b>Address: </b><?php echo $data['invoicing_address']; ?>
                        </div>

                        <div class="block2">

                            <div class="div-left" style="width:49%;">
                                <b>State: </b><?php echo $data['invoice_state']; ?>
                            </div>

                            <div class="div-right">
                                <div class="border-outter">
                                    <b>State Code: </b><?php echo $data['in_state_code']; ?>
                                </div>   
                            </div>

                        </div>

                        <div class="block2">
                          
                           

                            <div class="div-right">
                                
                            </div>


                        </div>

                      
                        
                    </div>
                    <div class="div-right border-left">
                        <div class="block2">
                           <b> Name: </b><?php echo $data['student_name']; ?>
                        </div>
                        <div class="block2">
                           <b> Contact NO: </b><?php echo $data['ship_cont_person']; ?>
                        </div>
                        <div class="block2">
                           <b> Email-ID: </b><?php echo $data['ship_email']; ?>
                        </div>
                        <div class="block2">
                           <b> Address: </b><?php echo $data['shipping_address']; ?>
                        </div>
                        <div class="block2">
                            <div class="div-left" style="width:49%;">
                               <b> State: </b><?php echo $data['ship_state']; ?>
                            </div>
                            <div class="div-right">
                                <div class="border-outter" style="border-right: 0px; left: 3%; position: relative;">
                                    <b>State Code: </b><?php echo $data['ship_state_code']; ?>
                                </div>   
                            </div>
                        </div>
                        <div class="block2">
                           

                            <div class="div-right">
                           
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div class="outter-block">
                   <table>
                    <thead>
                      <tr>
                        <th>Sr.<br/>no</th>
                        <th>Course name</th>
                        <th>Description of Course</th>
                        <th>Course Code</th>
                       <!--  <th>Qty</th> -->
                        <!-- <th>Rate (Rs.)</th> -->
                        <th>Unit Cost</th>
                      <!--   <th>Tax Rate (%)</th> -->
                       <!--  <th>CGST (Rs.)</th>
                        <th>SGST (Rs.)</th> -->
                       <!--  <th>IGST (Rs.)</th> -->
                        <th>Dis. (Rs.)</th>
                        <th>Price (Rs.)</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
                        $sr_no=0;
                        $sq = mysqli_query($connection,"SELECT b.description,b.course,a.* FROM `item` a INNER JOIN `course` b ON a.product_id=b.id LEFT JOIN common c ON c.id=a.common_id WHERE  a.common_id='$id' and a.status=1")or die(mysqli_error($connection));
                            while($row=mysqli_fetch_array($sq))
                            {
                                $sr_no++;
                                $id1=$row['id'];
                                $tax = $row['tax_amt'];
                                $a=$tax/2; // Divide tax into SGST and CGST
                                // $qu=  $row['quantity'];
                                $uc= $row['unitary_cost'];
                                $ba=$uc;
                      ?>
                          <tr>
                            <td><?php echo $sr_no; ?></td>
                             <td><?php echo $row['course'] ?></td>
                            <td><?php echo $row['description']; ?></td>
                            <td><?php echo $row['ccode']; ?></td>
                          <!--   <td><?php echo round($row['quantity']); ?></td> -->
                          <!--   <td><?php echo $row['base_prise'];?></td> -->
                            <td><?php echo $ba; ?></td>
                          <!--   <?php
                             $sel=mysqli_query($connection,"SELECT b.sgst,b.cgst,b.igst,b.value,a.* FROM item_tax a INNER JOIN tax b ON b.value=a.tax_value where a.item_id=$id1");
                                    $arr=mysqli_fetch_array($sel);
                              @$code=$res['state_code'];
                              $cod=$row['state_code'];

                             if($arr['value']==''){
                                echo "<td>0</td>"; 
                             }
                             else {
                                    echo "<td>".$arr['value']."</td>"; 
                                }
                                if ($code==$cod) {
                             ?> 
                             <td><?php echo $a; ?></td>
                            <!--  <td><?php echo $a; ?></td>
                             <td><?php echo "0.00";?></td> -->
                             <?php 
                                }
                                else{
                              ?>
                            <!--   <td><?php echo "0.00"; ?></td> -->
                             <!-- <td><?php echo "0.00";?></td>
                             <td><?php echo $tax; ?></td> -->
                             <?php } ?> -->
                           
                           
                            <td><?php echo $row['disc_amt'];?></td>
                            <td><?php echo $row['price'];?></td>
                          </tr>
                          <?php } ?>
                           <tr>
                            <?php 
                                $sum = mysqli_query($connection,"SELECT SUM(unitary_cost) AS base,SUM(disc_amt) as 'Total_dis', SUM(tax_amt) as 'Total_tax', SUM(a.price) as 'Total_price' FROM item a INNER JOIN course b ON a.product_id=b.id INNER JOIN common c ON c.id=a.common_id WHERE  a.common_id='$id' and a.status=1")or die(mysqli_error($connection));
                                while($arr=mysqli_fetch_array($sum))
                                {
                                   $bas=$arr['base'];
                                   $base= number_format($bas, 2, '.', '');
                                    // $discount =$arr['Total_dis'];
                                    $tax=$arr['Total_tax'];
                                    $amt_tax=$tax/2;
                                    // $Subtotal =$base-$discount;
                                   $total_price=$arr['Total_price'];
                            ?>
                            <td></td>
                            <td><b>Total Amount (Rs.)</b></td>
                            <td>-</td>
                            <td>-</td>
                           <!--  <td>-</td> -->
                            <td><b><?php echo $base; ?></b></td>
                         <!--    <td>-</td> -->
                           <!--  <?php 
                                if ($code==$cod) {
                             ?>
                            <td><b><?php echo $amt_tax; ?></b></td>
                            <td><b><?php echo $amt_tax; ?></b></td> -->
                          <!--   <td><b>0.00</b></td>
                            <?php 
                                }
                                else{
                             ?>
                            <td><b>0.00</b></td> -->
                           <!--  <td><b>0.00</b></td> -->
                           <!--  <td><b><?php echo $tax; ?></b></td> -->
                             <?php } ?>
                            <td><b><?php echo $arr['Total_dis']; ?></b></td>
                            <td><b><?php echo round($arr['Total_price']);?></b></td>
                            <?php } ?>
                          </tr>
                    </tbody>
                </table>
                 <?php
                    
                    $no = round($total_price);
                    $point = round($total_price - $no, 2) * 100;
                    $hundred = null;
                    $digits_1 = strlen($no);
                    $i = 0;
                    $str = array();
                    $words = array('0' => '', '1' => 'One', '2' => 'Two',
                                   '3' => 'Three', '4' => 'Four', '5' => 'Five', '6' => 'Six',
                                   '7' => 'Seven', '8' => 'Eight', '9' => 'Nine',
                                   '10' => 'Ten', '11' => 'Eleven', '12' => 'Twelve',
                                   '13' => 'Thirteen', '14' => 'Fourteen',
                                   '15' => 'Fifteen', '16' => 'Sixteen ', '17' => 'Seventeen',
                                   '18' => 'Eighteen', '19' =>'Nineteen', '20' => 'Twenty',
                                   '30' => 'Thirty', '40' => 'Forty', '50' => 'Fifty',
                                   '60' => 'Sixty', '70' => 'Seventy',
                                   '80' => 'Eighty', '90' => 'Ninety','100' => 'Thousand');
                                     $digits = array('', 'Hundred', 'Thousand', 'Lakh', 'Crore');
                                     while ($i < $digits_1) {
                                     $divider = ($i == 2) ? 10 : 100;
                                     $total_price = floor($no % $divider);
                                     $no = floor($no / $divider);
                                     $i += ($divider == 10) ? 1 : 2;
                                     if ($total_price) {
                                     $plural = (($counter = count($str)) && $total_price > 9) ? 's' : null;
                                     $hundred = ($counter == 1 && $str[0]) ? ' And ' : null;
                                     $str [] = ($total_price < 21) ? $words[$total_price] .
                                     " " . $digits[$counter] . $plural . " " . $hundred
                                    :
                                    $words[floor($total_price / 10) * 10]
                                    . " " . $words[$total_price % 10] . " "
                                    . $digits[$counter] . $plural . " " . $hundred;
                                    } else $str[] = null;
                                    }
                                    $str = array_reverse($str);
                                    $result = implode('', $str);
                                   
                    ?>
                </div>
                   
                <div class="outter-block">
                    <div class="div-cont" style="width:60%; border-bottom:0 solid transparent;border:0px; ">
                    <div class="tt-amnt" style="width: 100%;float: left;">
                        <b>Total Amount (in Words):</b>&nbsp;INR <?php echo $result;?> Only</div>
                    <div class="div-left1 div-cont" style="text-align: left;padding: 2em 1% 0em;    width: 100%;border-bottom: 0 solid transparent;overflow: hidden;border:0px; " >
                        <b>Bank Details</b><br>
                         <textarea rows="5" cols="96" style="border: none; font-family: serif; font-size: 15px;" ><?php echo $rr['bank_details'];?></textarea>
                          <!-- <?php echo $res['bank_details'];echo "<br>"; ?> -->
                    </div>
                  </div>
                    <div class="div-cont1" style="width:36.5%; font-size:12px;  border: 1px solid #dddddd; float: right; margin: 0px;">
                            <table style="font-size:10px;height: 18em;">
                             <?php 
                                $sum = mysqli_query($connection,"SELECT SUM(unitary_cost) AS base,SUM(disc_amt) as 'Total_dis', SUM(tax_amt) as 'Total_tax', SUM(a.price) as 'Total_price' FROM item a INNER JOIN course b ON a.product_id=b.id INNER JOIN common c ON c.id=a.common_id WHERE  a.common_id='$id' and a.status=1")or die(mysqli_error($connection));
                                while($arr=mysqli_fetch_array($sum))
                                {
                                   $bas=$arr['base'];
                                   $base= number_format($bas, 2, '.', '');
                                    $discount =$arr['Total_dis'];
                                    $tax=$arr['Total_tax'];
                                    $amt_tax=$tax/2;
                                    $Subtotal =$base-$discount;
                                   $total_price=$arr['Total_price'];
                            ?>
                                <tr>   
                                    <td> <b>Base Amount (Rs.)</b></td>
                                    <td class="td_data"><?php echo $base; ?></td>
                                </tr>
                                <tr>   
                                    <td><b>Discount (Rs.)</b></td>
                                    <td class="td_data"><?php echo $arr['Total_dis']; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Sub Total (Rs.)</b></td>
                                    <td class="td_data"><?php echo $Subtotal;?></td>
                                </tr>
                                <!-- <tr>   
                                    <td><b>Total Taxes (Rs.)</b></td>
                                    <td class="td_data"><?php echo $arr['Total_tax'];?></td>
                                </tr> -->
                                <tr>
                                    <td><b>Payable Amount (Rs.)</b></td>     
                                    <td class="td_data"><?php echo round($arr['Total_price']);?></td>
                                </tr>
                                <?php } ?>
                            </table>
                        </div>
                    
                </div>
                <div class="outter-block"> </div>

                <div class="outter-block">
                    <div class="div-left" style="width:49%; border-right: 1px solid #bbbbbb;">
                        <div class="block2">
                            <b>Terms & conditions :</b>
                        </div>
                        <div class="block2 bottom-content"><!-- &nbsp;<?php echo $res['terms']; ?><b></b> -->
                        <textarea rows="6" cols="45" style="border: none; font-family: serif; font-size: 15px;" ><?php echo $rr['terms'];?></textarea>

                        </div>
                        <!-- <div class="block2 bottom-content">2:&nbsp;Interest will be recovered @24% p.a plus GST on overdue unpaid bills.</div> -->
                        <div class="block2 bottom-content">&nbsp;</div>
                         <div class="block2 bottom-content">&nbsp;</div>
                          <!-- <div class="block2 bottom-content">&nbsp;</div> -->
                    </div>
                    <div class="div-right">
                        <div class="block2" style="text-align: center;">
                           Certified that the particulars given above are true and correct
                        </div>
                        <div class="block2" style="font-size:18px; text-align: center;"><b>For&nbsp;<?php echo $rr['company_name']; ?></b></div>
                        <div class="block2">&nbsp;</div>
                        <div class="block2">&nbsp;</div>
                        <div class="block2" style="text-align: center;" >Authorised Signature</div>
                    </div>
                </div>
            <!---------------------------------------->
             </div>
        </div>

     </div>
    </div>
  </div> 
