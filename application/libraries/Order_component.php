<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

require 'paypal/vendor/autoload.php';

use PayPal\Auth\OAuthTokenCredential;
use PayPal\Api\Address;
use PayPal\Api\Authorization;
use PayPal\Api\Amount;
use PayPal\Api\AmountDetails;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\FundingInstrument;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Transaction;
use PayPal\Rest\ApiContext;
use PayPal\Api\ItemList;
use PayPal\Api\Item;

class Order_component {

    var $CI;

    public function __construct() {
        $this->CI = & get_instance();

        $this->CI->load->library('datetime_component');
        $this->CI->load->library('user_component');
        //$this->CI->load->library('money_component');
        $this->CI->load->model('orders_model');
        $this->CI->load->model('orderdetails_model');
    }

    /**
     * 
     * Function to return "order" and "order details" data
     * @param type $order_id
     */
    public function get_complete_order_data($order_id) {

        //********************************************************************************************************************* 
        $orders = $this->CI->orders_model->get_order_by_order_id($order_id);
        $billing_addresses = $this->CI->orderdetails_model->get_billing_address_by_order_id($order_id);
        $delivery_addresses = $this->CI->orderdetails_model->get_delivery_address_by_order_id($order_id);
        //********************************************************************************************************************* 
        //Formatting "Timestamp" to "Human Date Time"
        $user_timezone_offset = $this->CI->user_component->get_timezone_offset();
        $orders['order_date_formatted'] = $this->CI->datetime_component->get_datetime_for_UI_from_timestamp($orders['order_date'], $user_timezone_offset, true, 0);
        //********************************************************************************************************************* 
        $orderdetails = array();
        //********************************************************************************************************************* 
        $visitingcards_orderdetails = $this->CI->orderdetails_model->get_visitingcards_by_order_id($order_id);

        if (!empty($visitingcards_orderdetails)) {
            $orderdetails['visitingcards'] = array(
                'title' => 'Visiting Cards',
                'data' => $visitingcards_orderdetails
            );
        }
        //********************************************************************************************************************* 
        $letterheads_orderdetails = $this->CI->orderdetails_model->get_letterheads_by_order_id($order_id);

        if (!empty($letterheads_orderdetails)) {
            $orderdetails['letterheads'] = array(
                'title' => 'Letterheads',
                'data' => $letterheads_orderdetails
            );
        }
        //*********************************************************************************************************************       
        $result = array(
            'orders' => $orders,
            'billing_addresses' => $billing_addresses,
            'delivery_addresses' => $delivery_addresses,
            'orderdetails' => $orderdetails
        );

        return $result;
    }

    /**
     * 
     * Function to return array formatted to used for order summary in "Paypal"
     */
//    public function getItemListForPaypal($order_id) {
//        $orderData = $this->get_complete_order_data($order_id);
//
//        $itemList = new ItemList();
//        $itemArr = array();
//
//        foreach ($orderData['orderdetails'] as $key1 => $cards) {
//
//            //$itemName=$key1;
//
//            foreach ($cards['data'] as $key2 => $value) {
//                //var_dump($value);exit();
//                $item = new Item();
//
//                $itemName = $cards['title'] . " - " . $value['color'] . " (" . $value['quantity'] . " cards)";
//                //$item->setQuantity($value['quantity']);
//                $item->setPrice($value['total']);
//                //$item->setQuantity($value['quantity']);
//                $item->setQuantity(1);
//                $item->setName($itemName);
//                //$item->setPrice(10);
//                $total = $value['total'];
//                //Currency Conversion
//                $totalUSD = $total / 1000; //Convert "Myanmar Kyats" to "USD"
//                $totalUSD = $this->CI->money_component->formatMoney($totalUSD);
//
//                $item->setPrice($totalUSD);
//                $item->setCurrency("USD");
//
//                $itemArr[] = $item;
//            }
//        }
//
//        $itemList->setItems($itemArr);
//
//        return $itemList;
//    }

    public function getInstallmentItemForPaypal($installmentAmount,$installmentDesc) {

        $itemList = new ItemList();
        $itemArr = array();
        $item = new Item();

        $item->setQuantity(1);
        $item->setName($installmentDesc);

        $item->setPrice($installmentAmount);
        $item->setCurrency("USD");

        $itemArr[] = $item;

        $itemList->setItems($itemArr);

        return $itemList;
    }

}
