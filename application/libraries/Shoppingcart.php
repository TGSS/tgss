<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Shoppingcart {

    var $CI;
    
    function __construct() {
        $this->CI = & get_instance();
        $this->CI->load->model('shoppingcart_model');
    }
    
    /**
     * Function to give complete shopping cart data.
     */
    public function get_shoppingcart(){
        $shoppingcart=$this->CI->session->userdata('shoppingcart');
        return $shoppingcart;
    }
    
    public function get_total() {
        $shoppingcart=$this->CI->session->userdata('shoppingcart');
        $total = 0.0;

        foreach ($shoppingcart as $card_key=>$card_value){
            foreach ($card_value as $key=>$value){
                $total+=(float)$value['total'];
            }
        }
        
        return $total;
    }
    
    public function clear_shoppingcart(){
        $this->CI->session->unset_userdata('shoppingcart');
    }
    /**
     * Function to provide complete card information to be ordered
     * Initially, the data are in the session.
     * We loop trough the session and draw complete information about taht card from database.
     * Construct an array which is ready to be used for general purpose.
     * 
     * If the session doesn't have information about that card, the function return "null"
     */
//    private function get_card_data($cardtype){
//        $session_data=$this->CI->session->userdata('shoppingcart');
//                
//        //If "visitingcard" is not in the "session"
//        if (array_key_exists($cardtype,$session_data)==false){
//            return null;
//        }
//        $card_session_data=$session_data[$cardtype];
//        
//        $result=array();        
//        $card_id_array=array();
//        
//        foreach ($card_session_data as $key=>$value){
//            $card_id_array[]=$value['card_id'];            
//        }
//               
//        $result=$this->CI->shoppingcart_model->get_card_data($cardtype,$card_id_array);
//                
//        return $result;
//    }   

}