function show_message(message,message_type){
    
    noty({
        text: message,
        type: message_type        
    });
}

function show_success_message(message){
    show_message(message,'success');
}

function show_warning_message(message){
    show_message(message,'warning');
}

function show_error_message(message){
    show_message(message,'error');
}

function show_information_message(message){
    show_message(message,'information');
}

function show_alert_message(message){
    show_message(message,'alert');
}