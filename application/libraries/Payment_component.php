<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Payment_component {

    var $CI;

    public function __construct() {
        $this->CI = & get_instance();

        $this->CI->load->library('money_component');
        $this->CI->load->model('orders_model');
        $this->CI->load->model('payments_model');
    }

    /**
     * 
     *  return $result;
     *  $result=array(
     *      "paymentStatus"=>int,
     *      "paymentStatusText"=>string
     *  );
     * 
     * "status" description
     * 0 = pending
     * 1 = first installment made (<<amount>> of <<total>>)
     * 2 = completed (<<amount>> of <<total>>)
     * -1 = undefined
     */
    public function get_payment_status($order_id) {
        //******************************************************************************************************************
        //Selecting "Order" Data
        $orderData =$this->CI->orders_model->get_order_by_order_id($order_id);
        $total = (float) $orderData['total'];
        //******************************************************************************************************************
        //Selecting "Payment" Data
        $paymentData = $this->CI->payments_model->get_payment_by_order_id($order_id);
        //******************************************************************************************************************
        $paidAmount = 0;

        if (empty($paymentData)) {
            //No payment is made yet
            $paymentStatus = 0;
            $paymentStatusText = "pending";
            $paidAmount = 0;
        } elseif (count($paymentData) == 1) {
            //1st installment is made
            $paidAmount = (float) $paymentData[0]['amount'];
            $paymentStatus = 1; //Payment in progress
            $paymentStatusText = "first installment made (" . $this->CI->money_component->formatMoney($paidAmount) . " of " . $this->CI->money_component->formatMoney($total) . ")";
        } elseif (count($paymentData) == 2) {
            //payment completed            
            $paidAmount = (float) $paymentData[0]['amount'];   //first installment
            $paidAmount+=(float) $paymentData[1]['amount'];   //second installment            
            $paymentStatus = 2; //Payment is completed
            $paymentStatusText = "completed (" . $this->CI->money_component->formatMoney($paidAmount) . " of " . $this->CI->money_component->formatMoney($total) . ")";
        } else {
            $paymentStatus = -1; //error
            $paymentStatusText = "undefined";
        }

        $result = array(
            'paidAmount' => $paidAmount,
            'paymentStatus' => $paymentStatus,
            'paymentStatusText' => $paymentStatusText
        );
        //******************************************************************************************************************
        //var_dump($result);
        return $result;
    }

}
