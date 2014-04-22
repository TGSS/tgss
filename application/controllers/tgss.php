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

        function VC_submit()
        {
                $vc_card_quality = $_POST['vc_card_quality'];
                $vc_color = $_POST['vc_color'];
                $vc_quentity = $_POST['vc_quentity'];
                $data = $this->tgss_calculation->vc($vc_card_quality,$vc_color,$vc_quentity);
                foreach ($data as $datas) {
                        $price = $datas->Price;
                }
                $temp_price = $price * $vc_quentity;
                echo "<div style='text-align:center;'>";
                echo "Price is " . $temp_price;
                echo "<br><a href='" . site_url() . "/tgss/vc'>Back to V/C</a></div>";
        }

        function LH()
        {
                $data['temlate'] = "lh";
                $this->load->view('template', $data);
        }

        function LH_submit()
        {
                $lh_color = $_POST['lh_color'];
                $lh_quentity = $_POST['lh_quentity'];
                $data = $this->tgss_calculation->lh($lh_color,$lh_quentity);
                foreach ($data as $datas) {
                        $price = $datas->Price;
                }
                $temp_price = $price * $lh_quentity;
                echo "<div style='text-align:center;'>";
                echo "Price is " . $temp_price;
                echo "<br><a href='" . site_url() . "/tgss/lh'>Back to L/H</a></div>";
        }
}
?>