<?php

class Vouchers extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('voucher_types_model');
        $this->load->model('vouchers_model');
    }

    public function index() {
        $data['voucher_types'] = $this->voucher_types_model->getVoucherTypes();

        $data['template'] = "vouchers/index";
        $this->load->view('template', $data);
    }

    public function select() {
        $this->load->helper('form');

        $data['voucher_type'] = $this->voucher_types_model->getVoucherTypes();

        $data['template'] = "vouchers/select";
        $this->load->view('template', $data);
    }

    public function get_total_price($parent_type_id, $card_type, $quantity) {

        $data = $this->vouchers_model->getPrice($parent_type_id, $card_type, $quantity);
        $total = $data[0]['price'] * $quantity;

        $result['card_id'] = $data[0]['card_id'];
        $result['price'] = $data[0]['price'];
        $result['total'] = $total;

        return $this->ajax_handler->responseSuccess($result);
    }

    public function get_voucher_type_data($voucher_type_id) {
        $data['voucher_data'] = $this->voucher_types_model->getVoucherTypes($voucher_type_id);
        $data['card_type'] = $this->vouchers_model->getCardType($voucher_type_id);
        $data['quantity'] = $this->vouchers_model->getQuantity($voucher_type_id);
        
        return $this->ajax_handler->responseSuccess($data);
    }

}

?>
