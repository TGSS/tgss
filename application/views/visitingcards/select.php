<script type="text/javascript" src="<?php echo base_url(); ?>js/visitingcards/visitingcard.js"></script>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left" style="540px;">
            <div class="tgss-product-heading">Visiting Cards</div>
            
            <div class="tgss-product-title">
                <div class="tgss-product-title-left">Your Product:</div>
                <div class="tgss-product-title-right">Opening Ceremony Cards</div>
            </div>

            <?php $this->load->view("visitingcards/visitingcard-form"); ?>
        </div>

        <?php //$this->load->view("templates/why-choose-tgss"); ?>
        <div class="body_wrapper_body_wrapper_top_right" style="background: none; margin-left: -10px;">
            <?php $this->load->view("samples/gallery.php"); ?>
            <div id="clr"></div>
        </div>
        <div id="clr"></div>
    </div>
</div>