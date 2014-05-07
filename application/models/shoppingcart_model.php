<?php
class Shoppingcart_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }
    
//    public function get_visitingcard_total_by_card_id($card_id){
//        $sql="SELECT quantity*price AS 'total' FROM visitingcards WHERE card_id='" . $card_id . "' ";
//        $query = $this->db->query($sql);
//        return $query->row_array();
//    }
//    
//    public function get_letterhead_total_by_card_id($card_id){
//        $sql="SELECT quantity*price AS 'total' FROM letterhead WHERE card_id='" . $card_id . "' ";
//        $query = $this->db->query($sql);
//        return $query->row_array();
//    }
    
    public function get_card_data($cardtype,$card_id_array){
        
        $result=array();
        
        foreach ($card_id_array as $key=>$value){
            $sql="SELECT *,quantity*price as 'total' FROM " . $cardtype . " WHERE card_id='" . $value . "' ";
            $query = $this->db->query($sql);
        
            $result[]=$query->row_array();
        }
        
        return $result;
    }
}
?>
