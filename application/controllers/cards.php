<?php

class Cards extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index()
    {
        $card_id = $this->input->post('card_id');
        $shoppingcart = $this->session->userdata('shoppingcart');
        array_push($shoppingcart['visitingcards'], array('card_id'=>$card_id));
        $this->session->set_userdata('shoppingcart',$shoppingcart);
    }

    public function show()
    {
        $data['cart'] = $this->shoppingcart->get_shoppingcart();
        $data['template'] = "cards/show";
        $this->load->view('template', $data);
    }
}

?>
