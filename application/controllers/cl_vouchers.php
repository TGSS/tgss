<?php

class Cl_vouchers extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('cl_voucher_types_model');
        $this->load->model('cl_vouchers_model');
    }

    public function select() {
        $this->load->helper('form');

        $data['cl_voucher_type'] = $this->cl_voucher_types_model->getCLVoucherTypes();

        $data['template'] = "cl_vouchers/select";
        $this->load->view('template', $data);
    }

    public function get_total_price($parent_type_id, $card_type, $quantity) {

        $data = $this->cl_vouchers_model->getPrice($parent_type_id, $card_type, $quantity);
        $total = $data[0]['price'] * $quantity;

        $result['card_id'] = $data[0]['card_id'];
        $result['price'] = $data[0]['price'];
        $result['total'] = $total;

        return $this->ajax_handler->responseSuccess($result);
    }

    public function get_cl_voucher_type_data($voucher_type_id) {
        $data['cl_voucher_data'] = $this->cl_voucher_types_model->getCLVoucherTypes($voucher_type_id);
        $data['card_type'] = $this->cl_vouchers_model->getCardType($voucher_type_id);
        $data['quantity'] = $this->cl_vouchers_model->getQuantity($voucher_type_id);
        
        return $this->ajax_handler->responseSuccess($data);
    }

}

?>
