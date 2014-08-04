<?php

class Postercalender_frames_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    public function getPosterCalenderFrames($type_id=null){
        if (!isset($type_id)) {
            $query = $this->db->query("SELECT * FROM `postercalender_frames` ORDER BY id");
            return $query->result_array();
        }

        $query = $this->db->query("SELECT * FROM `postercalender_frames` WHERE type_id='" . $type_id . "'");
        return $query->result_array();
    }
    
    public function getPosterCalenderFrameData($id){
        $query = $this->db->query("SELECT * FROM `postercalender_frames` WHERE id=" . $id );
        return $query->row_array();
    }
}

?>
