<?php

class Letterheads_model extends CI_Model {

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

    public function get_items($id = null) {
        if (!isset($id)) {
            $query = $this->db->get('letterheads');
            return $query->result_array();
        }

        $query = $this->db->get_where('items', array('id' => $id));
        return $query->row_array();
    }
    
    public function get_letterhead_quality(){
        $query = $this->db->query("SELECT DISTINCT card_quality,card_quality_display FROM letterheads ORDER BY card_quality");
        return $query->result_array();
    }

    public function get_letterhead_color(){
        $query = $this->db->query("SELECT DISTINCT color FROM letterheads ORDER BY color");
        return $query->result_array();
    }
    
    public function get_letterhead_quantity(){
        $query = $this->db->query("SELECT DISTINCT quantity FROM letterheads ORDER BY quantity");
        return $query->result_array();
    }
    
    public function get_letterhead_price($card_quality,$color,$quantity){
        $sql="SELECT price FROM letterheads WHERE color='" . $color . "' " .
                "AND quantity=" . $quantity;
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function get_letterheads_total_price($color,$quantity){
        $sql="SELECT card_id,price FROM letterheads WHERE  color='" . $color . "' " .
                "AND quantity=" . $quantity;
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}

?>
