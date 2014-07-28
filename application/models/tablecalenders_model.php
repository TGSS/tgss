<?php

class Tablecalenders_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }
 
    public function getCardType($parent_type_id,$no_of_pages){
        $sql="SELECT DISTINCT card_type,card_type_display FROM tablecalenders WHERE parent_type_id='" . $parent_type_id . "' " .
               " AND no_of_pages=" . $no_of_pages . " ORDER BY card_type";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    
    public function getNoOfPages($parent_type_id){
        $sql="SELECT DISTINCT no_of_pages FROM tablecalenders WHERE parent_type_id='" . $parent_type_id . "' ORDER BY card_type";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    
    public function getPrice($parent_type_id,$no_of_pages,$card_type,$quantity){
        $sql="SELECT card_id,price,with_lamination FROM tablecalenders WHERE card_type='" . $card_type . "' " .
                "AND parent_type_id='" . $parent_type_id . "' " .
                "AND no_of_pages=" . $no_of_pages . " " . 
                "AND quantity=" . $quantity;
        //print_r($sql);exit();
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
?>
