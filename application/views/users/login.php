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

        <?php $this->load->view("templates/why-choose-tgss"); ?>
        
    </div>
</div>