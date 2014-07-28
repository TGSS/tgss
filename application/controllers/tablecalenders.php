<?php

class Tablecalenders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('tablecalender_types_model');
        $this->load->model('tablecalenders_model');
    }

    public function select() {
        $this->load->helper('form');

        $data['tablecalender_type'] = $this->tablecalender_types_model->getTableCalenderTypes();

        $data['template'] = "tablecalenders/select";
        $this->load->view('template', $data);
    }

    public function get_total_price($parent_type_id,$no_of_pages, $card_type, $quantity, $withLamination=0) {

        $data = $this->tablecalenders_model->getPrice($parent_type_id,$no_of_pages, $card_type, $quantity);        
        //*********************************************************************************************************************
        //with or without lamination calculation
        $pricePerItem=0;
        
        if ($withLamination==1){
            $pricePerItem=(float)$data[0]['with_lamination'];
        }else{
            $pricePerItem=(float)$data[0]['price'];            
        }
        //*********************************************************************************************************************
        $total = $pricePerItem * (float)$quantity;
        
        $result['card_id'] = $data[0]['card_id'];
        $result['with_lamination']=$data[0]['with_lamination'];
        $result['lamination_extra_charge']=(float)$data[0]['with_lamination']-(float)$data[0]['price'];
        $result['price'] =$pricePerItem;
        $result['total'] = $total;

        return $this->ajax_handler->responseSuccess($result);
    }

    public function get_tablecalender_type_data($tablecalender_type_id) {
        $data['tablecalender_type_data'] = $this->tablecalender_types_model->getTableCalenderTypes($tablecalender_type_id);
        $data['no_of_pages'] = $this->tablecalenders_model->getNoOfPages($tablecalender_type_id);
        
        return $this->ajax_handler->responseSuccess($data);
    }
    
    public function get_card_type_data($tablecalender_type_id,$no_of_pages) {
        $data['card_type_data'] = $this->tablecalenders_model->getCardType($tablecalender_type_id,$no_of_pages);
        
        return $this->ajax_handler->responseSuccess($data);
    }

}

?>
