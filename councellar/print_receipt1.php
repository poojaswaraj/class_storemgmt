<?php
    if(isset($_GET["id"]))
    {
          $id = $_GET["id"];

        $query = mysqli_query($connection,"SELECT * FROM receipt WHERE id='$id'")or die(mysqli_error($connection));
            $res=mysqli_fetch_array($query);
            $user_id=$data['user_id'];
            $total_price=$res['paid_amt'];
            $aa = mysqli_query($connection,"SELECT * FROM company WHERE user_id='$user_id'")or die(mysqli_error($connection));
                   $rr=mysqli_fetch_array($aa);
                      


    }
 
?> <?php
                    
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

<div id="divToPrint1" style="display:none;">
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
                width: 95%;
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
    </head>
    <body>
        <div class="container">
            <div class="wrapper">
          
            
            <!---------------------------------------->
                <div class="div-left">
                    <img src="<?php echo $rr['logo'];?>" alt="your logo" class="logo">
                  
                </div> 
                <h3  class="title" style="text-align: center;"><?php echo $rr['company_name'];?></h3>
                 <div class="div-right" style="float: right;">
                <b>Email:</b><?php echo $rr['company_email'];?><br>
                <b> Website: </b><?php echo $rr['company_url']; ?>
                </div>
                <div class="div-title">
                   
                </div>
                <div class="div-left1">
                    <div class="header" >RECEIPT</div>
                   
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
         
                <div class="outter-block">
                    <div class="div-left" style="width:49%;">
                        <div class="block2">
                           <b> Receipt No.:</b> <?php echo $res['number']; ?>
                        </div>
                       
                    </div>
                    <div class="div-right border-left">
                        <div class="block2">
                          <b> Date : </b><?php echo date('d-M-Y');?>
                        </div>
                       
                    </div>
                </div>
                            
                <div class="outter-block">
                    <div class="div-left" style="width:49%;">
                        <div class="block2">
                          <b> Student Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <?php echo $res['sname']; ?>
                        </div>
                        <div class="block2"><b>Course Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <?php echo $res['course_name']; ?></div>
                        <div class="block2">
                            <div class="div-left" style="width:49%;"><b>Paid Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <?php echo $res['paid_amt']; ?></div>
                            <div class="div-right">
                                 
                            </div>
                        </div>
                        <div class="block2"><b>Rupees in word:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><?php echo $result; ?></div>
                        <div class="block2"><b>Mode of Payment: &nbsp;&nbsp;</b><?php echo $res['payment_mode']; ?></div>
                        <div class="block2"><b>Book Issue:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <?php echo $res['book_issue']; ?></div>
                        <div class="block2"><b> Contact Person:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><?php echo $res['c_name']; ?></div>
                      
                      
                    </div>
                    <div class="div-right border-left">
                        <div class="block2">
                          <b> Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><?php echo $res['s_mobile']; ?>
                        </div>
                        <div class="block2">
                            <div class="div-left" style="width:49%;"><b>Remaining Amount:&nbsp;&nbsp;</b> <?php echo $res['remaing_amt']; ?></div>
                            <div class="div-right">
                                                             </div>
                        </div>
                     
                     
                      
                <div class="block2"><b>Fees Due Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><?php echo $res['fees_due_date']; ?></b></div>
                         
                  

                        <div class="block2"><b>Book Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><?php echo $res['book_code']; ?></b></div>
                    
                        <div class="block2"><b>Contact no:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><?php echo $res['c_mobile']; ?></div>
                        <div class="block2"><b></b></div>
                        <div class="block2"><b></b></div>
                        <div class="block2"><b></b></div>
                        <div class="block2"> <b></b></div>
                           <div class="block2"> <b></b></div>
                              <div class="block2"> <b></b></div>
                            

                    </div>
                </div>
                <div class="outter-block">
              
                </div>
               
        
            
                <div class="outter-block">
                    <div class="div-left" style="width:49%; border-right: 1px solid #bbbbbb;">
                        <div class="block2">
                            <b>Terms & conditions :</b>
                        </div>
                        <div class="block2 bottom-content">
                          
                               <!--  <li><?php echo $rr['terms'];?></li> -->
                               <textarea rows="6" cols="45" style="border: none; font-family: serif; font-size: 15px;" ><?php echo $rr['terms'];?></textarea>
                               
                        
                        </div>
                         <div class="block2"></div>
                            <div class="block2"></div>
                    </div>
                    <div class="div-right">
                       <!--  <div class="block2" style="text-align: center;">
                           Certified that the particulars given above are true and correct
                        </div> -->
                        <div class="squre"><b>Revenue
                        Stamp</b></div>
                        <div class="block2" style="font-size:18px; text-align: center;"><b>For <?php echo $rr['company_name'];?></b></div>
                        
                      
                    </div>
                </div>
            <!---------------------------------------->
             </div>
        </div>
    ------------------------------------------------------------------------------------------------------------------------
               
        
     </div>
    </div>
  </div> 