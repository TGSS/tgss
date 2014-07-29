<?php

class Tablecalender_types_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function getTableCalenderTypes($type_id=null){
        if (!isset($type_id)) {
            $query = $this->db->query("SELECT * FROM tablecalender_types ORDER BY type_id");
            return $query->result_array();
        }

        $query = $this->db->query("SELECT * FROM tablecalender_types WHERE type_id='" . $type_id . "'");
        return $query->row_array();
    }
}

?>
