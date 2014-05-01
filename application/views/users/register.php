<script type="text/javascript" src="<?php echo base_url(); ?>js/users/register.js"></script>

<style>
    .body_wrapper_body_wrapper_top_left {
        float: none;
        width: 100%;
    }    
</style>

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">User Register</div>

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'register', 'name' => 'register');
            echo form_open('users/register', $attributes);
            ?>

            <div class="form-group">
                <div class="col-sm-3 control-label">Email:</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="username" name="username" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">First Name :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="firstname" name="firstname" value="">   
                </div>
            </div>          

            <div class="form-group">
                <div class="col-sm-3 control-label">Last Name :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="lastname" name="lastname" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Password :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="password" id="password" name="password" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Confirm-Password :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="password" id="confirm_password" name="confirm_password" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Address Line 1:</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="address1" name="address1" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Address Line 2:</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="address2" name="address2" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">City</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="city" name="city" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Country</div>
                <div class="col-sm-4">
                    <select id="country" name="country" class="form-controls calculation-item chosen-select">
                    <?php foreach ($countries as $key => $value) { ?>
                            <option value="<?php echo $value['country']; ?>"><?php echo $value['country']; ?></option>
                    <?php } ?>
                    </select>    
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Post Code:</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="postcode" name="postcode" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Phone No :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="phoneno" name="phoneno" value="">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Mobile No :</div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="mobileno" name="mobileno" value="">   
                </div>
            </div>

            <div class="tgss-product-bottom">
                <div class="">    
                    <div class="form-group last-form-row">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" id="submit" name="submit" class="btn btn-primary">Register</button>
                            <button type="reset" id="submit" name="reset" class="btn btn-default">Reset</button>
                        </div>
                    </div>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>        
    </div>
</div>