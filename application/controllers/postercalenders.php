<?php

class Postercalenders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('postercalender_types_model');
        $this->load->model('postercalender_frames_model');        
        $this->load->model('postercalenders_model');
    }

    public function select() {
        $this->load->helper('form');

        $data['postercalender_type'] = $this->postercalender_types_model->getPosterCalenderTypes();

        $data['template'] = "postercalenders/select";
        $this->load->view('template', $data);
    }

    public function get_total_price($parent_type_id, $card_type,$no_of_column, $quantity,$frame_id) {

        $posterCalenderData = $this->postercalenders_model->getPrice($parent_type_id, $card_type,$no_of_column, $quantity);        
        $frameData = $this->postercalender_frames_model->getPosterCalenderFrameData($frame_id);   
        
        $pricePerItem= (float)$posterCalenderData[0]['price'] + (float)$frameData['price'];
        
        $total = $pricePerItem * (float)$quantity;
        
        $result['card_id']=$posterCalenderData[0]['card_id'];
        $result['price_per_item'] = $pricePerItem;
        $result['price'] = $posterCalenderData[0]['price'];
        $result['frame_price'] =  (float)$frameData['price'];
        $result['total'] = $total;

        return $this->ajax_handler->responseSuccess($result);
    }

    public function get_postercalender_type_data($postercalender_type_id) {
        $data['postercalender_type_data'] = $this->postercalender_types_model->getPosterCalenderTypes($postercalender_type_id);
        $data['postercalender_frame_data'] = $this->postercalender_frames_model->getPosterCalenderFrames($postercalender_type_id);
        
        return $this->ajax_handler->responseSuccess($data);
    }
    
    
    public function get_postercalender_frame_data($id) {        
        $data['postercalender_frame_data'] = $this->postercalender_frames_model->getPosterCalenderFrameData($id);         
        return $this->ajax_handler->responseSuccess($data);
    }
}

?>
