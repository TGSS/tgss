$(document).ready(function(){

    $(".chosen-select").chosen({
        width: "250px"
    });
    
    get_cl_voucher_type_data();    
    
    $('#cl_voucher_type_id').change(function(){
        get_cl_voucher_type_data();
    });
    
    $('.calculation-item').change(function(){
        get_total_price();
    });


}); 

function get_cl_voucher_type_data(){
    var cl_voucher_type_id=$('#cl_voucher_type_id').val();
        
    $.ajax({
        url: base_url + "index.php/cl_vouchers/get_cl_voucher_type_data/" + cl_voucher_type_id,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){
                $('#size').html(result['data']['cl_voucher_data']['size']);
                $('#type_quantity').html(result['data']['cl_voucher_data']['type_quantity']);
                $('#printing').html(result['data']['cl_voucher_data']['printing']);
                $('#parent_type_id').val(cl_voucher_type_id);
                
                cardtype_dropdown_fill(result['data']['card_type']);
                quantity_dropdown_fill(result['data']['quantity']);
                
                get_total_price();
            //                
            //                var card_type=$("#card_type option:selected").text();    
            //                $('#card_type_hidden').val(card_type);
            //    
            //                var quantity = $('#quantity option:selected').text();    
            //                $('#quantity_hidden').val(quantity);
            }else{
                $('#size').html("");
                $('#type_quantity').html("");
                $('#printing').html("");
                $('#parent_type_id').val("");
                //Clearing "Dropdown"
                $('#card_type_dropdown').empty();
                $('#quantity').empty();
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}

function get_total_price(){
    var card_type=$('#card_type').val();
    var parent_type_id=$('#cl_voucher_type_id').val();
    var quantity=$('#quantity').val();
        
    $.ajax({
        url: base_url + "index.php/cl_vouchers/get_total_price/" + parent_type_id + "/" + card_type + "/" + quantity,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){
                $('#card_id').val(result.data.card_id);
                $('#price_display').html(tgss.formatMoney(result.data.price));
                $('#total_display').html(tgss.formatMoney(result.data.total));
                $('#card_type_hidden').val(card_type);
                $('#quantity_hidden').val(quantity);
                $('#price_hidden').val(result.data.price);
                $('#total_hidden').val(result.data.total);                                
            }else{
                $('#card_id').val('');
                $('#price_display').html(0);
                $('#total_display').html(0);
                $('#card_type_hidden').val("");
                $('#quantity_hidden').val(0);
                $('#price_hidden').val(0);
                $('#total_hidden').val(0);
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}

function cardtype_dropdown_fill(cardtypeData){
    var card_type_dropdown = $('#card_type');
    
    card_type_dropdown.empty();
    
    $.each(cardtypeData, function(key, value) {
        
        card_type_dropdown.append(
            $('<option></option>').val(value['card_type']).html(value['card_type_display'])
            );
    });

    card_type_dropdown.trigger("chosen:updated");
}

function quantity_dropdown_fill(quantityData){
    var quantity_dropdown = $('#quantity');
    
    quantity_dropdown.empty();
    
    $.each(quantityData, function(key, value) {
        
        quantity_dropdown.append(
            $('<option></option>').val(value['quantity']).html(value['quantity'])
            );
    });

    quantity_dropdown.trigger("chosen:updated");
}