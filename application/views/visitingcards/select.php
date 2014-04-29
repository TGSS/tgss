<script type="text/javascript" src="<?php echo base_url(); ?>js/visitingcards/visitingcard.js"></script>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">Visiting Cards</div>
            
            <div class="tgss-product-title">
                <div class="tgss-product-title-left">Your Product:</div>
                <div class="tgss-product-title-right">Opening Ceremony Cards</div>
            </div>

            <?php $this->load->view("visitingcards/visitingcard-form"); ?>
        </div>

        <?php $this->load->view("templates/top-right"); ?>
        
        <?php $this->load->view("visitingcards/table"); ?>
    </div>
</div>