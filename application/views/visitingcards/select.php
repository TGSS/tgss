<link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>css/chosen.min.css" rel="stylesheet" type="text/css" />

<script src="<?php echo base_url(); ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/chosen/chosen.jquery.min.js" type="text/javascript"></script>                                
<script src="<?php echo base_url(); ?>js/chosen/chosen.proto.min.js" type="text/javascript"></script>

<div class="tgss-page-heading">Visiting Cards</div>

<?php
$attributes = array('class' => 'form-horizontal', 'id' => 'visitingcards', 'name' => 'visitingcards');
echo form_open('visitingcards/index', $attributes);
?>

<div class="form-group">
    <div class="col-sm-3 control-label">Card Quality</div>
    <div class="col-sm-9">
        <select id="card_quality" name="card_quality" class="form-controls calculation-item chosen-select">
            <?php foreach ($card_quality as $key => $value) { ?>
                <option value="<?php echo $value['card_quality']; ?>"><?php echo $value['card_quality_display']; ?></option>
            <?php } ?>
        </select>    
    </div>
</div>

<div class="form-group">
    <div class="col-sm-3 control-label">Color</div>
    <div class="col-sm-9">
        <select id="color" name="color" class="form-controls calculation-item chosen-select">
            <?php foreach ($color as $key => $value) { ?>
                <option value="<?php echo $value['color']; ?>"><?php echo $value['color']; ?></option>
            <?php } ?>
        </select>   
    </div>
</div>

<div class="form-group">
    <div class="col-sm-3 control-label">Quantity</div>
    <div class="col-sm-9">
        <select id="quantity" name="quantity" class="form-controls calculation-item chosen-select">
            <?php foreach ($quantity as $key => $value) { ?>
                <option value="<?php echo $value['quantity']; ?>"><?php echo $value['quantity']; ?></option>
            <?php } ?>
        </select> 
    </div>
</div>

<div class="form-group">
    <div class="col-sm-3 control-label">Price / Card</div>
    <div class="col-sm-9">
        <p id="price_display" class="form-control-static">0</p>
        <input type="hidden" id="price" name="price" class="controls" value=""/>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-3 control-label">Total</div>
    <div class="col-sm-9">
        <p id="total_display" class="form-control-static">0</p>
        <input type="hidden" id="total" name="total" class="controls" value=""/>
    </div>
</div>

<div class="form-group last-form-row">
    <div class="col-sm-offset-3 col-sm-10">
        <button type="submit" id="submit" name="submit" class="btn btn-primary">Save</button>
    </div>
</div>

</form>

<script type="text/javascript">
    $(document).ready(function(){
        $(".chosen-select").chosen({width: "200px"});
        
        get_total_price();
        
        $('.calculation-item').change(function(){
            get_total_price();
        });
    }); 

    function get_total_price(){
        var card_quality=$('#card_quality').val();
        var color=$('#color').val();
        var quantity=$('#quantity').val();
        
        $.ajax({
            url: "<?php echo base_url(); ?>index.php/visitingcards/get_total_price/" + card_quality + "/" + color + "/"  + quantity,
            type: "POST",
            dataType: "json",
            cache:false,
            success: function(result){ 
                $('#price_display').html(result.price);
                $('#total_display').html(result.total);
            },
            error: function(error){
                console.log(error);
            }
        });
    }
</script>