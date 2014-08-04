$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "250px"
    });
        
    get_postercalender_type_data();    
    
    $('#postercalender_type_id').change(function(){
        get_postercalender_type_data();
    });
    
    $('#frame').change(function(){
        get_postercalender_frame_data();
    });

    $('.calculation-item').change(function(){
        get_total_price();
    });

}); 

function get_postercalender_type_data(){
    var postercalender_type_id=$('#postercalender_type_id').val();
        
    $.ajax({
        url: base_url + "index.php/postercalenders/get_postercalender_type_data/" + postercalender_type_id,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){            
                $('#printing').html(result['data']['postercalender_type_data']['quality']);
                $('#size').html(result['data']['postercalender_type_data']['size']);
                           
                frames_dropdown_fill(result['data']['postercalender_frame_data']);              

            }else{
                $('#printing').html('');
                $('#size').html('');
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}

function get_postercalender_frame_data(){
    var id=$('#frame').val();
        
    $.ajax({
        url: base_url + "index.php/postercalenders/get_postercalender_frame_data/" + id,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){           
                var frame_price=result['data']['postercalender_frame_data']['price'];                
                $('#frame_price').html(tgss.formatMoney(frame_price));
            }else{
                $('#frame_price').html('0');
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}


function get_card_type_data(){
    var postercalender_type_id=$('#postercalender_type_id').val();
    var no_of_pages=$('#no_of_pages').val();
    
    $.ajax({
        url: base_url + "index.php/postercalenders/get_card_type_data/" + postercalender_type_id + "/" + no_of_pages,
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
    var parent_type_id=$('#postercalender_type_id').val();    
    var card_type=$('#card_type').val();    
    var no_of_column=$('#no_of_column').val();  
    var quantity=$('#quantity').val();
    var frame=$('#frame').val();

    if (card_type==null || card_type==''){
        return;
    }
    
    $.ajax({
        url: base_url + "index.php/postercalenders/get_total_price/" + parent_type_id + "/" + card_type + "/" + no_of_column + "/" + quantity + "/" + frame ,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){       
                $('#card_id').val(result.data.card_id);
                
                var priceDisplay='';
                priceDisplay=tgss.formatMoney(result.data.price_per_item) + " (" +
                   tgss.formatMoney(result.data.price) + " + " + tgss.formatMoney(result.data.frame_price) + ")";

                $('#price_display').html(priceDisplay);
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

function frames_dropdown_fill(frameData){
    var frame_dropdown = $('#frame');
    
    frame_dropdown.empty();
    
    $.each(frameData, function(key, value) {
        var displayValue=value['frame_type'];
        
        frame_dropdown.append(
            $('<option></option>').val(value['id']).html(displayValue)
            );
    });

    //Make selection of First "frame" type
    var selectedNoOfPages=frameData[0]['id'];
    frame_dropdown.val(selectedNoOfPages).trigger("chosen:updated");
    
    frame_dropdown.change();
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