<?php

include_once 'datatable/order_display.class.php';

class Orders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('shoppingcart');        
        $this->load->model('orders_model');
    }

    public function order() {
        //$shoppingcart_data=$this->shoppingcart->get_shoppingcart();        
        $data['total'] = $this->shoppingcart->get_total();
        $data['countries'] = $this->users_model->get_country();
        $data['template'] = "orders/order";
        $this->load->view('template', $data);
    }

    public function order_submit() {
        $user_data = $this->session->userdata('user');
        $shoppingcart_data = $this->shoppingcart->get_shoppingcart();
        $total = $this->shoppingcart->get_total();
        $statusOK = $this->orders_model->save_order($user_data['user_id'], $shoppingcart_data, $total);

        if ($statusOK == true) {
            $this->session->set_flashdata('success_message', 'Order is successfully made.');
            redirect('tgss/index');    //redirect to user login page
        } else {
            $this->session->set_flashdata('error_message', 'Error occured when making order. Please try again later.');
            redirect('orders/order');
        }
    }

    public function display() {
        $data['template'] = "orders/order-display";
        $this->load->view('template', $data);
    }

    public function details($order_id) {
        $data['order']=$this->orders_model->get_order_by_order_id($order_id);                
        $data['template'] = "orders/order-details";
        $this->load->view('template', $data);
    }
    
    public function load_table_data() {
        // DB table to use
        $table = 'orders_view';

        // Table's primary key
        $primaryKey = 'order_id';

        // Array of database columns which should be read and sent back to DataTables.
        // The `db` parameter represents the column name in the database, while the `dt`
        // parameter represents the DataTables column identifier. In this case simple
        // indexes
        $columns = array(
            array('db' => 'order_ref_no', 'dt' => 0),
            array(
                'db' => 'order_date',
                'dt' => 1,
                'formatter' => function( $d, $row ) {
                    $timezone_offset_in_milliseconds = 6.5 * 3600;
                    //$timezone_offset_in_milliseconds=0;
                    return gmdate('d-M-Y', $d + $timezone_offset_in_milliseconds);
                }
            ),
            array('db' => 'username', 'dt' => 2),
            array('db' => 'firstname', 'dt' => 3),
            array('db' => 'lastname', 'dt' => 4),
            array(
                'db' => 'total',
                'dt' => 5,
                'formatter' => function( $d, $row ) {
                    return number_format($d);
                }
            ),
            array('db' => 'order_id', 'dt' => 6),
        );
            
        // SQL server connection information
        $sql_details = array(
            'user' =>$this->db->username,
            'pass' => $this->db->password,
            'db' => $this->db->database,
            'host' => $this->db->hostname
        );


        /*         * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
         * If you just want to use the basic configuration for DataTables with PHP
         * server-side, there is no need to edit below this line.
         */

        echo json_encode(
                SSP::simple($_POST, $sql_details, $table, $primaryKey, $columns)
        );
    }

}

?>
