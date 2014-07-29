<script type="text/javascript" src="<?php echo base_url(); ?>js/tablecalenders/tablecalender.js"></script>


<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="item_left">
            <?php $this->load->view("tablecalenders/tablecalender-gallery.php"); ?>
            <div id="clr"></div>
        </div>
        <div class="item_right">
            <div class="tgss-product-heading">Table Calender</div>
            
<!--            <div class="tgss-product-title">
                <div class="tgss-product-title-left">Your Product:</div>
                <div class="tgss-product-title-right">Opening Ceremony Cards</div>
            </div>-->
            <?php $this->load->view("tablecalenders/tablecalender-form"); ?>
        </div>
        <div id="clr"></div>
    </div>
</div>