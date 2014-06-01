<script type="text/javascript" src="<?php echo base_url(); ?>js/users/register.js"></script>

<style>
    .body_wrapper_body_wrapper_top_left {
        float: none;
        width: 100%;
    }    
</style>

<?php
$form_title = "";

if ($form_mode == "EDIT") {
    $form_title = "Account";
} else {
    $form_title = "Register";
}
?>
<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading"><?php echo $form_title; ?></div>

            <?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'register', 'name' => 'register');
            
            if ($form_mode=="NEW"){
                echo form_open('users/register', $attributes);
            }else{
                echo form_open('users/edit_profile', $attributes);
            }
            ?>

            <input type="hidden" id="form_mode" name="form_mode" value="<?php echo $form_mode; ?>" />
            <input type="hidden" id="user_id" name="user_id" value="<?php echo $user_data['user_id']; ?>" />
            
            <div class="form-group">
                <div class="col-sm-3 control-label">Email:</div>
                <div class="col-sm-8">
                    <?php if ($form_mode=="EDIT"){ ?>
                    <p class="form-control-static"><?php echo $user_data['username']; ?></p>
                    <input type="hidden" id="username" name="username" value="<?php echo $user_data['username']; ?>" />
                    <?php }else{ ?>
                    <input class="form-control" type="text" id="username" name="username" value="<?php echo $user_data['username']; ?>">   
                    <?php } ?>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">First Name :</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="firstname" name="firstname" value="<?php echo $user_data['firstname']; ?>">   
                </div>
            </div>          

            <div class="form-group">
                <div class="col-sm-3 control-label">Last Name :</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="lastname" name="lastname" value="<?php echo $user_data['lastname']; ?>">   
                </div>
            </div>

            <?php if ($form_mode != "EDIT") { ?>
                <div class="form-group">
                    <div class="col-sm-3 control-label">Password :</div>
                    <div class="col-sm-8">
                        <input class="form-control" type="password" id="password" name="password" value="">   
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-3 control-label">Confirm-Password :</div>
                    <div class="col-sm-8">
                        <input class="form-control" type="password" id="confirm_password" name="confirm_password" value="">   
                    </div>
                </div>
            <?php } ?>
            <div class="form-group">
                <div class="col-sm-3 control-label">Address Line 1:</div>
                <div class="col-sm-8">
                    <textarea class="form-control" id="address1" name="address1" rows="3"><?php echo $user_data['address1']; ?></textarea>        
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Address Line 2:</div>
                <div class="col-sm-8">
                    <textarea class="form-control" id="address2" name="address2" rows="3"><?php echo $user_data['address2']; ?></textarea>        
                </div>
            </div>                        

            <div class="form-group">
                <div class="col-sm-3 control-label">City :</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="city" name="city" value="<?php echo $user_data['city']; ?>">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Country :</div>
                <div class="col-sm-8">
                    <select id="country" name="country" class="form-controls chosen-select">
                        <?php foreach ($countries as $key => $value) { ?>
                            <?php if ($user_data['country'] == $value['country']) { ?>
                                <option value="<?php echo $value['country']; ?>" selected="true"><?php echo $value['country']; ?></option>
                            <?php } else { ?>
                                <option value="<?php echo $value['country']; ?>"><?php echo $value['country']; ?></option>
                            <?php } ?>                            
                        <?php } ?>
                    </select>    
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Timezone :</div>
                <div class="col-sm-8">
                    <select id="timezone_id" name="timezone_id" class="form-controls chosen-select">
                        <?php foreach ($timezones as $key => $value) { ?>
                            <?php if ($user_data['timezone_id'] == $value['id']) { ?>
                                <option value="<?php echo $value['id']; ?>" selected="true"><?php echo $value['name']; ?></option>
                            <?php } else { ?>
                                <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
                            <?php } ?> 

                        <?php } ?>
                    </select>    
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Post Code:</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="postcode" name="postcode" value="<?php echo $user_data['postcode']; ?>">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Phone No :</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="phoneno" name="phoneno" value="<?php echo $user_data['phoneno']; ?>">   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Mobile No :</div>
                <div class="col-sm-8">
                    <input class="form-control" type="text" id="mobileno" name="mobileno" value="<?php echo $user_data['mobileno']; ?>">   
                </div>
            </div>

            <?php 
            $submit_button_text="Register";
            
            if ($form_mode=="EDIT"){
                $submit_button_text="Update";
            }
            ?>
            <div class="tgss-product-bottom">
                <div class="">    
                    <div class="form-group last-form-row">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" id="submit" name="submit" class="btn btn-primary"><?php echo $submit_button_text; ?></button>
                            <button type="reset" id="submit" name="reset" class="btn btn-default">Reset</button>
                        </div>
                    </div>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>        
    </div>
</div>