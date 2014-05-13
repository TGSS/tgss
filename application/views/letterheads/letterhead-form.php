<?php
            $attributes = array('class' => 'form-horizontal', 'id' => 'letterheads', 'name' => 'letterheads');
            echo form_open('cards/letterheads', $attributes);
            ?>

            <div class="form-group">
                <div class="col-sm-3 control-label">Color :</div>
                <div class="col-sm-9">
                    <select id="color" name="color" class="form-controls calculation-item chosen-select">
                        <?php foreach ($color as $key => $value) { ?>
                            <option value="<?php echo $value['color']; ?>"><?php echo $value['color']; ?></option>
                        <?php } ?>
                    </select>   
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-3 control-label">Quantity :</div>
                <div class="col-sm-9">
                    <select id="quantity" name="quantity" class="form-controls calculation-item chosen-select">
                        <?php foreach ($quantity as $key => $value) { ?>
                            <option value="<?php echo $value['quantity']; ?>"><?php echo $value['quantity']; ?></option>
                        <?php } ?>
                    </select> 
                </div>
            </div>

            <input type="hidden" id="price" name="price" class="controls" value=""/>
            <input type="hidden" id="total_hidden" name="total_hidden" class="controls" value=""/>
            <input type="hidden" id="card_id" name="card_id" class="controls" value=""/>
            <input type="hidden" id="color_hidden" name="color_hidden" class="controls" value=""/>
            <input type="hidden" id="quantity_hidden" name="quantity_hidden" class="controls" value=""/>
            
            <div class="tgss-product-bottom">
                <div class="tgss-product-price">
                    <div class="form-group">
                        <div class="col-sm-3 control-label">Total</div>
                        <div class="col-sm-9">
                            <p id="total_display" class="form-control-static">0</p>
                            <input type="hidden" id="total" name="total" class="controls" value=""/>
                        </div>
                    </div>
                </div>

                <div class="tgss-product-next">    
                    <div class="form-group last-form-row">
                        <div class="col-sm-offset-3 col-sm-10">
                            <button type="submit" id="submit" name="submit" class="btn btn-primary"></button>
                        </div>
                    </div>
                </div>
            </div>

            <?php echo form_close(); ?>