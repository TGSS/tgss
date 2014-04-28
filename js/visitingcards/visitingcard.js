$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "100%"
    });
        
    get_total_price();
        
    $('.calculation-item').change(function(){
        get_total_price();
    });
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
                $('#price_display').html(result.data.price);
                $('#total_display').html(result.data.total);
                $('#price').val(result.data.price);
                $('#total').val(result.data.total);
            }else{
                $('#price_display').html(0);
                $('#total_display').html(0);
                $('#price').val(0);
                $('#total').val(0);
            }
                
        },
        error: function(error){
            console.log(error);
        }
    });
}