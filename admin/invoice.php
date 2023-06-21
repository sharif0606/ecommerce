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
    text-align: center;
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
.w-20{
    width: 20%;
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

<
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

                <div class="body-section">
                    <div class="row">
                        <div class="col-6">
                            <h2 class="heading">PAYMENT DETAILS</h2>
                            <p class="sub-heading">Bill Amount </p>
                            <p class="sub-heading">Bill Date:  </p>
                            <p class="sub-heading">Payment Status:  </p>
                            <p class="sub-heading">Delivery Date:   </p>

                            

                        </div>
            
 
                        <div class="col-6">
                            <h2 class="heading">CLIENT INFORMATION</h2>
                            <p class="sub-heading">Full Name:  </p>
                            <p class="sub-heading">Address: </p>
                            <p class="sub-heading">Phone Number:  </p>
                            <p class="sub-heading">City: </p>
                            <p class="sub-heading">Email: </p>
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
                                <th>Order Number</th>
                                <th class="w-20">Sub Amount</th>
                                <th class="w-20">Discount</th>
                                <th class="w-20">Shipping Cost</th>
                                <th class="w-20">Sub Total</th>
                            </tr>
                            
                        </thead>
                        <tbody>
                            <tr>
                                <td>01</td>
                                <td>10</td>
                                <td>1</td>
                                <td>10</td>
                                <td>10</td>
                            </tr>
                            <tr>
                                <td class="td" colspan="4"  ><b>Total Price:</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="td" colspan="4"  ><b>Shipping Cost:</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="td" colspan="4"  ><b> Discount:</b></td>
                                <td></td>
                            </tr>
                             
                        </tbody>
                    </table> 
                
                </div> 
            
            </div>
             
               <br><br><br>
               <hr>
                        <button onclick="window.print()">
                            Print Invoice
                        </button>
                             &nbsp;&nbsp;&nbsp;
                        <button>
                            Download In pdf
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