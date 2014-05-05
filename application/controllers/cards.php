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

    public function visitingcards()
    {
        $card_id = $this->input->post('card_id');
        $this->addcards('visitingcards',$card_id);
    }

    public function letterheads()
    {
        $card_id = $this->input->post('card_id');
        $this->addcards('letterheads',$card_id);
    }

    public function addcards($type,$id)
    {

        $card = $this->session->userdata('shoppingcart');
        $shopping_data = array(
            'card_id' => $id
        );
        array_push($card[$type], $shopping_data);
        $this->session->set_userdata('shoppingcart',$card);
        $this->show();
    }

    public function clear()
    {
        $this->session->unset_userdata('shoppingcart');
    }
}

?>
