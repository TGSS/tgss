$(document).ready(function(){
    $(".chosen-select").chosen({
        width: "300px"
    });
    
    //Auto Selecting "Myanmar"
    $("#country").val("Myanmar");
    $("#country").trigger("chosen:updated");
    
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
    
    $.ajax({
        url: base_url + "index.php/users/is_username_exist",
        type: "POST",
        dataType: "json",
        data: {
                username:$('#username').val()
            },
        cache:false,
        async:false,  
        success: function(result){ 
            if (result.success==true){
                if (result.data.is_username_exist==true){
                    show_error_message("User Name already existed.");
                    valid=false;
                }else{
                    valid= true;
                }
            }
            
            //return false;
                
        },
        error: function(error){
            console.log(error);
        }
    });
    
    return valid;    
}

function validate_user_input(){
    $("#register").validate({
        rules: {
            username: 
            {
                required: true,
                email: true
            },
            firstname: 
            {
                required: true
            },
            lastname: 
            {
                required: true
            },
            password: 
            {
                required: true
            },
            confirm_password: 
            {
                required:true,
                equalTo: "#password"
            },         
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
            phoneno: 
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
            firstname: "Please enter first name.",
            lastname: "Please enter last name.",  
            password: "Please enter a password.",
            confirm_password: 
            {
                required: "Please enter a confirm password.",
                equalTo: "Password and Confirm Password not match."
            },                        
            address1: "Please enter address.",
            city: "Please enter city.",  
            postcode: "Please enter postcode.", 
            phoneno: "Please enter phone no.",              
        }
    });
    
    if ($('#register').valid()){            
        return true;
    }else{        
        return false;
    } 
}