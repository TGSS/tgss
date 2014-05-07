<script type="text/javascript" src="<?php echo base_url(); ?>js/letterheads/letterhead.js"></script>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">Letter Head</div>
            
            <div class="tgss-product-title">
                <div class="tgss-product-title-left">Your Product:</div>
                <div class="tgss-product-title-right">Opening Ceremony Cards</div>
            </div>

            <?php $this->load->view("letterheads/letterhead-form"); ?>
        </div>

        <?php $this->load->view("templates/why-choose-tgss"); ?>
    </div>
</div>



<!--script type="text/javascript">
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
                if (result.success==true){
                    $('#price_display').html(result.data.price);
                    $('#total_display').html(result.data.total);
                }else{
                    $('#price_display').html("");
                    $('#total_display').html("");
                }
                
            },
            error: function(error){
                console.log(error);
            }
        });
    }
</script-->