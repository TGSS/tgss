<?php

class Orders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('shoppingcart');
        $this->load->library('datetime_component');
        $this->load->library('user_component');
        $this->load->model('orders_model');
        $this->load->model('orderdetails_model');
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
            $this->shoppingcart->clear_shoppingcart();
            redirect('my-order-display');    //redirect to user login page
        } else {
            $this->session->set_flashdata('error_message', 'Error occured when making order. Please try again later.');
            redirect('orders/order');
        }
    }

    public function display() {
        //Getting "timezone offset" of current user
        $user_timezone_offset=$this->user_component->get_timezone_offset();
        
        $data['template'] = "orders/order-display";
        $data['timezone_offset']=$user_timezone_offset;
        
        $this->load->view('template', $data);
    }

    public function my_order_display() {
        $user_data = $this->tgss_security->get_user_data();
        //Getting "timezone offset" of current user
        $user_timezone_offset=$this->user_component->get_timezone_offset();
        
        $data['template'] = "orders/my-order-display";
        $data['user_id'] = $user_data['user_id'];
        $data['timezone_offset']=$user_timezone_offset;
 
        $this->load->view('template', $data);
    }

    public function details($order_id) {
        $data['orders'] = $this->orders_model->get_order_by_order_id($order_id);
        $data['billing_addresses'] = $this->orderdetails_model->get_billing_address_by_order_id($order_id);
        $data['delivery_addresses'] = $this->orderdetails_model->get_delivery_address_by_order_id($order_id);

        $orderdetails = array();
        //*********************************************************************************************************************
        $visitingcards_orderdetails = $this->orderdetails_model->get_visitingcards_by_order_id($order_id);

        if (!empty($visitingcards_orderdetails)) {
            $orderdetails['visitingcards'] = array(
                'title' => 'Visiting Cards',
                'data' => $visitingcards_orderdetails
            );
        }
        //*********************************************************************************************************************        
        $letterheads_orderdetails = $this->orderdetails_model->get_letterheads_by_order_id($order_id);

        if (!empty($letterheads_orderdetails)) {
            $orderdetails['letterheads'] = array(
                'title' => 'Letterheads',
                'data' => $letterheads_orderdetails
            );
        }
        //*********************************************************************************************************************
        $data['orderdetails'] = $orderdetails;

        $data['template'] = "orders/order-details";
        $this->load->view('template', $data);
    }

    public function load_order_table_data() {
        include_once 'datatable/order_display.class.php';
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
                    return gmdate('d-M-Y H:i A', $d);
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
            'user' => $this->db->username,
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

    public function load_my_order_table_data() {
        include_once 'datatable/my_order_display.class.php';
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
                    return gmdate('d-M-Y H:i A', $d);
                }
            ),
            array(
                'db' => 'total',
                'dt' => 2,
                'formatter' => function( $d, $row ) {
                    return number_format($d);
                }
            ),
            array('db' => 'order_id', 'dt' => 3),
        );

        // SQL server connection information
        $sql_details = array(
            'user' => $this->db->username,
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

    public function print_order_report() {
        //var_dump($_POST);exit();
        //Loading "PDF" library
        $this->load->library("Pdf");

        $is_date_filter_apply = false;
        $is_custom_filter_apply = false;
        $from_date = null;
        $to_date = null;
        $search_by = null;
        $search_key = null;
        
        $user_timezone_offset=$this->user_component->get_timezone_offset();
        
        if (isset($_POST['chk_datefilter'])){
            $is_date_filter_apply = true;
            $from_date_value=$this->input->post('from_date_value');
            $to_date_value=$this->input->post('to_date_value');
            
            $from_date_value .= " 00:00:00";
            $to_date_value .= " 23:59:59";
            $from_date=$this->datetime_component->get_gmt_ts($from_date_value,$user_timezone_offset);
            $to_date=$this->datetime_component->get_gmt_ts($to_date_value,$user_timezone_offset);
        }
        
        if (isset($_POST['chk_customfilter'])){
            $is_custom_filter_apply = true;
            $search_by=$this->input->post('searchby');
            $search_key=$this->input->post('searchkey');
        }        
                
        //Getting data to print the report
        $order_data = $this->orders_model->search($is_date_filter_apply, $is_custom_filter_apply, $from_date, $to_date, $search_by, $search_key);
                            
        //formatting "timestamp" for display    
        for ($i=0;$i<count($order_data);$i++){
            $order_data[$i]['order_date_formatted']=$this->datetime_component->get_datetime_for_UI_from_timestamp( $order_data[$i]['order_date'],
                                                                                    $user_timezone_offset, true, 0);
        }
        
        $this->print_order_report_pdf($order_data);
    }

    public function print_order_report_pdf($order_data) {
        $this->load->library("Pdf_order");

        // create new PDF document
        $pdf = new Pdf_order("L", PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

        // set document information
        $pdf->SetCreator("TGSS");
        $pdf->SetAuthor('TGSS');
        $pdf->SetTitle('Order Report');
        $pdf->SetSubject('TCPDF Tutorial');
        $pdf->SetKeywords('TGSS,Order Report');

        // set default header data
        $pdf->SetHeaderData('', 0, '', 'TGSS - Order Report');

        // set header and footer fonts
        $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, 'B', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, 'B', PDF_FONT_SIZE_DATA));

        // set default monospaced font
        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

        // set margins
        //$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetMargins(PDF_MARGIN_LEFT, 20, PDF_MARGIN_RIGHT);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

        // set auto page breaks
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

        // set image scale factor
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

        // set some language-dependent strings (optional)
        if (@file_exists(dirname(__FILE__) . '/lang/eng.php')) {
            require_once(dirname(__FILE__) . '/lang/eng.php');
            $pdf->setLanguageArray($l);
        }

        // ---------------------------------------------------------
        // set font
        $pdf->SetFont('times', '', 12);

        // add a page
        $pdf->AddPage();

        // set font
        $pdf->SetFont('times', 'B', 24);
        $pdf->SetTextColor(0,0,255);
        // print a block of text using Write()
        $pdf->Write(0, 'TGSS', '', 0, 'C', true, 0, false, false, 0);
        
        $pdf->SetFont('times', 'B', 18);
        $pdf->Write(0, 'Order Report', '', 0, 'C', true, 0, false, false, 0);
        
        // column titles
        $header = array('Order Ref No','Order Date','User Name','First Name','Last Name','Total');

        // data loading
        $data = $order_data;

        // print colored table
        $pdf->ColoredTable($header, $data);

        // ---------------------------------------------------------
        // close and output PDF document
        $pdf->Output('tgss_order_report_' . time() . '.pdf', 'I');
    }

    
}

?>
