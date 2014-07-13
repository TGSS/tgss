<script src="<?php echo base_url(); ?>js/orders/order-details-display.js" type="text/javascript"></script>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left"> 

            <div class="tgss-product-heading">Order Details</div>

            <ul class="nav nav-pills">
                <li class="active"><a href="#" id="contanct-info" class="pill-element">Order Info</a></li>
                <li><a href="#" id="billing-addresses" class="pill-element">Billing Address</a></li>
                <li><a href="#" id="delivery-addresses" class="pill-element">Delivery Address</a></li>
            </ul>

            <form class="form-horizontal" role="form" action="orders/print_order_detail_report/<?php echo $order_id; ?>" method="post">
                <div id="contanct-info-wrapper">
                    <?php $this->load->view("orders/order_details/order-details-display"); ?>
                </div>
                <div id="billing-addresses-wrapper" style="display:none;">
                    <?php $this->load->view("orders/order_details/billing-addresses-display"); ?>
                </div>
                <div id="delivery-addresses-wrapper" style="display:none;">
                    <?php $this->load->view("orders/order_details/delivery-addresses-display"); ?>
                </div>      

                <button type="submit" class="btn btn-info pull-left" id="btn-search" style="width:49%;">Print</button>                
                <a href="orders/my_order_display" class="btn btn-default pull-right" id="btn-return" style="width:49%;">View My Orders</a>                 
            </form>

            <div class="clearfix" style="margin-bottom:5px;"></div>
            
            <?php if ($paymentData['paymentStatus']!=2 && $paymentData['paymentStatus']!=-1) { ?>
                <form class="form-horizontal" role="form" action="make-payment" method="post"> 
                    <input type="hidden" id="installment_no" name="installment_no" value="<?php echo $paymentData['installment_no']; ?>" />
                    <input type="hidden" id="installmentAmount" name="installmentAmount" value="<?php echo $paymentData['installmentAmount']; ?>" />
                    <input type="hidden" id="order_id" name="order_id" value="<?php echo $order_id; ?>" />
                    <input type="hidden" id="order_ref_no" name="order_ref_no" value="<?php echo $orders['order_ref_no']; ?>" />
                    <input type="hidden" id="total" name="total" value="<?php echo $orders['total']; ?>" />
                    <button type="submit" class="btn btn-primary btn-block" id="btn-make-payment"><?php echo $paymentData['paymentButtonText']; ?></button> 
                </form>
            <?php } ?>
        </div>

        <?php $this->load->view("templates/why-choose-tgss"); ?>

        <br/>
        <div class="table-wrapper clearfix">
            <?php $this->load->view("orders/order-details-table"); ?>
        </div>

        <div id="clr"></div>
    </div>
</div>