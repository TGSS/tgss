<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Tgss_security {

    var $CI;
    
    function __construct() {
        $this->CI = & get_instance();
    }
    
    public function is_logged_in(){
        $user_data=$this->CI->session->userdata('user');
        
        if (!empty($user_data)){
            return true;
        }else{
            return false;
        }
    }
    
    public function is_admin(){
        if ($this->is_logged_in()==false){
            return false;
        }
        
        $user_data=$this->CI->session->userdata('user');
        
        if ($user_data['role']=='admin'){
            return true;
        }else{
            return false;
        }
    }    
    
    public function is_customer(){
        if ($this->is_logged_in()==false){
            return false;
        }
        
        $user_data=$this->CI->session->userdata('user');
        
        if ($user_data['role']=='customer'){
            return true;
        }else{
            return false;
        }
    }   
}
