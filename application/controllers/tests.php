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
	
	public function upload_get()
	{
		// $file = $this->upload_help();
		// print_r($file);
		// $url = "http://local.tgss.com/index.php/tests/upload_help";
		// $ch = curl_init();
		// curl_setopt($ch, CURLOPT_POST, 1);
		// curl_setopt($ch, CURLOPT_URL, $url);
		// curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		// curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		// curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		// curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
		// curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
		// curl_setopt($ch, CURLOPT_NOBODY, 0);
// 		
		// $result = curl_exec($ch);
		// $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
		// curl_close($ch);
// 	
		// // return array(
				// // 'status' => $status,
				// // 'result' => ($status == 200) ? json_decode($result): ''
		// // );
		// var_dump($result);
	}

}

?>
