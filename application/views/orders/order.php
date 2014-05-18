<script type="text/javascript" src="<?php echo base_url(); ?>js/orders/order.js"></script>

<style>
    .tgss-product-price{        
        margin-left:247px !important;
        margin-top:20px;
        margin-bottom:20px;
    }       

    .body_wrapper_body_wrapper_top_right{
        height:auto !important;
    }
</style>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <?php
        $attributes = array('class' => 'form-horizontal', 'id' => 'order', 'name' => 'order');
        echo form_open('orders/order_submit', $attributes);
        ?>
        <!--        <div class="tgss-product-price">
                    <div class="form-group">
                        <div class="col-sm-3 control-label">Total</div>
                        <div class="col-sm-8">
                            <p id="total_display" class="form-control-static"><?php echo $total; ?></p>
                            <input type="hidden" id="total" name="total" class="controls" value="<?php echo $total; ?>"/>
                        </div>
                    </div>
                </div> -->
        <input type="hidden" id="total" name="total" class="controls" value="<?php echo $total; ?>"/>

        <div class="body_wrapper_body_wrapper_top_left">
            <div id="billing-form-wrapper">
                <?php $this->load->view("orders/billing_form"); ?>
            </div>         
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="different_delivery_address" name="different_delivery_address" unchecked>Different Delivery Address
                </label>
            </div>
            <div id="delivery-form-wrapper" style="display:none;">
                <?php $this->load->view("orders/delivery_form"); ?>
            </div>            
            <div id="clr"></div>

            <div class="tgss-product-bottom">
                <div class="">    
                    <div class="form-group last-form-row">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" id="submit" name="delivery_submit" class="btn btn-primary">Order</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php echo form_close(); ?>

        <div class="body_wrapper_body_wrapper_top_right">   
            <?php $this->load->view("templates/why-choose-tgss"); ?>
        </div>

        <div id="clr"></div>
    </div>
</div>