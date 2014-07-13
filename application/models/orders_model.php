<?php

class Orders_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('payment_component');
        $this->load->database();
    }

    public function get_order_by_order_id($order_id) {
        $query = $this->db->query("SELECT * FROM `orders_view` WHERE order_id=" . $order_id);
        return $query->row_array();
    }

    /**
     * 
     * return "$result"
     * $result=array(
            'status'=>boolean,
            'order_id'=>string
        );
     */
    public function save_order($user_id, $shoppingcart_data, $total) {

        $this->db->trans_begin();
        //************************************************************************************************************************
        //"orders" table insert
        $order_data = array(
            'order_ref_no' => $this->get_new_order_ref_no(),
            'order_date' => time(), //saving "timestamp" for the "orders"
            'user_id' => $user_id,
            'total' => $total
        );

        $continue = $this->db->insert('orders', $order_data);

        if ($continue) {
            $order_id = $this->db->insert_id();
        }
        //************************************************************************************************************************
        //save to "billing_addresses" table
        if ($continue) {
            $continue = $this->insert_billing_address($order_id);
        }
        //************************************************************************************************************************
        //save to "delivery_addresses" table
        if ($continue) {
            $continue = $this->insert_delivery_address($order_id);
        }
        //************************************************************************************************************************
        //save to "visitingcards_orderdetails" table
        if ($continue) {
            $continue = $this->insert_order_details($shoppingcart_data, $order_id, "visitingcards");
        }
        //************************************************************************************************************************
        //save to "letterheads_orderdetails" table
        if ($continue) {
            $continue = $this->insert_order_details($shoppingcart_data, $order_id, "letterheads");
        }
        //************************************************************************************************************************
//        if ($continue) {
//            $user_id = $this->db->insert_id();
//
//            $profileData = array(
//                'user_id' => $user_id,
//                'firstname' => $this->input->post('firstname'),
//                'lastname' => $this->input->post('lastname'),
//                'address1' => $this->input->post('address1'),
//                'address2' => $this->input->post('address2'),
//                'city' => $this->input->post('city'),
//                'country' => $this->input->post('country'),
//                'postcode' => $this->input->post('postcode'),
//                'phoneno' => $this->input->post('phoneno'),
//                'mobileno' => $this->input->post('mobileno'),
//            );
//            
//            $continue = $this->db->insert('profiles', $profileData);
//        }

        $result=array(
            'status'=>false,
            'order_id'=>null
        );
        
        if ($continue) {
            $this->db->trans_commit();
            $result['status']=true;
            $result['order_id']=$order_id;
        } else {
            $this->db->trans_rollback();            
        }
        
        return $result;
    }

    public function get_new_order_ref_no() {

        $new_order_ref_no = "";

        while (true) {
            $new_order_ref_no = rand(1000000000, 9999999999);

            $query = $this->db->query("SELECT COUNT(order_id) AS `order_count` FROM `orders` WHERE `order_ref_no`=" . $new_order_ref_no);
            $temp = $query->row_array();
            $count = $temp['order_count'];

            if ($count == 0) {
                break;
            }
        }

        return $new_order_ref_no;
    }

    private function insert_order_details($shoppingcart_data, $order_id, $cardtype) {
        //If array doesn't have the card information, return "true" to keep the transaction going
        if (!array_key_exists($cardtype, $shoppingcart_data)) {
            return true;
        }

        $continue = true;

        foreach ($shoppingcart_data[$cardtype] as $key => $value) {
            $data = array(
                'order_id' => $order_id,
                'card_id' => $value['card_id'],
                'quantity' => $value['quantity'],
                'price' => $value['price'],
                'total' => $value['total'],
            );

            $continue = $this->db->insert($cardtype . '_orderdetails', $data);

            if ($continue == false) {
                break;
            }
        }

        return $continue;
    }

    private function insert_billing_address($order_id) {
        $data = array(
            'order_id' => $order_id,
            'email' => $this->input->post('billing_email'),
            'firstname' => $this->input->post('billing_firstname'),
            'lastname' => $this->input->post('billing_lastname'),
            'address1' => $this->input->post('billing_address1'),
            'address2' => $this->input->post('billing_address2'),
            'city' => $this->input->post('billing_city'),
            'country' => $this->input->post('billing_country'),
            'postcode' => $this->input->post('billing_postcode'),
            'phoneno' => $this->input->post('billing_phoneno'),
            'mobileno' => $this->input->post('billing_mobileno'),
        );

        return $this->db->insert('billing_addresses', $data);
    }

    private function insert_delivery_address($order_id) {

        $data = array();

        if (isset($_POST['different_delivery_address'])) {
            $data = array(
                'order_id' => $order_id,
                'firstname' => $this->input->post('delivery_firstname'),
                'lastname' => $this->input->post('delivery_lastname'),
                'address1' => $this->input->post('delivery_address1'),
                'address2' => $this->input->post('delivery_address2'),
                'city' => $this->input->post('delivery_city'),
                'country' => $this->input->post('delivery_country'),
                'postcode' => $this->input->post('delivery_postcode'),
                'phoneno' => $this->input->post('delivery_phoneno'),
                'mobileno' => $this->input->post('delivery_mobileno'),
            );
        } else {
            $data = array(
                'order_id' => $order_id,
                'firstname' => $this->input->post('billing_firstname'),
                'lastname' => $this->input->post('billing_lastname'),
                'address1' => $this->input->post('billing_address1'),
                'address2' => $this->input->post('billing_address2'),
                'city' => $this->input->post('billing_city'),
                'country' => $this->input->post('billing_country'),
                'postcode' => $this->input->post('billing_postcode'),
                'phoneno' => $this->input->post('billing_phoneno'),
                'mobileno' => $this->input->post('billing_mobileno'),
            );
        }

        return $this->db->insert('delivery_addresses', $data);
    }

    /**
     * 
     * @param type $is_date_filter_apply - boolean to decide whether to apply the date filter or not
     * @param type $is_custom_filter_apply - boolean to decide whether to apply custom filter or not (custom filter such as first name, last name)
     * @param type $from_date
     * @param type $to_date
     * @param type $search_by
     * @param type $search_key
     */
    public function search($is_date_filter_apply,$is_custom_filter_apply,$from_date=null,$to_date=null,$search_by=null,$search_key=null){
        //***************************************************************************************************************************************************************
        //Constructing "WHERE" statement
        $where='';
        
        //$is_date_filter_apply=false;
        
        if ($is_date_filter_apply){
            $where = " (order_date>=" . $from_date . " AND order_date<=" . $to_date . ") ";
        }
        
        //print_r($where . "<br/>");
        
        if ($is_custom_filter_apply){
            if ($where!=''){
                $where.=" AND ";
            }
            
            $where .= $search_by . " LIKE '%" . $search_key . "%'";
        }
        
        //print_r($where . "<br/>");
        
        if ($where!=''){
            $where = "WHERE " . $where;
        }
        
        //print_r($where . "<br/>");exit();
        //***************************************************************************************************************************************************************
        $order=" ORDER BY order_date ASC";
        
        $sql="SELECT * FROM orders_view " .
                $where .
                $order;
        
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    
    public function updatePaymentStatus($order_id){        
        $paymentData=$this->payment_component->get_payment_status($order_id);
        
        $this->db->where('order_id',  $order_id);
        return $this->db->update('orders', array(
                                            'payment_status' => $paymentData['paymentStatus'],
                                            'payment_status_text' => $paymentData['paymentStatusText'],
                                        )
                                    );
    }
}

?>
