<style type="text/css">
    #card_type_chosen .chosen-results {
        height: 120px !important;
        overflow-y: auto;
    }
</style>

<?php
$attributes = array('class' => 'form-horizontal', 'id' => 'vouchers', 'name' => 'vouchers');
echo form_open('cards/vouchers', $attributes);
?>

<div class="form-group">
    <div class="col-sm-4 control-label">Card Type :</div>
    <div class="col-sm-8">
        <select id="voucher_type_id" name="voucher_type_id" class="form-controls chosen-select">
            <?php foreach ($voucher_type as $key => $value) { ?>
                <option value="<?php echo $value['type_id']; ?>"><?php echo $value['card_type_display']; ?></option>
            <?php } ?>
        </select>    
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Size :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="size"></p>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Quantity :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="type_quantity"></p>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Printing :</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="printing"></p>
    </div>
</div>

<div class="form-group calculation-item-container">
    <div class="col-sm-4 control-label">Card Type :</div>
    <div class="col-sm-8">
        <select id="card_type" name="card_type" class="form-controls calculation-item chosen-select">            
        </select>    
    </div>
</div>

<div class="form-group calculation-item-container">
    <div class="col-sm-4 control-label">Quantity :</div>
    <div class="col-sm-8">
        <select id="quantity" name="quantity" class="form-controls calculation-item chosen-select">
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