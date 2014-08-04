<?php

class Postercalenders_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }
 
    public function getCardType($parent_type_id,$no_of_pages){
        $sql="SELECT DISTINCT card_type,card_type_display FROM postercalenders WHERE parent_type_id='" . $parent_type_id . "' " .
               " AND no_of_pages=" . $no_of_pages . " ORDER BY card_type";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    
    public function getPrice($parent_type_id, $card_type,$no_of_column, $quantity){
        $sql="SELECT card_id,price FROM postercalenders WHERE card_type='" . $card_type . "' " .
                "AND parent_type_id='" . $parent_type_id . "' " .
                "AND no_of_column=" . $no_of_column . " " . 
                "AND quantity=" . $quantity;
        
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
?>
