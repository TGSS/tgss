$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "300px"
    });
    
    //Auto Selecting "Myanmar"
    $(".country-dropdown").val("Myanmar");
    $(".country-dropdown").trigger("chosen:updated");
    
    $('#submit').click(function(){
        return order_click();
    });
});

function order_click(){
    if (validate_user_input()==false){
        show_error_message("Please fill in the required fields.");
        return false;
    }
    
    return true;
}

function validate_user_input(){
    $("#order").validate({
        rules: {  
            delivery_firstname: 
            {
                required: true
            },
            delivery_lastname: 
            {
                required: true
            },
            delivery_address1: 
            {
                required: true
            },
            delivery_city: 
            {
                required: true
            },
            delivery_postcode: 
            {
                required: true
            },    
            billing_firstname: 
            {
                required: true
            },
            billing_lastname: 
            {
                required: true
            },
            billing_email: 
            {
                required: true,
                email:true
            },   
            billing_address1: 
            {
                required: true
            },
            billing_city: 
            {
                required: true
            },
            billing_postcode: 
            {
                required: true
            },   
        },
        //set messages to appear inline
        messages: 
        {        
            delivery_firstname: "Please enter delivery first name.",
            delivery_lastname: "Please enter delivery last name.",
            delivery_address1: "Please enter delivery address.",
            delivery_city: "Please enter delivery city.",  
            delivery_postcode: "Please enter delivery postcode.",  
            billing_firstname: "Please enter billing first name.",
            billing_lastname: "Please enter billing last name.",
            billing_email: {
                required:"Please enter email.",
                email:"Please enter correct email address."
            },
            billing_address1: "Please enter billing address.",
            billing_city: "Please enter billing city.",  
            billing_postcode: "Please enter billing postcode.", 
        }
    });
    
    if ($('#order').valid()){            
        return true;
    }else{        
        return false;
    } 
}