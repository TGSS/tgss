<?php
$attributes = array('class' => 'form-horizontal', 'id' => 'visitingcards', 'name' => 'visitingcards');
echo form_open('cards/visitingcards', $attributes);
?>

<div class="form-group">
    <div class="col-sm-4 control-label">Card Quality</div>
    <div class="col-sm-8">
        <select id="card_type" name="card_type" class="form-controls calculation-item chosen-select">
            <?php foreach ($card_type as $key => $value) { ?>
                <option value="<?php echo $value['card_type']; ?>"><?php echo $value['card_type_display']; ?></option>
            <?php } ?>
        </select>    
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Color</div>
    <div class="col-sm-8">
        <select id="color" name="color" class="form-controls calculation-item chosen-select">
            <?php foreach ($color as $key => $value) { ?>
                <option value="<?php echo $value['color']; ?>"><?php echo $value['color']; ?></option>
            <?php } ?>
        </select>   
    </div>
</div>

<div class="form-group">
    <div class="col-sm-4 control-label">Quantity</div>
    <div class="col-sm-8">
        <select id="quantity" name="quantity" class="form-controls calculation-item chosen-select">
            <?php foreach ($quantity as $key => $value) { ?>
                <option value="<?php echo $value['quantity']; ?>"><?php echo $value['quantity']; ?></option>
            <?php } ?>
        </select> 
    </div>
</div>

<div class="form-group">
    <label class="col-sm-4 control-label">Price/Card</label>
    <div class="col-sm-8">
        <p class="form-control-static" id="price_display"></p>
    </div>
</div>

<input type="hidden" id="price" name="price" class="controls" value=""/>
<input type="hidden" id="total_hidden" name="total_hidden" class="controls" value=""/>
<input type="hidden" id="card_id" name="card_id" class="controls" value=""/>
<input type="hidden" id="quantity_hidden" name="quantity_hidden" class="controls" value=""/>
<input type="hidden" id="card_type_hidden" name="card_type_hidden" class="controls" value=""/>
<input type="hidden" id="color_hidden" name="color_hidden" class="controls" value=""/>

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
                <button type="submit" id="submit" name="submit" class="btn btn-primary"></button>
            </div>
        </div>
    </div>
</div>

</form>