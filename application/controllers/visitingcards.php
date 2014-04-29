<?php

class Visitingcards extends CI_Controller {

    public function __construct() {
        parent::__construct();
        //$this->load->library('session');
        $this->load->model('visitingcards_model');
    }

//    public function save() {
//        $this->load->helper('form');
//       
//        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
//            $this->items_model->insert();
//            $this->session->set_flashdata('message', 'Item entry success');
//            redirect('items/index');    //redirect to item display page
//        }
//
//        $this->load->view('templates/header');
//        $this->load->view('items/save');
//        $this->load->view('templates/left');
//        $this->load->view('templates/footer');
//    }

//    public function index() {
//        $data['items'] = $this->items_model->get_items();
//
//        $this->load->view('templates/header');        
//        //Check if the "flash" message exists
//        if ($this->session->flashdata('message')){
//            $this->load->view('templates/message'); //load message view
//        }        
//        $this->load->view('items/index', $data);
//        $this->load->view('templates/left');
//        $this->load->view('templates/footer');
//    }

//    public function view($id) {
//        $data['items'] = $this->items_model->get_items($id);
//
//        if (empty($data['items'])) {
//            show_404();
//        }
//
//        $this->load->view('templates/header');
//        $this->load->view('items/view', $data);
//        $this->load->view('templates/left');
//        $this->load->view('templates/footer');                
//    }
    
    public function select(){
        $this->load->helper('form');
        
        $data['card_quality']=$this->visitingcards_model->get_visitingcards_quality();
        $data['color']=$this->visitingcards_model->get_visitingcards_color();
        $data['quantity']=$this->visitingcards_model->get_visitingcards_quantity();
        
        $tableData=$this->generate_visiting_cards_table($data['card_quality'], $data['color'], $data['quantity']);
        
        $data['tableData']=$tableData;
        $data['temlate'] = "visitingcards/select";
        $this->load->view('template', $data);
    }
    
    public function get_total_price($card_quality,$color,$quantity){
        
        $data=$this->visitingcards_model->get_visitingcards_total_price($card_quality,$color,$quantity);
        $total=$data[0]['price']*$quantity;
        
        $result['card_id']=$data[0]['card_id'];
        $result['price']=$data[0]['price'];
        $result['total']=$total;
        //echo json_encode($result);exit();
        return responseSuccess($result);
    }
       
    public function generate_visiting_cards_table($card_quality,$color,$quantity){
        $tableData=array();
        //Selecting all visiting cards
        $visitingcardData=$this->visitingcards_model->get_visitingcards();       
        
        //**********************************************************************************************************
        //Building Tables
        foreach ($card_quality as $key=>$value){
            $index=$value['card_quality'];
            $tableData[$index]['table_display_name']=$value['card_quality_display'];
        }
        //**********************************************************************************************************
        //Building Table Headers
        foreach ($tableData as $key=>$value){            
            $tableData[$key]['header'][0]='';
            
            foreach ($quantity as $key2=>$value2){
                $tableData[$key]['header'][]=$value2['quantity'];
            }
        }
        //**********************************************************************************************************
        //Building Column
        foreach ($tableData as $key=>$value){                
            foreach ($color as $key2=>$value2){
                $temp=array();
                $temp[]=array('card_id'=>'','price'=>$value2['color']);
                
                $temp[]=$this->get_card_id_and_price($visitingcardData, $key, $value2['color'], $tableData[$key]['header'][1]);
                $temp[]=$this->get_card_id_and_price($visitingcardData, $key, $value2['color'], $tableData[$key]['header'][2]);
                $temp[]=$this->get_card_id_and_price($visitingcardData, $key, $value2['color'], $tableData[$key]['header'][3]);
                $temp[]=$this->get_card_id_and_price($visitingcardData, $key, $value2['color'], $tableData[$key]['header'][4]);
                $tableData[$key]['data'][]=$temp;
            }
        }
        //**********************************************************************************************************        
        return $tableData;
    }
    
    private function get_card_id_and_price($visitingcardData,$card_quality,$color,$quantity){
        $card_id='';
        $price=0.0;
        
        foreach ($visitingcardData as $key=>$value){
            if ($value['card_quality']==$card_quality && $value['color']==$color && $value['quantity']==$quantity){
                $card_id=$value['card_id'];
                $price=$value['price'];
            }
        }
        
        return array(
            'card_id'=>$card_id,
            'price'=>$price
        );
    }
}

?>
