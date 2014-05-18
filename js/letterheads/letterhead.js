$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "300px"
    });
        
    get_total_price();
        
    $('.calculation-item').change(function(){
        get_total_price();
    });

    var color = $('#color_chosen a span').html();
    $("#color").change(function() {
        color = $('#color_chosen a span').html();
        $('#color_hidden').val(color);
    });
    $('#color_hidden').val(color);

    var quantity = $('#quantity_chosen a span').html();
    $("#quantity").change(function() {
        quantity = $('#quantity_chosen a span').html();
        $('#quantity_hidden').val(quantity);
    });
    $('#quantity_hidden').val(quantity);
}); 

function get_total_price(){
    var card_quality=$('#scard_quality').val();
    var color=$('#color').val();
    var quantity=$('#quantity').val();
        
    $.ajax({
        url: base_url + "letterheads/get_total_price/" + color + "/"  + quantity,
        type: "POST",
        dataType: "json",
        cache:false,
        success: function(result){ 
            if (result.success==true){
                $('#card_id').val(result.data.card_id);
                $('table tr td').removeClass("selected");
                $('#' + result.data.card_id).addClass("selected");
                $('#price_display').html(result.data.price);
                $('#total_display').html(result.data.total);
                $('#price_hidden').val(result.data.price);
                $('#total_hidden').val(result.data.total);
            }else{
                $('#card_id').val('');
                $('table tr td').removeClass("selected");
                $('#price_display').html(0);
                $('#total_display').html(0);
                $('#price_hidden').val(0);
                $('#total_hidden').val(0);
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}