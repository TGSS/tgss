$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "250px"
    });
        
    get_total_price();
        
    $('.calculation-item').change(function(){
        get_total_price();
    });

    var card_quality = $('#card_quality_chosen a span').html();
    $("#card_quality").change(function() {
        card_quality = $('#card_quality_chosen a span').html();
        $('#card_quality_hidden').val(card_quality);
    });
    $('#card_quality_hidden').val(card_quality);

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
    var card_quality=$('#card_quality').val();
    var color=$('#color').val();
    var quantity=$('#quantity').val();
        
    $.ajax({
        url: base_url + "index.php/visitingcards/get_total_price/" + card_quality + "/" + color + "/"  + quantity,
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
                $('#price').val(result.data.price);
                $('#total_hidden').val(result.data.total);
            }else{
                $('#card_id').val('');
                $('table tr td').removeClass("selected");
                $('#price_display').html(0);
                $('#total_display').html(0);
                $('#price').val(0);
                $('#total_hidden').val(0);
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}