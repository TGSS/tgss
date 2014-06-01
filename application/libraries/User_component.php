<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_component {

    var $CI;
    
    function __construct() {
        $this->CI = & get_instance();
        $this->CI->load->model('users_model');
    }
    
    /**
     * Function to get the "timezone offset" of the current logged in "user"
     */
    public function get_timezone_offset(){
        $user_data = $this->CI->session->userdata('user');
        
        //If "user" session is empty,
        //return the default timezone offset
        //Myanmar timezone offset "6.5" is the default
        if (empty($user_data)){
            return 6.5;
        }
        
        //Getting timezone offset from "profiles"
        $profile_data=$this->CI->users_model->get_profile_by_user_id($user_data['user_id']);
        
        //If "profile" data is empty,
        //return the default timezone offset
        //Myanmar timezone offset "6.5" is the default
        if (empty($profile_data)){
            return 6.5;
        }
        
        return (float)$profile_data['gmt'];        
    }    
}
