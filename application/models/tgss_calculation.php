<?php
class tgss_calculation extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function vc($vc_card_quality,$vc_color,$vc_quentity)
    {
    	$where = array('Card_Quality' => $vc_card_quality,'Color' => $vc_color,'Quantity' => $vc_quentity);
    	$this->db->select('Price');
    	return $this->db->get_where('v/c', $where)->result();
    }

    function lh($lh_color,$lh_quentity)
    {
    	$where = array('Color' => $lh_color,'Quantity' => $lh_quentity);
    	$this->db->select('Price');
    	return $this->db->get_where('L/H', $where)->result();
    }
}
?>