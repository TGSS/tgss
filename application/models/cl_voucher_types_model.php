<?php

class CL_voucher_types_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function getCLVoucherTypes($type_id=null){
        if (!isset($type_id)) {
            $query = $this->db->query("SELECT * FROM cl_voucher_types ORDER BY type_id");
            return $query->result_array();
        }

        $query = $this->db->query("SELECT * FROM cl_voucher_types WHERE type_id='" . $type_id . "'");
        return $query->row_array();
    }
}

?>
