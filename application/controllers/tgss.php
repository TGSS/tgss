<?php
class tgss extends CI_Controller {

	public function index()
	{
		$data['temlate'] = "home";
		$this->load->view('template', $data);
	}
	
	function configure_product()
	{
		$data['temlate'] = "configure_product";
		$this->load->view('template', $data);
	}
	
	function login_register()
	{
		$data['temlate'] = "login_register";
		$this->load->view('template', $data);
	}

        function about_us()
        {
                $data['temlate'] = "about_us";
                $this->load->view('template', $data);
        }

        function delivery()
        {
                $data['temlate'] = "delivery";
                $this->load->view('template', $data);
        }

        function faq()
        {
                $data['temlate'] = "faq";
                $this->load->view('template', $data);
        }

        function VC()
        {
                $data['temlate'] = "vc";
                $this->load->view('template', $data);
        }
}
?>