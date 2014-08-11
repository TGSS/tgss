<?php

class Tests extends CI_Controller {

    public function __construct() {
        parent::__construct();
        //$this->load->library('PaypalRest');
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
	
	public function upload()
	{
		$this->load->view('test/upload');
	}
	
	public function upload_1()
	{
		$this->load->view('test/upload_1');
	}
	
	public function upload_data()
	{
		//$this->load->view('test/upload');
		echo "FORM UPLOADED";
	}
	
	public function upload_help()
	{
		include_once 'upload/index.php';
	}

    public function test03()
    {
        echo phpinfo();
    }
	
	public function plupload()
    {
        $this->load->view('test/plupload');
    }
	
	public function plupload_upload()
	{
		include_once 'plupload/upload.php';
	}
}

?>
