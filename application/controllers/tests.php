<?php

class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
        //$this->load->library('PaypalRest');
    }

    public function test01() {
        $obj = new PaypalRest();

        var_dump($obj->getAccessToken());
        exit();
    }

    public function test02() {
        redirect('https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=EC-22J87495L70228255');
    }
	
	public function upload()
	{
		$this->load->view('test/upload');
	}
	
	public function upload_help()
	{
		include_once 'upload';
	}

}

?>
