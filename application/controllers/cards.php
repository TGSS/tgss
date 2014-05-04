<?php

class Cards extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index()
    {
        $data['temlate'] = "cards/show";
        $this->load->view('template', $data);
    }
}

?>
