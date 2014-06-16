<?php

class Payments_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function get_payment_by_order_id($order_id) {
        $query = $this->db->query("SELECT * FROM `payments` WHERE order_id=" . $order_id);
        return $query->result_array();
    }
    
    public function savePayment($order_id,$user_id,$payment_datetime,
                                $amount,$currency,$payment_gateway,
                                $payment_gateway_id,$payment_info) {

        $paymentData = array(
            'order_id' => $order_id,
            'user_id' => $user_id,
            'payment_datetime' => $payment_datetime,
            'amount' => $amount,
            'currency' => $currency,
            'payment_gateway' => $payment_gateway,
            'payment_gateway_id' => $payment_gateway_id,
            'payment_info' => $payment_info,
            'status' => 1,    //status "1" mean "success"
        );

        return $this->db->insert('payments', $paymentData);
              
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
     * 1 = payment in progress
     * 2 = completed
     * -1 = undefined
     */
    public function get_payment_status($order_id){        
        $sql="SELECT order_id,total FROM `orders` WHERE order_id=" . $order_id;
        $query = $this->db->query($sql);
        $orderData= $query->row_array();
        $total=(float)$orderData['total'];
        //******************************************************************************************************************
        $sql="SELECT payment_id,amount FROM `payments` WHERE order_id=" . $order_id;
        $query = $this->db->query($sql);
        $paymentData= $query->result_array();        
        $paidAmount=0;
        
        if (!empty($paymentData)){
            foreach ($paymentData as $key=>$value){
                $paidAmount+=(float)$value['amount'];
            }
        }
        //******************************************************************************************************************
        //Currency Conversion
        $paidAmount*=1000;
        
        $remainingAmount=$total-$paidAmount;       
        $paymentStatusText="";
        $paymentStatus=0;
        
        if ($total==$remainingAmount){
            $paymentStatus=0;
            $paymentStatusText="pending";
        }elseif ($remainingAmount==0){
            $paymentStatus=2;
            $paymentStatusText="completed";       
        }else if ($remainingAmount<$total){
            $paymentStatus=1; //Payment in progress
            $paymentStatusText=$paidAmount . " paid";
        }else{
            $paymentStatus=-1;
            $paymentStatusText="undefined";
        }
        
        $result= array(
            'paymentStatus'=>$paymentStatus,
            'paymentStatusText'=>$paymentStatusText
        );
        //******************************************************************************************************************
        //var_dump($result);
        return $result;
    }
    
}

?>
