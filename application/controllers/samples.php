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
    
    public function get_session(){
        var_dump($this->session->userdata('shoppingcart'));
        var_dump($this->shoppingcart->get_total());
        exit();
    }
    
    public function clear_session(){
        //$this->session->unset_userdata('user');
        $this->session->unset_userdata('shoppingcart');
    }
    
    public function set_session(){
        $user_data=array(
            'user_id'=>25,
            'username'=>'a@gmail.com'
        );
        
        $shopping_data['visitingcards'][]=array(
            'card_id'=>'VC-01001',
            'quantity'=>1,
            'price'=>10,
            'total'=>100
        );
        
        $shopping_data['visitingcards'][]=array(
            'card_id'=>'VC-01002',
            'quantity'=>2,
            'price'=>20,
            'total'=>200
        );

        $shopping_data['letterheads'][]=array(
            'card_id'=>'LH-01001'  ,
            'quantity'=>3,
            'price'=>30,
            'total'=>300
        );
                
        $this->session->set_userdata('user', $user_data);
        $this->session->set_userdata('shoppingcart',$shopping_data);

        var_dump($this->session->userdata('shoppingcart'));
        var_dump($this->shoppingcart->get_total());
        exit();
    }   
}

?>
