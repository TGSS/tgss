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
        $shoppingcart_data=array();
        
        $shoppingcart_data['visitingcards']=$this->get_card_data('visitingcards');
        $shoppingcart_data['letterheads']=$this->get_card_data('letterheads');
        var_dump($shoppingcart_data);exit();
    }
    
//    public function get_total() {
//        $CI = & get_instance();
//        $CI->load->model('shoppingcart_model');
//        $shoppingcart = $CI->session->userdata('shoppingcart');
//
//        $total = 0.0;
//
//        if (array_key_exists('visitingcard', $shoppingcart)) {
//            foreach ($shoppingcart['visitingcard'] as $key => $value) {
//                $data = $CI->shoppingcart_model->get_visitingcard_total_by_card_id($value['card_id']);
//                $total+=(float) $data['total'];
//            }
//        }
//
//        if (array_key_exists('letterhead', $shoppingcart)) {
//            foreach ($shoppingcart['letterhead'] as $key => $value) {
//                $data = $CI->shoppingcart_model->get_letterhead_total_by_card_id($value['card_id']);
//                $total+=(float) $data['total'];
//            }
//        }
//
//        return $total;
//    }
    
    /**
     * Function to provide "vistingcards" information to be ordered
     * Initially, the data are in the session.
     * We loop trough the session and draw complete information of visiting card from database.
     * Construct an array which is ready to be used for general purpose.
     * 
     * If the session doesn't have information about "vistingcard" return "null"
     */
    private function get_card_data($cardtype){
        $session_data=$this->CI->session->userdata('shoppingcart');
                
        //If "visitingcard" is not in the "session"
        if (array_key_exists($cardtype,$session_data)==false){
            return null;
        }
        $card_session_data=$session_data[$cardtype];
        
        $result=array();        
        $card_id_array=array();
        
        foreach ($card_session_data as $key=>$value){
            $card_id_array[]=$value['card_id'];            
        }
               
        $result=$this->CI->shoppingcart_model->get_card_data($cardtype,$card_id_array);
                
        return $result;
    }   

}