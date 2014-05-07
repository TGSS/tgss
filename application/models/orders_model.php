<?php

class Orders_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function save_order($user_id, $shoppingcart_data) {

        $this->db->trans_begin();
        //************************************************************************************************************************
        //"orders" table insert
        $order_data = array(
            'order_ref_no' => $this->get_new_order_ref_no(),
            'order_date' => time(), //saving "timestamp" for the "orders"
            'user_id' => $user_id,
            'total' => $shoppingcart_data['total']
        );

        $continue = $this->db->insert('orders', $order_data);

        if ($continue) {
            $order_id = $this->db->insert_id();
        }
        //************************************************************************************************************************
        //save to "visitingcards_orderdetails" table
        if ($continue) {
            $continue=$this->insert_order_details($shoppingcart_data, $order_id, "visitingcards");
        }
        //************************************************************************************************************************
        //save to "letterheads_orderdetails" table
        if ($continue) {
            $continue=$this->insert_order_details($shoppingcart_data, $order_id, "letterheads");
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

        if ($continue) {
            $this->db->trans_commit();
            return true;
        } else {
            $this->db->trans_rollback();
            return false;
        }
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
        if (!array_key_exists($cardtype, $shoppingcart_data['card_data'])) {
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

}

?>
