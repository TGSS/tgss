<script type="text/javascript" src="<?php echo base_url(); ?>js/users/login.js"></script>

<style>
    .body_wrapper_body_wrapper_top_left {
        float: none;
        width: 100%;
    }    
    table tr td
    {
        padding: 5px 10px;
        margin: 10px 0;
    }
</style>
<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="body_wrapper_body_wrapper_top_left">
            <div class="tgss-product-heading">Cards</div>

            <?php
                //echo "<pre>"; print_r($cart);
            ?>

            <table width="100%" style="margin-top: 20px;" class="table table-striped">
                <tr>
                    <th width="10%;">Qty</th>
                    <th width="30%">Product Description</th>
                    <th width="50%">Uploaded Design</th>
                    <th width="10%;">Price</th>
                </tr>
                <?php
                    $net_total = 0;
                    foreach ($cart as $cart_type => $cart_data) {
                        echo "<tr>";
                            echo "<td colspan=4>" . $cart_type ."</td>";
                        echo "</tr>";
                        foreach ($cart_data as $cart_data_index => $cart_datas) {
                            $table = "<tr>";
                            $table .= "<td>" . $cart_datas['quantity'] . "</td>";
                            $table .= "<td>";
                            //$table .= foreach($cart_datas['card_data'] as $cart_desc){$cart_desc;};
                            foreach($cart_datas['card_data'] as $key=>$val){ 
                                $table .= $val . "<br>";
                            };
                            $table .= "</td>";
                            $table .= "<td style='text-align: center;'><a href='index.php/cards/cart_delete/$cart_datas[card_id]'>Delete</a></td>";
                            $table .= "<td>" . $cart_datas['total'] . "</td>";
                            $table .= "</tr>";

                            echo $table;
                            $net_total += $cart_datas['total'];
                        }
                    }
                ?>
                <tr>
                    <td colspan="4" style="text-align: right; padding-right: 50px;">Net Total : <?php echo $net_total; ?></td>
                </tr>
            </table>
            <a href="<?php echo base_url();?>index.php/orders" class="btn btn-primary">Order</a>
            <a href="#" class="btn btn-danger">Clear Shopping Cart</a>
        </div>        
    </div>
</div>