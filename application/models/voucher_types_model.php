<?php

class Voucher_types_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function getVoucherTypes($type_id=null){
        if (!isset($type_id)) {
            $query = $this->db->query("SELECT * FROM voucher_types ORDER BY type_id");
            return $query->result_array();
        }

        $query = $this->db->query("SELECT * FROM voucher_types WHERE type_id='" . $type_id . "'");
        return $query->row_array();
    }
}

?>
