<?php

class Samples extends CI_Controller {

    public function __construct() {
        parent::__construct();       
        $this->load->library('shoppingcart');        
    }

    public function gallery(){
        $data['template'] = "samples/gallery";
        $this->load->view('template', $data);
    }    
    
    public function set_session(){
        $user_data=array(
            'user_id'=>1,
            'username'=>'a@gmail.com'
        );
        
        $shopping_data['visitingcards'][]=array(
            'card_id'=>'VC-01001'            
        );
        
        $shopping_data['visitingcards'][]=array(
            'card_id'=>'VC-01002'            
        );

        $shopping_data['letterheads'][]=array(
            'card_id'=>'LH-01001'            
        );
                
        $this->session->set_userdata('user', $user_data);
        $this->session->set_userdata('shoppingcart',$shopping_data);

        var_dump($this->session->userdata('shoppingcart'));
//        /$this->shoppingcart->get_total();
        exit();
    }   
}

?>
