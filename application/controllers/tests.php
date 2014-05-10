<?php

class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function test01() {
        var_dump($this->db);
    }   
}

?>
