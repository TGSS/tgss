<!-- <div class="tgss-product-heading">Delivery</div>  -->

<div class="form-group">
    <div class="col-sm-4 control-label">Delivery First Name :</div>
    <div class="col-sm-7">
        <input class="form-control" type="text" id="delivery_firstname" name="delivery_firstname" value="">     
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Delivery Last Name :</div>
    <div class="col-sm-7">
        <input class="form-control" type="text" id="delivery_lastname" name="delivery_lastname" value="">    
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Address Line 1:</div>
    <div class="col-sm-8">
        <textarea class="form-control" id="delivery_address1" name="delivery_address1" rows="3"></textarea>        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Address Line 2:</div>
    <div class="col-sm-8">
        <textarea class="form-control" id="delivery_address2" name="delivery_address2" rows="3"></textarea>        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">City :</div>
    <div class="col-sm-7">
        <input class="form-control" type="text" id="delivery_city" name="delivery_city" value="">   
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Country :</div>
    <div class="col-sm-7">
        <select id="delivery_country" name="delivery_country" class="form-controls country-dropdown chosen-select">
            <?php foreach ($countries as $key => $value) { ?>
                <option value="<?php echo $value['country']; ?>"><?php echo $value['country']; ?></option>
            <?php } ?>
        </select>    
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Post Code:</div>
    <div class="col-sm-7">
        <input class="form-control" type="text" id="delivery_postcode" name="delivery_postcode" value="">   
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Phone No :</div>
    <div class="col-sm-7">
        <input class="form-control" type="text" id="delivery_phoneno" name="delivery_phoneno" value="">   
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Mobile No :</div>
    <div class="col-sm-7">
        <input class="form-control" type="text" id="delivery_mobileno" name="delivery_mobileno" value="">   
    </div>
</div>