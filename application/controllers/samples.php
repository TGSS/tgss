<?php

class Samples extends CI_Controller {

    public function __construct() {
        parent::__construct();       
    }

    public function gallery(){
        $data['template'] = "samples/gallery";
        $this->load->view('template', $data);
    }    
}

?>
