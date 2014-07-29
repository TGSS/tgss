$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "250px"
    });
        
    get_tablecalender_type_data();    
    
    $('#tablecalender_type_id').change(function(){
        get_tablecalender_type_data();
    });

    $('#no_of_pages').change(function(){
        get_card_type_data();
    });
    
    $('.calculation-item').change(function(){
        get_total_price();
    });


}); 

function get_tablecalender_type_data(){
    var tablecalender_type_id=$('#tablecalender_type_id').val();
        
    $.ajax({
        url: base_url + "index.php/tablecalenders/get_tablecalender_type_data/" + tablecalender_type_id,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){
                $('#binding_quality').html(result['data']['tablecalender_type_data']['binding_quality']);
                $('#base').html(result['data']['tablecalender_type_data']['base']);
                $('#packing').html(result['data']['tablecalender_type_data']['packing']);
                $('#parent_type_id').val(tablecalender_type_id);
                           
                noOfPages_dropdown_fill(result['data']['no_of_pages']);              
//                get_total_price();
            //                
            //                var card_type=$("#card_type option:selected").text();    
            //                $('#card_type_hidden').val(card_type);
            //    
            //                var quantity = $('#quantity option:selected').text();    
            //                $('#quantity_hidden').val(quantity);
            }else{
                $('#binding_quality').html('');
                $('#base').html('');
                $('#packing').html('');
                //Clearing "Dropdown"
                $('#no_of_pages').empty();
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}

function get_card_type_data(){
    var tablecalender_type_id=$('#tablecalender_type_id').val();
    var no_of_pages=$('#no_of_pages').val();
    
    $.ajax({
        url: base_url + "index.php/tablecalenders/get_card_type_data/" + tablecalender_type_id + "/" + no_of_pages,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){
                card_type_dropdown_fill(result['data']['card_type_data']);
            }else{

            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}

function get_total_price(){
    var parent_type_id=$('#tablecalender_type_id').val();
    var no_of_pages=$('#no_of_pages').val();
    var card_type=$('#card_type').val();    
    var quantity=$('#quantity').val();

    //*****************************************************************************************************
    //Lamination Calculation
    var with_lamination=0;
    
    if ($("#with_lamination").prop('checked')){
        with_lamination=1;
    }
    //*****************************************************************************************************
    if (card_type==null || card_type==''){
        return;
    }
    
    $.ajax({
        url: base_url + "index.php/tablecalenders/get_total_price/" + parent_type_id + "/" + no_of_pages + "/" + card_type + "/" + quantity + "/" + with_lamination,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){       
                $('#card_id').val(result.data.card_id);
                $('#with_lamination_display').html(result.data.lamination_extra_charge);
                $('#price_display').html(result.data.price);
                $('#total_display').html(result.data.total);
                $('#card_type_hidden').val(card_type);
                $('#quantity_hidden').val(quantity);
                $('#price_hidden').val(result.data.price);
                $('#total_hidden').val(result.data.total);                                
            }else{
                $('#card_id').val('');
                $('#with_lamination_display').html('');
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

function noOfPages_dropdown_fill(noOfPagesData){
    var noOfPages_dropdown = $('#no_of_pages');
    
    noOfPages_dropdown.empty();
    
    $.each(noOfPagesData, function(key, value) {
        
        noOfPages_dropdown.append(
            $('<option></option>').val(value['no_of_pages']).html(value['no_of_pages'])
            );
    });

    //Make selection of First "No of Pages"
    var selectedNoOfPages=noOfPagesData[0]['no_of_pages'];
    noOfPages_dropdown.val(selectedNoOfPages).trigger("chosen:updated");
    
    noOfPages_dropdown.change();
}

function card_type_dropdown_fill(cardTypeData){
    var cardType_Dropdown = $('#card_type');
    
    cardType_Dropdown.empty();
    
    $.each(cardTypeData, function(key, value) {
        
        cardType_Dropdown.append(
            $('<option></option>').val(value['card_type']).html(value['card_type_display'])
            );
    });

    cardType_Dropdown.trigger("chosen:updated");
    //Calculate Total
    get_total_price();
}