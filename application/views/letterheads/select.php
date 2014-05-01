<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">Letter Head</div>
            
            <div class="tgss-product-title">
                <div class="tgss-product-title-left">Your Product:</div>
                <div class="tgss-product-title-right">Opening Ceremony Cards</div>
            </div>

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'letterheads', 'name' => 'letterheads');
            echo form_open('letterheads/index', $attributes);
            ?>

            <div class="form-group">
                <div class="col-sm-3 control-label">Color :</div>
                <div class="col-sm-9">
                    <select id="color" name="color" class="form-controls calculation-item chosen-select">
                        <?php foreach ($color as $key => $value) { ?>
                            <option value="<?php echo $value['color']; ?>"><?php echo $value['color']; ?></option>
                        <?php } ?>
                    </select>   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Quantity :</div>
                <div class="col-sm-9">
                    <select id="quantity" name="quantity" class="form-controls calculation-item chosen-select">
                        <?php foreach ($quantity as $key => $value) { ?>
                            <option value="<?php echo $value['quantity']; ?>"><?php echo $value['quantity']; ?></option>
                        <?php } ?>
                    </select> 
                </div>
            </div>

            <!-- <div class="form-group">
                <div class="col-sm-3 control-label">Price / Card</div>
                <div class="col-sm-9">
                    <p id="price_display" class="form-control-static">0</p>
                    <input type="hidden" id="price" name="price" class="controls" value=""/>
                </div>
            </div> -->
            
            <div class="tgss-product-bottom">
                <div class="tgss-product-price">
                    <div class="form-group">
                        <div class="col-sm-3 control-label">Total</div>
                        <div class="col-sm-9">
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

            <?php echo form_close(); ?>
        </div>

        <?php $this->load->view("templates/why-choose-tgss"); ?>
    </div>
</div>



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
            url: "<?php echo base_url(); ?>index.php/letterheads/get_total_price/" + card_quality + "/" + color + "/"  + quantity,
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