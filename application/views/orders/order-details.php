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
                <button type="submit" class="btn btn-info btn-block" id="btn-search">Print</button>  
            </form>
        </div>

        <?php $this->load->view("templates/why-choose-tgss"); ?>

        <br/>
        <div class="table-wrapper clearfix">
            <?php $this->load->view("orders/order-details-table"); ?>
        </div>

        <div id="clr"></div>
    </div>
</div>