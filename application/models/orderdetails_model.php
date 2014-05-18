<?php

class Orderdetails_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function get_visitingcards_by_order_id($order_id){
        $sql="SELECT " .
                "`visitingcards_orderdetails`.*,`visitingcards`.`card_type_display`,`visitingcards`.`color` " .
            "FROM `visitingcards_orderdetails` " .
            "INNER JOIN `visitingcards` " .
            "ON `visitingcards_orderdetails`.`card_id`=`visitingcards`.`card_id` " .
            "WHERE order_id=" . $order_id . " " .
            "ORDER BY `visitingcards_orderdetails`.`card_id`";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    

    public function get_letterheads_by_order_id($order_id){
        $sql="SELECT " .
                "`letterheads_orderdetails`.*,`letterheads`.`card_type_display`,`letterheads`.`color` " .
            "FROM `letterheads_orderdetails` " .
            "INNER JOIN `letterheads` " .
            "ON `letterheads_orderdetails`.`card_id`=`letterheads`.`card_id` " .
            "WHERE order_id=" . $order_id . " " .
            "ORDER BY `letterheads_orderdetails`.`card_id`";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}

?>
