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
                    <td width="1%">No.</td>
                    <td width="59%">card_quality_display</td>
                    <td width="10%">color</td>
                    <td width="10%">quantity</td>
                    <td width="20%" class="last">total</td>
                </tr>
                <?php
                    $shoppingcart = $this->session->userdata('shoppingcart');
                    $i = 1;
                    $nettotal = 0;
                    foreach ($cart as $carttype=>$cartvalue) {
                        foreach ($cartvalue as $data) {
                            echo "<tr>";
                            echo "<td>" . $i . "</td>";
                            if(isset($data['card_quality_display']))
                            {
                                echo "<td>" . $carttype . " [ " . $data['card_quality_display'] . " ]</td>";
                            }
                            else
                            {
                                echo "<td>" . $carttype . "</td>";
                            }
                            echo "<td>" . $data['color'] . "</td>";
                            echo "<td>" . $data['quantity'] . "</td>";
                            echo "<td>" . $data['total'] . "</td>";
                            echo "<tr>";
                            $i++;
                        }
                        $nettotal += $data['total'];
                    }
                ?>
                <!--tr style="background: #fffdf2;">
                    <td>1.</td>
                    <td>Art Card</td>
                    <td>1C</td>
                    <td>600</td>
                    <td class="last">7800.00</td>
                </tr>
                <tr style="background: #f1f8ff;">
                    <td>1.</td>
                    <td>Art Card</td>
                    <td>1C</td>
                    <td>600</td>
                    <td class="last">7800.00</td>
                </tr-->       
            </table>
            <?php echo $nettotal; ?>
        </div>        
    </div>
</div>