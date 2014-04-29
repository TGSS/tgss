<?php

class Visitingcards_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

//    public function insert() {
//        
//        $data = array(
//            'title' => $this->input->post('title'),
//            'quantity' => (int) $this->input->post('quantity'),
//            'price' => (float) $this->input->post('price')
//        );
//
//        return $this->db->insert('items', $data);
//    }
//    public function get_items($id = null) {
//        if (!isset($id)) {
//            $query = $this->db->get('items');
//            return $query->result_array();
//        }
//
//        $query = $this->db->get_where('items', array('id' => $id));
//        return $query->row_array();
//    }

    public function get_visitingcards($id = null) {
        if (!isset($id)) {
            $query = $this->db->query("SELECT * FROM visitingcards ORDER BY card_quality,color,quantity");
            return $query->result_array();
        }

        $query = $this->db->query("SELECT * FROM visitingcards WHERE id=" . $id);
        return $query->row_array();
    }
    
    public function get_visitingcards_quality(){
        $query = $this->db->query("SELECT DISTINCT card_quality,card_quality_display FROM visitingcards ORDER BY card_quality");
        return $query->result_array();
    }

    public function get_visitingcards_color(){
        $query = $this->db->query("SELECT DISTINCT color FROM visitingcards ORDER BY color");
        return $query->result_array();
    }
    
    public function get_visitingcards_quantity(){
        $query = $this->db->query("SELECT DISTINCT quantity FROM visitingcards ORDER BY quantity");
        return $query->result_array();
    }
    
    public function get_visitingcards_total_price($card_quality,$color,$quantity){
        $sql="SELECT card_id,price FROM visitingcards WHERE card_quality='" . $card_quality . "' " .
                "AND color='" . $color . "' " .
                "AND quantity=" . $quantity;
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}

?>
