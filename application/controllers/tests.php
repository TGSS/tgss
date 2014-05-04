<?php

class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function test01(){
        $this->shoppingcart->get_shoppingcart();
        //$data=$this->orders_model->save_order();
        exit();
    }
   
}

?>
