<?php

class Cards extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index()
    {
        $card_id = $this->input->post('card_id');
        $vistingcard = array($card_id);
        $card = array('vistingcard' => $vistingcard, 'letterheads' => $letterheads);
        $this->session->set_userdata('card',$card);
        $data['card_id'] = $card_id;
        $data['temlate'] = "cards/show";
        $this->load->view('template', $data);
    }
}

?>
