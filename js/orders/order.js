$(document).ready(function() {
	$(".chosen-select").chosen({
		width : "415px"
	});

	//Auto Selecting "Myanmar"
	$(".country-dropdown").val("Myanmar");
	$(".country-dropdown").trigger("chosen:updated");

	$('#submit').click(function() {
		return order_click();
	});

	$('#different_delivery_address').change(function() {
		if ($(this).prop('checked')) {
			$('#delivery-form-wrapper').show(1000);
		} else {
			$('#delivery-form-wrapper').hide(1000);
		}
	});
});

function order_click() {
	if (validate_user_input() == false) {
		show_error_message("Please fill in the required fields.");
		return false;
	}

	return true;
}

function validate_user_input() {
	$("#order").validate({
		rules : {
			billing_firstname : {
				required : true
			},
			billing_lastname : {
				required : true
			},
			billing_email : {
				required : true,
				email : true
			},
			billing_address1 : {
				required : true
			},
			billing_city : {
				required : true
			},
			billing_phoneno : {
				required : true
			}
		},
		//set messages to appear inline
		messages : {
			billing_firstname : "Please enter billing first name.",
			billing_lastname : "Please enter billing last name.",
			billing_email : {
				required : "Please enter email.",
				email : "Please enter correct email address."
			},
			billing_address1 : "Please enter billing address.",
			billing_city : "Please enter billing city.",
			billing_phoneno : "Please enter billing phone no."
		}
	});

	if ($('#different-delivery-address').prop('checked')) {
		$("#delivery_firstname").rules("add", {
			required : true,
			messages : {
				required : "Please enter delivery first name."
			}
		});
		$("#delivery_lastname").rules("add", {
			required : true,
			messages : {
				required : "Please enter delivery last name."
			}
		});
		$("#delivery_address1").rules("add", {
			required : true,
			messages : {
				required : "Please enter delivery address."
			}
		});
		$("#delivery_city").rules("add", {
			required : true,
			messages : {
				required : "Please enter delivery city."
			}
		});
		$("#delivery_phoneno").rules("add", {
			required : true,
			messages : {
				required : "Please enter delivery phone no."
			}
		});
	}

	if ($('#order').valid()) {
		return true;
	} else {
		return false;
	}
}