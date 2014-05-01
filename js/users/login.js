$(document).ready(function(){
    $('#submit').click(function(){
        return register_click();
    });
});

function register_click(){
    if (validate_user_input()==false){
        show_error_message("Please fill in the required fields.");
        return false;
    }
     
    var valid;
    
    return valid;    
}

function validate_user_input(){
    $("#login").validate({
        rules: {
            username: 
            {
                required: true,
                email: true
            },
            password: 
            {
                required: true
            },           
        },
        //set messages to appear inline
        messages: 
        {
            username: 
            { 
                required: "Please enter a e-mail address.",
                email: "Please enter a valid e-mail address."
            },  
            password: "Please enter a password.",           
        }
    });
    
    if ($('#login').valid()){            
        return true;
    }else{        
        return false;
    } 
}