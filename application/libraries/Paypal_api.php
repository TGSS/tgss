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
use PayPal\Api\Item;
use PayPal\Api\ItemList;

class Paypal_api {

//    private $endpoints = array ('test' => 'api.sandbox.paypal.com', 'live' => 'api.paypal.com');
// 
//    private $live = false;
//    private $endpoint;
//    private $clientId;
//    private $secret;
    private $CI;
    private $mode;
    private $clientID;
    private $secret;

    public function __construct() {
        $this->CI = &get_instance();
        $this->mode = ENV_PAYPAL_MODE;
        $this->clientID = ENV_PAYPAL_CLIENT_ID;
        $this->secret = ENV_PAYPAL_SECRET;
    }

    public function getAccessToken() {
        $oauthCredential = new OAuthTokenCredential($this->clientID, $this->secret);
        $accessToken = $oauthCredential->getAccessToken(array('mode' => $this->mode));

        return $accessToken;
    }

    public function getApiContext() {
        $apiContext = new ApiContext(
                        new OAuthTokenCredential(
                                ENV_PAYPAL_CLIENT_ID,
                                ENV_PAYPAL_SECRET
                        )
        );

        $apiContext->setConfig(
                array(
                    'mode' => ENV_PAYPAL_MODE,
                    'http.ConnectionTimeOut' => 120,
                    'log.LogEnabled' => true,
                    'log.FileName' => '../PayPal.log',
                    'log.LogLevel' => 'FINE'
                )
        );

        return $apiContext;
    }

    public function makePayPalPayment($total, $currency, $paymentDescription,$orderSummary=null) {
        $payer = new Payer();
        $payer->setPayment_method("paypal");

        $amount = new Amount();
        $amount->setCurrency($currency);
        $amount->setTotal($total);

        $transaction = new Transaction();
        $transaction->setDescription($paymentDescription);
        $transaction->setAmount($amount);

        if ($orderSummary!=null){
            $transaction->setItemList($orderSummary);
        }               

        $redirectUrls = new RedirectUrls();
        $redirectUrls->setReturn_url(base_url() . 'paypal-success');
        $redirectUrls->setCancel_url(base_url() . 'paypal-cancel');

        $payment = new Payment();
        $payment->setIntent("sale");
        $payment->setPayer($payer);
        $payment->setRedirect_urls($redirectUrls);
        $payment->setTransactions(array($transaction));

//        print_r("<pre>");
//        print_r($payment);
//        print_r("<pre>");
//        exit();
        $apiContext = $this->getApiContext();
        $paymentData = $payment->create($apiContext);

        $result = array(
            'paymentID' => $paymentData->id,
            'approve_url' => $paymentData->links[1]->href
        );

        //var_dump($result);exit();
        return $result;
    }

    public function paymentSuccess($paymentID,$payerID) {
        $payment_id = $paymentID;
        $payer_id = $payerID;
        $apiContext=$this->getApiContext();
        
        $payment = Payment::get($payment_id, $apiContext);
        $paymentExecution = new PaymentExecution();
        $paymentExecution->setPayer_id($payer_id);
        $result = $payment->execute($paymentExecution, $apiContext);
        
        return $result;
    }    

}

?>