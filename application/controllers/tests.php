<?php

class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
<<<<<<< HEAD
        //$this->load->library('PaypalRest');
=======
        $this->load->library('order_component');
>>>>>>> wpst
    }

    public function test01() {
        $obj = new PaypalRest();

        var_dump($obj->getAccessToken());
        exit();
    }

    public function test02() {
        $this->order_component->getItemListForPaypal(18);
    }
	
	public function upload()
	{
		$this->load->view('test/upload');
	}
	
	public function upload_help()
	{
		include_once 'upload/index.php';
	}

}

?>
