<?php

class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('order_component');
    }

    public function test01() {
        $obj = new PaypalRest();

        var_dump($obj->getAccessToken());
        exit();
    }

    public function test02() {
        $this->order_component->getItemListForPaypal(18);
    }

}

?>
