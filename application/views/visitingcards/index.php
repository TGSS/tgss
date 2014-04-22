<link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>css/chosen.min.css" rel="stylesheet" type="text/css" />
<style>
    /*** Form Start ***/
.form{
    width:100%;
}

.form .form-item{
    margin-bottom: 15px;
}

.form .form-item label{
    display: inline-block;
    font-weight: bold;
    text-align:right;
    width:150px;
}

.form .form-item .controls{
    width:300px;
}

.form .button-row{
    margin-left:150px;
}
/*** Form End ***/
</style>

<script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-1.9.1.min.js"></script>
<script src="<?php echo base_url(); ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/chosen/chosen.jquery.min.js" type="text/javascript"></script>                                
<script src="<?php echo base_url(); ?>js/chosen/chosen.proto.min.js" type="text/javascript"></script>


<div style="font-size:24pt;font-weight:bold;">Visiting Cards</div>

<?php
$attributes = array('class' => 'form', 'id' => 'visitingcards', 'name' => 'visitingcards');
echo form_open('visitingcards/index', $attributes);
?>
<div class="form-item">
    <label for="title">Card Quality</label>
    <select id="card_quality" name="card_quality" class="controls calculation-item chosen-select">
        <?php foreach ($card_quality as $key => $value) { ?>
            <option value="<?php echo $value['card_quality']; ?>"><?php echo $value['card_quality_display']; ?></option>
        <?php } ?>
    </select>        
</div>

<div class="form-item">
    <label for="title">Color</label>
    <select id="color" name="color" class="controls calculation-item chosen-select">
        <?php foreach ($color as $key => $value) { ?>
            <option value="<?php echo $value['color']; ?>"><?php echo $value['color']; ?></option>
        <?php } ?>
    </select>        
</div>

<div class="form-item">
    <label for="title">Quantity</label>
    <select id="quantity" name="quantity" class="controls calculation-item chosen-select">
        <?php foreach ($quantity as $key => $value) { ?>
            <option value="<?php echo $value['quantity']; ?>"><?php echo $value['quantity']; ?></option>
        <?php } ?>
    </select>        
</div>

<div class="form-item">
    <label for="price">Price/Card</label>
    <span id="price_display"></span>
    <input type="hidden" name="price" id="price" class="controls" value=""/>
</div>

<div class="form-item">
    <label for="price">Total</label>
    <span id="total_display"></span>
    <input type="hidden" name="total" id="total" class="controls" value=""/>
</div>

<div class="form-item button-row">
    <button type="submit" name="submit" id="submit" class="btn">Save</button>
</div>

</form>

<script type="text/javascript">
    $(document).ready(function(){
        $(".chosen-select").chosen({width: "200px"});
        
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