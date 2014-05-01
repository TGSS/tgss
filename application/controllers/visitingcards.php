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
       
}

?>
