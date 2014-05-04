<?php

class Orders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('shoppingcart');
        $this->load->model('orders_model');
    }

    public function order(){
        $data['total']=$this->shoppingcart->get_total();
        $data['countries']=$this->users_model->get_country();
        $data['template'] = "orders/order";
        $this->load->view('template', $data);
    }
    
    public function order_sumbit(){
        
    }
       
}

?>
