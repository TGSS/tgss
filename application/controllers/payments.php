<?php

class Payments extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('Paypal_api');
        $this->load->library('Tgss_security');
        $this->load->library('Money_component');
        $this->load->library('order_component');        
        $this->load->model('payments_model');
        $this->load->model('orders_model');
    }

    public function makePayment() {

        $installment_no = $this->input->post('installment_no');
        $installmentAmount = $this->input->post('installmentAmount');
        $total = $this->input->post('total');
        $order_id = $this->input->post('order_id');
        $order_ref_no = $this->input->post('order_ref_no');
        //*******************************************************************************************************************************************
        //Currency Conversion
        $installmentAmountUSD = (float)$installmentAmount / 1000; //Convert "Myanmar Kyats" to "USD"        
        $installmentAmountUSD = $this->money_component->formatMoney($installmentAmountUSD);
        
        $totalUSD = (float)$total / 1000; //Convert "Myanmar Kyats" to "USD"        
        $totalUSD = $this->money_component->formatMoney($totalUSD);
        //*******************************************************************************************************************************************
        $currency = "USD";
        
        if ($installment_no == 1) {
            $installmentDesc = "first installment (" . $installmentAmountUSD . " of " . $totalUSD . ")";
        } else if ($installment_no == 2) {
            $installmentDesc = "second installment (" . $installmentAmountUSD . " of " . $totalUSD . ")";
        }
        
        $orderSummary=$this->order_component->getInstallmentItemForPaypal($installmentAmountUSD,$installmentDesc);
        
        $result = $this->paypal_api->makePayPalPayment($installmentAmountUSD, $currency, $installmentDesc,$orderSummary);

        $userPaymentInfo = array(
            'order_id' => $order_id,
            'order_ref_no' => $order_ref_no,
            'total' => $total,
            'totalUSD' => $totalUSD,
            'installmentDesc' => $installmentDesc,
            'installment_no'=> $installment_no,
            'installmentAmount' => $installmentAmount,
            'installmentAmountUSD' => $installmentAmountUSD,
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
        $installment_no=$userPaymentInfo['installment_no'];
        
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
        $amount*=1000;  //Currency Conversion
        $statusOK = $this->payments_model->savePayment($order_id, $userData['user_id'], $installment_no,
                                                time(), $amount, $currency, "paypal", 
                                                $paymentID, serialize($payment_info_json));
        
        $statusOK=$this->orders_model->updatePaymentStatus($order_id);

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
