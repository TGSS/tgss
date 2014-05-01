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
            <div class="tgss-product-heading">User Login</div>

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'login', 'name' => 'login');
            echo form_open('users', $attributes);
            ?>

            <div class="form-group">
                <div class="col-sm-3 control-label">Email:</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="username" name="username" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Password :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="password" id="password" name="password" value="">   
                </div>
            </div>

            <div class="tgss-product-bottom">
                <div class="">    
                    <div class="form-group last-form-row">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" id="submit" name="submit" class="btn btn-primary">Login</button>
                            <button type="reset" id="submit" name="reset" class="btn btn-default">Reset</button>
                        </div>
                    </div>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>        
    </div>
</div>