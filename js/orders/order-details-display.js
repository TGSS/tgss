$(document).ready(function(){

    $('.pill-element').click(function(event){       
        var element_id=$(this).prop('id');
       
        $('.nav-pills li').each(function( index, element ) {
            $(element).removeClass("active");
        });
        
        $(this).parent("li").addClass("active");
        
        if (element_id=="contanct-info"){
            
            $('#contanct-info-wrapper').show();
            $('#billing-addresses-wrapper').hide();
            $('#delivery-addresses-wrapper').hide();
        }else if (element_id=="billing-addresses"){
            $('#contanct-info-wrapper').hide();
            $('#billing-addresses-wrapper').show();
            $('#delivery-addresses-wrapper').hide();
        }else {
            $('#contanct-info-wrapper').hide();
            $('#billing-addresses-wrapper').hide();
            $('#delivery-addresses-wrapper').show();
        }
        
        event.preventDefault();
    });
    
});
