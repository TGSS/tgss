<script type="text/javascript" src="<?php echo base_url(); ?>js/orders/order.js"></script>

<style>
    .tgss-product-price{        
        margin-left:247px !important;
        margin-top:20px;
        margin-bottom:20px;
    }

    .body_wrapper_body_wrapper_top_left {
        float: none;
        width: 100%;
    }        
</style>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">Order</div>

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'order', 'name' => 'order');
            echo form_open('orders/order', $attributes);
            ?>

            <div class="tgss-product-price">
                <div class="form-group">
                    <div class="col-sm-3 control-label">Total</div>
                    <div class="col-sm-8">
                        <p id="total_display" class="form-control-static"><?php echo $total; ?></p>
                        <input type="hidden" id="total" name="total" class="controls" value="<?php echo $total; ?>"/>
                    </div>
                </div>
            </div>            

            <div id="clr"></div>
            
            <div class="form-group">
                <div class="col-sm-3 control-label">Address Line 1:</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="address1" name="address1" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Address Line 2:</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="address2" name="address2" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">City :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="city" name="city" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Country :</div>
                <div class="col-sm-4">
                    <select id="country" name="country" class="form-controls calculation-item chosen-select">
                        <?php foreach ($countries as $key => $value) { ?>
                            <option value="<?php echo $value['country']; ?>"><?php echo $value['country']; ?></option>
                        <?php } ?>
                    </select>    
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Post Code:</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="postcode" name="postcode" value="">   
                </div>
            </div>

            <div class="tgss-product-bottom">
                <div class="">    
                    <div class="form-group last-form-row">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" id="submit" name="submit" class="btn btn-primary">Order</button>
                        </div>
                    </div>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>   
        <?php //$this->load->view("templates/why-choose-tgss"); ?>
    </div>
</div>