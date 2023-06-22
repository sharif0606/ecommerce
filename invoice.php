<?php
    $protocol = isset($_SERVER['HTTPS']) ? 'https' : 'http';
    $base_url="$protocol://".$_SERVER['SERVER_NAME']."/".explode('/',$_SERVER['SCRIPT_NAME'])[1]."/";
    require_once('class/crud.php');
    $mysqli=new crud;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fabcart</title>  
    <!-- <link rel="stylesheet" href="style.css">  -->
    <style>
        h1,h2,h3,h4,h5,h6{
                margin: 0;
                padding: 0;
            }
            span{
                color: #dee2e6;
            }
            p{
                margin: 0;
                padding: 0;
            }
            .container{
                width: 80%;
                margin-right: auto;
                margin-left: auto;
            }
            .brand-section{
            background-color: #ec494f;
            padding: 10px 40px;
            }
            .logo{
                width: 50%;
            }

            .row{
                display: flex;
                flex-wrap: wrap;
            }
            .col-6{
                width: 50%;
                flex: 0 0 auto;
            }
           
            .text-white{
                color: #fff;
            }
            .company-details{
                float: right;
                text-align: right;
            }
            .body-section{
                padding: 16px;
                
            }
            .heading{
                font-size: 20px;
                margin-bottom: 08px;
                color:  #ec494f;
            }
            
            .sub-heading{
                color: #262626;
                margin-bottom: 05px;
            }
            table{
                background-color: #fff;
                width: 100%;
                border-collapse: collapse;
            }
            table thead tr{
                border: 1px solid #111;
                background-color: #f2f2f2;
            }
            table td {
                vertical-align: middle !important;
            }
            table th, table td {
                padding-top: 08px;
                padding-bottom: 08px;
            }
            .table-bordered{
                box-shadow: 0px 0px 5px 0.5px gray;
            }

            .text-right{
                text-align: end;
            }
            
            .float-right{
                float: right;
            }

            th{
                color: #5f5c5c;
            }

            .td{
                color:  #5f5c5c;
                text-align: right;
            }

            button {
                background-color:  #ec494f; /* Green */
                border: none;
                color: white;
                padding: 7px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                border-radius: 10px;
            }
 
    </style>


</head> 
    <body>
        <fieldset style="width: 60%; margin: auto;"> 
            <div class="container- fluid">
                <div class="brand-section">
                    <div class="row">
                        <div class="col-6">
                            <h1 class="text-white">AZEEMAH</h1>
                        </div>
                        <div class="col-6">
                            <div class="company-details">
                                <span >2no. gate Chattagram,</span><br>
                                <span >Phone: 01856 876535</span><br>
                                <span >"Your best Choice"</span>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                  $id=$_GET['id'];
                  $data=$mysqli->common_select_query("SELECT customers.first_name,customers.last_name,
                  customers.email,customers.phone,customers.address as c_address,shipping_city.city_name, orders.* FROM `orders`
                  join shipping_city on shipping_city.id=orders.city
                  join customers on customers.id=orders.customer_id
                  WHERE orders.id=$id");
                 
                if(!$data['error']){
                    $d=$data['data'][0];
                    $items=$mysqli->common_select_query("SELECT product_tbl.name,order_items.*  
                                                        FROM `order_items`
                                                        join product_tbl on product_tbl.id=order_items.product_id
                                                        WHERE `order_id`=$id");
                    if(!$items['error']){
                        $item=$items['data'];
                    }
                }else{
                    echo "<h2 class='text-danger text-center'>This url is not correct</h2>";
                  }
                ?>
                <div class="body-section">
                    <div class="row">
                        <div class="col-6">
                            <h2 class="heading">PAYMENT DETAILS</h2>
                            <p class="sub-heading">Bill Amount:  <?= $d->grand_total ?></p>
                            <p class="sub-heading">Bill Date:    <?= date("d,M Y",strtotime($d->order_date)) ?></p>
                            <p class="sub-heading">Payment Status: <?= $d->status ?> </p>
                            <p class="sub-heading">Delivery Date: <?= $d->delivery_date? date("d,M Y",strtotime($d->delivery_date)):"" ?>  </p>
                        </div>
                        <div class="col-6">
                            <h2 class="heading">CLIENT INFORMATION</h2>
                            <p class="sub-heading">Full Name: <?= $d->first_name ?> <?= $d->last_name ?></p>
                            <p class="sub-heading">Address: <?= $d->c_address ?> </p>
                            <p class="sub-heading">Phone Number:  <?= $d->phone ?> </p>
                            <p class="sub-heading">Email:  <?= $d->email ?></p>
                            <h2 class="heading">Shipping INFORMATION</h2>
                            <p class="sub-heading">City: <?= $d->city_name ?></p>
                            <p class="sub-heading">Address: <?= $d->address ?> </p>
                        </div>
                    </div>
                </div>
                <hr>

                <div class="body-section">
                    <h3 class="heading">Ordered Items</h3>
                    <br>
                    <table  border="1px  ">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Amount</th>
                            </tr>
                            
                        </thead>
                        <tbody>
                        <?php
                            if(isset($item)){
                                foreach($item as $it){
                        ?>
                            <tr>
                                <td><?= $it->name ?></td>
                                <td style="text-align:right"><?= $it->price ?></td>
                                <td style="text-align:right"><?= $it->quantity ?></td>
                                <td style="text-align:right"><?= $it->price*$it->quantity ?></td>
                            </tr>
                        <?php } } ?>
                            <tr>
                                <td class="td" colspan="3"  ><b>Sub Total:</b></td>
                                <td> <?= $d->sub_total ?></td>
                            </tr>
                            <tr>
                                <td class="td" colspan="3"  ><b>Shipping Cost:</b></td>
                                <td> <?= $d->shipping ?></td>
                            </tr>
                            <tr>
                                <td class="td" colspan="3"  ><b> Discount:</b></td>
                                <td> <?= $d->discount ?></td>
                            </tr>
                            <tr>
                                <td class="td" colspan="3"  ><b> Total:</b></td>
                                <td> <?= $d->grand_total ?></td>
                            </tr>
                        </tbody>
                    </table> 
                
                </div> 
            
            </div>
             
            <div style="width:100%; min-height:100px; border:1px solid #aaa;">
                Note: <?= $d->message ?>
            </div>
               <hr>
                <button onclick="window.print()">
                    Print Invoice
                </button>
            <div>     
                
                <table>
                    <tr>
                         <td style="text-align: right; text-decoration: overline; ">
                                Singniture
                        </td>
                    </tr>
                </table>
            </div> 
                    <hr>    
            <div>
                    <h2 style="color: rgb(220, 107, 131);text-align: center; ">
                        "Thank You"
                    </h2>
            </div>
            
        </fieldset>      

        </body>
    </html>