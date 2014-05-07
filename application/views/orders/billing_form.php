<div class="body_wrapper_body_wrapper_top_left">
    <div class="tgss-product-heading">Order</div> 
    
    <div class="form-group">
        <div class="col-sm-3 control-label">First Name :</div>
        <div class="col-sm-7">
            <input class="form-control" type="text" id="billing_firstname" name="billing_firstname" value="">   
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">Last Name :</div>
        <div class="col-sm-7">
            <input class="form-control" type="text" id="billing_lastname" name="billing_lastname" value="">   
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">Email :</div>
        <div class="col-sm-7">
            <input class="form-control" type="text" id="billing_email" name="billing_email" value="">   
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">Address Line 1:</div>
        <div class="col-sm-8">
            <textarea class="form-control" id="billing_address1" name="billing_address1" rows="3"></textarea>        
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">Address Line 2:</div>
        <div class="col-sm-8">
            <textarea class="form-control" id="billing_address2" name="billing_address2" rows="3"></textarea>        
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">City :</div>
        <div class="col-sm-7">
            <input class="form-control" type="text" id="billing_city" name="billing_city" value="">   
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">Country :</div>
        <div class="col-sm-7">
            <select id="billing_country" name="billing_country" class="form-controls country-dropdown chosen-select">
                <?php foreach ($countries as $key => $value) { ?>
                    <option value="<?php echo $value['country']; ?>"><?php echo $value['country']; ?></option>
                <?php } ?>
            </select>    
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-3 control-label">Post Code:</div>
        <div class="col-sm-7">
            <input class="form-control" type="text" id="billing_postcode" name="billing_postcode" value="">   
        </div>
    </div>
    
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