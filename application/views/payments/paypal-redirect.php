<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><b>Order Summary</b></div>

    <table id="payment_summary" class="table table-striped">
        <tbody>
            <tr>
                <td class="label-column">Order ID</td>         
                <td><?php echo $userPaymentInfo['order_id']; ?></td>         
            </tr>            
            <tr>
                <td class="label-column">Payment ID</td>         
                <td><?php echo $userPaymentInfo['paymentID']; ?></td>         
            </tr>            

            <tr>
                <td class="label-column">Total (Myanmar Kyats)</td>         
                <td><?php echo $userPaymentInfo['totalMyanmar']; ?></td>         
            </tr>
            <tr>
                <td class="label-column">Total (USD)</td>         
                <td><?php echo $userPaymentInfo['total']; ?></td>         
            </tr>
        </tbody>
    </table>
</div>
<a href="<?php echo $url; ?>" class="btn btn-success pull-right">Click to proceed with Paypal</a>
<br/>
<style>
    .body_wrapper_body{
        padding:20px;
    }
    
    .panel-heading{
        text-align:center;
    }
    
    #payment_summary td.label-column{
        text-align: right;
        font-weight: bold;
    }
    
    #payment_summary td{
        font-size:10pt;
    }
</style>