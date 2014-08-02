<script type="text/javascript" src="<?php echo base_url(); ?>js/orders/order.js"></script>

<style>
	/*.tgss-product-price {
	 margin-left: 247px !important;
	 margin-top: 20px;
	 margin-bottom: 20px;
	 }

	 .body_wrapper_body_wrapper_top_right {
	 height: auto !important;
	 }*/
</style>

<div id="body_wrapper_body_wrapper">
	<div id="shopping_nav">
		<div class="shopping_review shopping_nav_item">
			<div class="content">
				Step 1: <span class="title">Review Basket</span>
			</div>
		</div>
		<div class="shopping_detail shopping_nav_item active">
			<div class="content">
				Step 2: <span class="title">Your Details</span>
			</div>
		</div>
		<div class="shopping_complete shopping_nav_item">
			<div class="content">
				Step 4: <span class="title">Order Complete</span>
			</div>
		</div>
	</div>
	<?php
	$attributes = array('class' => 'form-horizontal', 'id' => 'order', 'name' => 'order');
	echo form_open('orders/order_submit', $attributes);
	?>
	<div id="order_billin_form">
		<div id="require_star">
			(<span>*</span>) fields are required.
		</div>
		<div id="billing_form">
			<div class="order_header">
				Billing Details
			</div>
			<div class="order_form_body">
				<span>This must match the card holder's name and address.</span>

				<?php $this -> load -> view("orders/billing_form"); ?>

				<div id="clr"></div>
			</div>
		</div>
	</div>

	<div id="order_billin_form">
		<div id="delivery_form">
			<div class="order_header">
				Billing Details
			</div>
			<div class="order_form_body">
				<div class="checkbox">
					<label>
						<input type="checkbox" id="different_delivery_address" name="different_delivery_address" unchecked>
						Different Delivery Address </label>
				</div>

				<div id="delivery-form-wrapper">
					<?php $this -> load -> view("orders/delivery_form"); ?>
				</div>

				<div id="clr"></div>
			</div>
		</div>
	</div>

	<div class="order_proceed_to_payment">
		<button type="submit" id="submit" name="delivery_submit" class="btn btn-primary"></button>
	</div>
	<?php echo form_close(); ?>
</div>