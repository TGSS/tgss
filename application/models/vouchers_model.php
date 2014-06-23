<?php

class Vouchers_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }
 
    public function getCardType($parent_type_id){
        $sql="SELECT DISTINCT card_type,card_type_display FROM vouchers WHERE parent_type_id='" . $parent_type_id . "' ORDER BY card_type";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    
    public function getQuantity($parent_type_id){
        $sql="SELECT DISTINCT quantity FROM vouchers WHERE parent_type_id='" . $parent_type_id . "' ORDER BY card_type";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    
    public function getPrice($parent_type_id,$card_type,$quantity){
        $sql="SELECT card_id,price FROM vouchers WHERE card_type='" . $card_type . "' " .
                "AND parent_type_id='" . $parent_type_id . "' " .
                "AND quantity=" . $quantity;
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
?>
