<?php

class Users_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function register($email,$password,$address,$phno)
    {
        $id = $this->keygen(8);
        echo $id;
    }
}

?>
