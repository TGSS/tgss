<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">User Login</div>

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'visitingcards', 'name' => 'visitingcards');
            echo form_open('visitingcards/index', $attributes);
            ?>

            <div class="form-group">
                <div class="col-sm-3 control-label">Email:</div>
                <div class="col-sm-9">
                    <input class="form-control" type="email" name="surname" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Password:</div>
                <div class="col-sm-9">
                    <input class="form-control" type="password" name="surname" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">
                </div>
                <div class="col-sm-9">
                    <input type="submit" name="" value="Login">
                    <input type="reset" name="" value="Reset">
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>

        <div class="body_wrapper_body_wrapper_top_right">
            <div class="body_wrapper_body_wrapper_top_right_top">Why Choose tgssprinting.com ?</div>
                <div class="body_wrapper_body_wrapper_top_right_body">
                    <div class="body_wrapper_body_wrapper_top_right_body_wrapper">
                        <div class="body_wrapper_body_wrapper_top_right_body_wrapper_left">
                            <img src="<?php echo base_url(); ?>images/ico_quality.png" style="padding:20px 0 0 20px;" />
                        </div>
                        <div class="body_wrapper_body_wrapper_top_right_body_wrapper_right">
                            <p style="font-family: Myriad Pro; font-size: 17px; color: #313131;">Fast & High Quality Production</p>
                            <p style="margin-top: -14px; font-family: Myriad Pro; font-size: 13px; color: #616060;">We love to deliver high-quality jobs and our streamlined automated production keeps us fast and efficient!</p>
                        </div>
                    </div>
                    <div class="body_wrapper_body_wrapper_top_right_body_wrapper">
                        <div class="body_wrapper_body_wrapper_top_right_body_wrapper_left">
                            <img src="<?php echo base_url(); ?>images/ico_free_delivery.png" style="padding:20px 0 0 20px;" />
                        </div>
                        <div class="body_wrapper_body_wrapper_top_right_body_wrapper_right">
                            <p style="font-family: Myriad Pro; font-size: 17px; color: #313131;">Right-Time Delivery Guarantee</p>
                            <p style="margin-top: -14px; font-family: Myriad Pro; font-size: 13px; color: #616060;">Meeting your deadlines is our priority. If we're late on your approved project, your shipping is free.</p>
                        </div>
                    </div>
                    <div class="body_wrapper_body_wrapper_top_right_body_wrapper">
                        <div class="body_wrapper_body_wrapper_top_right_body_wrapper_left">
                            <img src="<?php echo base_url(); ?>images/ico_24_7.png" style="padding:20px 0 0 20px;" />
                        </div>
                        <div class="body_wrapper_body_wrapper_top_right_body_wrapper_right">
                            <p style="font-family: Myriad Pro; font-size: 17px; color: #313131;">Open 24/7</p>
                            <p style="margin-top: -14px; font-family: Myriad Pro; font-size: 13px; color: #616060;">We love to deliver high-quality jobs and our streamlined automated production keeps us fast and efficient!</p>
                        </div>
                    </div>
                    <div id="clr"></div>
                </div>
                <div class="body_wrapper_body_wrapper_top_right_shadow"></div>
        </div>
        <div id="clr"></div>
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