<style type="text/css">
    #card_type_chosen .chosen-results {
        height: 120px !important;
        overflow-y: auto;
    }
    
    #quantity_chosen .chosen-results {
        height: 100px !important;
        overflow-y: auto;
    }
</style>

<?php
$attributes = array('class' => 'form-horizontal', 'id' => 'vouchers', 'name' => 'vouchers');
echo form_open('cards/vouchers', $attributes);
?>

<div class="form-group">
    <div class="col-sm-4 control-label">Card :</div>
    <div class="col-sm-8">
        <select id="postercalender_type_id" name="postercalender_type_id" class="form-controls calculation-item chosen-select">
            <?php foreach ($postercalender_type as $key => $value) { ?>
                <option value="<?php echo $value['type_id']; ?>"><?php echo $value['card_type_display']; ?></option>
            <?php } ?>
        </select>    
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Printing :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="printing"></p>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Size :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="size"></p>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Frame :</div>
    <div class="col-sm-8">
        <select id="frame" name="frame" class="form-controls calculation-item chosen-select">            
        </select>    
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Frame Price :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="frame_price"></p>
    </div>
</div>

<div class="form-group calculation-item-container">
    <div class="col-sm-4 control-label">Card Type :</div>
    <div class="col-sm-8">
        <select id="card_type" name="card_type" class="form-controls calculation-item chosen-select">       
            <option value="WF_70">W/F (70)</option>
            <option value="AP_85">A/P (85)</option>
            <option value="AP_100">A/P (100)</option>
            <option value="AP_128">A/P (128)</option>
            <option value="AP_148">A/P (148)</option>
            <option value="AC_210">A/C (210)</option>
            <option value="AC_250">A/C (250)</option>
            <option value="AC_300">A/C (300)</option>
        </select>    
    </div>
</div>

<div class="form-group calculation-item-container">
    <div class="col-sm-4 control-label">No of Column :</div>
    <div class="col-sm-8">
        <select id="no_of_column" name="no_of_column" class="form-controls calculation-item chosen-select">       
            <option value="1">1 Col</option>
            <option value="4">4 Col</option>
        </select>    
    </div>
</div>

<div class="form-group calculation-item-container">
    <div class="col-sm-4 control-label">Quantity :</div>
    <div class="col-sm-8">
        <select id="quantity" name="quantity" class="form-controls calculation-item chosen-select">       
            <option value="500">500</option>
            <option value="1000">1000</option>
            <option value="1500">1500</option>
            <option value="2000">2000</option>
            <option value="2500">2500</option>
            <option value="3000">3000</option>
            <option value="5000">5000</option>
            <option value="10000">10000</option>
        </select>    
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Price/Card :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="price_display"></p>
    </div>
</div>

<input type="hidden" id="card_id" name="card_id" class="controls" value=""/>
<input type="hidden" id="card_type_hidden" name="card_type_hidden" class="controls" value=""/>
<input type="hidden" id="quantity_hidden" name="quantity_hidden" class="controls" value=""/>
<input type="hidden" id="price_hidden" name="price_hidden" class="controls" value=""/>
<input type="hidden" id="total_hidden" name="total_hidden" class="controls" value=""/>

<div class="tgss-product-bottom">
    <div class="tgss-product-price">
        <div class="form-group">
            <div class="col-sm-4 control-label">Total</div>
            <div class="col-sm-8">
                <p id="total_display" class="form-control-static">0</p>
                <input type="hidden" id="total" name="total" class="controls" value=""/>
            </div>
        </div>
    </div>

    <div class="tgss-product-next">    
        <div class="form-group last-form-row">
            <div class="col-sm-offset-3 col-sm-10">
                <button type="submit" id="submit" name="submit" class="btn btn-primary hidden"></button>
            </div>
        </div>
    </div>
</div>

</form>