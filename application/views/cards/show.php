<script type="text/javascript" src="<?php echo base_url(); ?>js/users/login.js"></script>

<style>
	.body_wrapper_body_wrapper_top_left {
		float: none;
		width: 100%;
        overflow: hidden;
	}
	table tr td {
		padding: 5px 10px;
		margin: 10px 0;
	}
</style>
<div id="body_wrapper_body_wrapper">
    <div id="shopping_nav">
        <div class="shopping_review shopping_nav_item active"> <div class="content">Step 1: <span class="title">Review Basket</span></div></div>
        <div class="shopping_detail shopping_nav_item"> <div class="content">Step 2: <span class="title">Your Details</span></div></div>
        <div class="shopping_complete shopping_nav_item"> <div class="content">Step 4: <span class="title">Order Complete</span></div></div>
    </div>
    <div class="shopping_continue">
        <a href=""></a>
    </div>
	<div class="body_wrapper_body_wrapper_top">
		<div class="body_wrapper_body_wrapper_top_left">
			<?php foreach ($cart as $cart_type => $cart_data) {
			?>
			<div class="panel panel-default">
				<div class="panel-heading shopping_type">
					<b><?php echo $cart_type; ?></b>
				</div>
				<table id="<?php echo $cart_type; ?>_orderdetails" class="table table-striped">
					<thead>
						<tr>
							<th width="10%;">Qty</th>
							<th width="30%">Product Description</th>
							<th width="50%">Uploaded Design</th>
							<th width="10%;">Price</th>
						</tr>
					</thead>
					<tbody>

						<?php
						$table = '';
						foreach ($cart_data as $cart_datas) {
							$cart_detail = $cart_datas['card_data'];
							$table .= "<tr>";
							$table .= "<td>" . $cart_datas['quantity'] . "</td>";
							$table .= "<td>";
							//$table .= foreach($cart_datas['card_data'] as $cart_desc){$cart_desc;};
							foreach ($cart_detail as $key => $val) {
								$table .= $val . "<br>";
							};
							$table .= "</td>";
							$table .= "<td style='text-align: center;'><a href='index.php/cards/cart_delete/$cart_datas[card_id]' id='shopping_delete'></a></td>";
							$table .= "<td>" . $cart_datas['total'] . "</td>";
							$table .= "</tr>";
						}
						echo $table;
						?>
					</tbody>
				</table>
			</div>
			<?php } ?>
			<div id="shopping_footer">
			     <div id="shopping_total">Total Price: <span>$<?php echo $total; ?></span></div>
			     <div id="shopping_checkout"><a href="<?php echo site_url('orders'); ?>"></a></div>
			</div>
			<!--a href="<?php echo site_url('orders'); ?>" class="btn btn-primary">Order</a-->
			<a href="<?php echo site_url('cards/clear'); ?>" class="btn btn-danger">Clear Shopping Cart</a>
		</div>
	</div>
</div>