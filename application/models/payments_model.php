<?php

class Payments_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('money_component');
        $this->load->database();
    }

    public function get_payment_by_order_id($order_id) {
        $query = $this->db->query("SELECT * FROM `payments` WHERE order_id=" . $order_id);
        return $query->result_array();
    }

    public function savePayment($order_id, $user_id, $installment_no,$payment_datetime, $amount, $currency, $payment_gateway, $payment_gateway_id, $payment_info) {

        $paymentData = array(
            'order_id' => $order_id,
            'user_id' => $user_id,
            'installment_no' => $installment_no,
            'payment_datetime' => $payment_datetime,
            'amount' => $amount,
            'currency' => $currency,
            'payment_gateway' => $payment_gateway,
            'payment_gateway_id' => $payment_gateway_id,
            'payment_info' => $payment_info,
            'status' => 1, //status "1" mean "success"
        );

        return $this->db->insert('payments', $paymentData);
    }    
}

?>
