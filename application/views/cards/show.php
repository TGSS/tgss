<script type="text/javascript" src="<?php echo base_url(); ?>js/users/login.js"></script>

<style>
    .body_wrapper_body_wrapper_top_left {
        float: none;
        width: 100%;
    }    
</style>
<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">Cards</div>
			<?php
            	echo "card_id is " . $card_id;

                $cards = $this->session->userdata('card');
                var_dump($cards);
            ?>
        </div>        
    </div>
</div>