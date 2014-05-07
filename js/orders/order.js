$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "300px"
    });
    
    //Auto Selecting "Myanmar"
    $("#country").val("Myanmar");
    $("#country").trigger("chosen:updated");
    
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
            address1: 
            {
                required: true
            },
            city: 
            {
                required: true
            },
            postcode: 
            {
                required: true
            },          
        },
        //set messages to appear inline
        messages: 
        {                       
            address1: "Please enter address.",
            city: "Please enter city.",  
            postcode: "Please enter postcode.",             
        }
    });
    
    if ($('#order').valid()){            
        return true;
    }else{        
        return false;
    } 
}