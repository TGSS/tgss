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

            <table width="100%" style="margin-top: 20px;">
                <tr>
                    <td width="10%;">Qty</td>
                    <td width="30%">Product Description</td>
                    <td width="50%">Uploaded Design</td>
                    <td width="10%;">Price</td>
                </tr>
                <?php
                    $shoppingcart = $this->session->userdata('shoppingcart');
                    $i = 1;
                    $nettotal = 0;
                    foreach ($cart as $carttype=>$cartvalue) {
                        echo "<tr>";
                        echo "<td colspan=4>" . $carttype . "</td>";
                        echo "</tr>";
                        foreach ($cartvalue as $data) {
                            echo "<tr>";
                            echo "<td>" . $data['quantity'] . "</td>";
                            echo "<td>" . $data['card_quality_display'] . "</td>";
                            echo "<td>EDIT / DELETE</td>";
                            echo "<td>" . $data['total'] . "</td>";
                            $i++;
                        }
                        $nettotal += $data['total'];
                    }
                ?>
            </table>
        </div>        
    </div>
</div>