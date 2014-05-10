<?php

class Orders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('shoppingcart');
        $this->load->model('orders_model');
    }

    public function order(){
        //$shoppingcart_data=$this->shoppingcart->get_shoppingcart();        
        $data['total']=$this->shoppingcart->get_total();
        $data['countries']=$this->users_model->get_country();
        $data['template'] = "orders/order";
        $this->load->view('template', $data);
    }
    
    public function order_submit(){
        $user_data=$this->session->userdata('user');
        $shoppingcart_data=$this->shoppingcart->get_shoppingcart();
        $total=$this->shoppingcart->get_total();
        $statusOK=$this->orders_model->save_order($user_data['user_id'],$shoppingcart_data,$total);
        
        if ($statusOK==true){
            $this->session->set_flashdata('success_message','Order is successfully made.');
            redirect('tgss/index');    //redirect to user login page
        }else{
            $this->session->set_flashdata('error_message','Error occured when making order. Please try again later.');
            redirect('orders/order');
        }
    }
       
}

?>
