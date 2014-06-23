<?php

class Vouchers extends CI_Controller {

    public function __construct() {
        parent::__construct();        
        $this->load->model('voucher_types_model');
        $this->load->model('vouchers_model');
    }
   
    public function index(){
        $data['voucher_types']=$this->voucher_types_model->getVoucherTypes();
        
        $data['template'] = "vouchers/index";
        $this->load->view('template', $data);
    }
    
    public function select($type_id){
        $this->load->helper('form');
        
        $data['parent_type_id']=$type_id;
        $data['voucher_type']=$this->voucher_types_model->getVoucherTypes($type_id);
        $data['card_type']=$this->vouchers_model->getCardType($type_id);
        $data['quantity']=$this->vouchers_model->getQuantity($type_id);
        
        $data['template'] = "vouchers/select";
        $this->load->view('template', $data);
    }
    
    public function get_total_price($parent_type_id,$card_type,$quantity){
        
        $data=$this->vouchers_model->getPrice($parent_type_id,$card_type,$quantity);
        $total=$data[0]['price']*$quantity;
        
        $result['card_id']=$data[0]['card_id'];
        $result['price']=$data[0]['price'];
        $result['total']=$total;
        
        return $this->ajax_handler->responseSuccess($result);
    }
       
}

?>
