<?php

class Payments extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('Paypal_api');
        $this->load->library('Tgss_security');
        $this->load->library('Money_component');
        $this->load->model('payments_model');
    }

    public function makePayment() {

        $total = $this->input->post('total');
        $order_id = $this->input->post('order_id');

        //Currency Conversion
        $totalUSD = $total / 1000; //Convert "Myanmar Kyats" to "USD"
        $totalUSD = $this->money_component->formatMoney($totalUSD);
        //$totalUSD=10000;
        $currency = "USD";
        $paymentDescription = "Total $" . $totalUSD . " USD";

        $result = $this->paypal_api->makePayPalPayment($totalUSD, $currency, $paymentDescription);

        $userPaymentInfo = array(
            'order_id' => $order_id,
            'totalMyanmar' => $total,
            'total' => $totalUSD,
            'paymentID' => $result['paymentID'],
        );

        $this->session->set_userdata('userPaymentInfo', $userPaymentInfo);

        $url = $result['approve_url'];

        $data['url'] = $url;
        $data['userPaymentInfo'] = $userPaymentInfo;
        $data['template'] = "payments/paypal-redirect";
        $this->load->view('template', $data);
    }

    public function test01() {
        $userData = $this->tgss_security->get_user_data();
        var_dump($userData);
        exit();
    }

    public function paypalSuccess() {
        $payerID = $_GET['PayerID'];
        $userPaymentInfo = $this->session->userdata('userPaymentInfo');

        $paymentID = $userPaymentInfo['paymentID'];
        $order_id = $userPaymentInfo['order_id'];

        $payment_info = $this->paypal_api->paymentSuccess($paymentID, $payerID);
        $userData = $this->tgss_security->get_user_data();

        if (empty($userData)) {
            echo "Error";
            exit();
        }
        
        if ($paymentID!=$payment_info->id){
            redirect("paypal-error");
            exit();
        }

        $amount = $payment_info->transactions[0]->amount->total;
        $currency = $payment_info->transactions[0]->amount->currency;
        $payment_info_json = $payment_info->toJSON();
        $statusOK = $this->payments_model->savePayment($order_id, $userData['user_id'], time(), $amount, $currency, "paypal", $paymentID, serialize($payment_info_json));

        $userPaymentInfo['payerID']=$payerID;
        $data['userPaymentInfo'] = $userPaymentInfo;
        $data['template'] = "payments/paypal-success";
        $this->load->view('template', $data);
    }

    public function paypalCancel() {
        $userPaymentInfo = $this->session->userdata('userPaymentInfo');
        $data['userPaymentInfo'] = $userPaymentInfo;
        $data['template'] = "payments/paypal-cancel";
        $this->load->view('template', $data);
    }
    
    public function paypalError() {
        $userPaymentInfo = $this->session->userdata('userPaymentInfo');
        $data['userPaymentInfo'] = $userPaymentInfo;
        $data['template'] = "payments/paypal-error";
        $this->load->view('template', $data);
    }

}

?>
