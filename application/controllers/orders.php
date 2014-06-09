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
        $user_timezone_offset = $this->user_component->get_timezone_offset();

        $data['template'] = "orders/order-display";
        $data['timezone_offset'] = $user_timezone_offset;

        $this->load->view('template', $data);
    }

    public function my_order_display() {
        $user_data = $this->tgss_security->get_user_data();
        //Getting "timezone offset" of current user
        $user_timezone_offset = $this->user_component->get_timezone_offset();

        $data['template'] = "orders/my-order-display";
        $data['user_id'] = $user_data['user_id'];
        $data['timezone_offset'] = $user_timezone_offset;

        $this->load->view('template', $data);
    }

    /**
     * 
     * Function to return "order" and "order details" data
     * @param type $order_id
     */
    private function get_complete_order_data($order_id) {

        //********************************************************************************************************************* 
        $orders = $this->orders_model->get_order_by_order_id($order_id);
        $billing_addresses = $this->orderdetails_model->get_billing_address_by_order_id($order_id);
        $delivery_addresses = $this->orderdetails_model->get_delivery_address_by_order_id($order_id);
        //********************************************************************************************************************* 
        //Formatting "Timestamp" to "Human Date Time"
        $user_timezone_offset = $this->user_component->get_timezone_offset();
        $orders['order_date_formatted'] = $this->datetime_component->get_datetime_for_UI_from_timestamp($orders['order_date'], $user_timezone_offset, true, 0);
        //********************************************************************************************************************* 
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
        $result = array(
            'orders' => $orders,
            'billing_addresses' => $billing_addresses,
            'delivery_addresses' => $delivery_addresses,
            'orderdetails' => $orderdetails
        );

        return $result;
    }

    public function details($order_id) {
        $data['order_id'] = $order_id;

        $order_data = $this->get_complete_order_data($order_id);

        $data['orders'] = $order_data['orders'];
        $data['billing_addresses'] = $order_data['billing_addresses'];
        $data['delivery_addresses'] = $order_data['delivery_addresses'];
        $data['orderdetails'] = $order_data['orderdetails'];

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

        $user_timezone_offset = $this->user_component->get_timezone_offset();

        if (isset($_POST['chk_datefilter'])) {
            $is_date_filter_apply = true;
            $from_date_value = $this->input->post('from_date_value');
            $to_date_value = $this->input->post('to_date_value');

            $from_date_value .= " 00:00:00";
            $to_date_value .= " 23:59:59";
            $from_date = $this->datetime_component->get_gmt_ts($from_date_value, $user_timezone_offset);
            $to_date = $this->datetime_component->get_gmt_ts($to_date_value, $user_timezone_offset);
        }

        if (isset($_POST['chk_customfilter'])) {
            $is_custom_filter_apply = true;
            $search_by = $this->input->post('searchby');
            $search_key = $this->input->post('searchkey');
        }

        //Getting data to print the report
        $order_data = $this->orders_model->search($is_date_filter_apply, $is_custom_filter_apply, $from_date, $to_date, $search_by, $search_key);

        //formatting "timestamp" for display    
        for ($i = 0; $i < count($order_data); $i++) {
            $order_data[$i]['order_date_formatted'] = $this->datetime_component->get_datetime_for_UI_from_timestamp($order_data[$i]['order_date'], $user_timezone_offset, true, 0);
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
        $pdf->SetTextColor(0, 0, 255);
        // print a block of text using Write()
        $pdf->Write(0, 'TGSS', '', 0, 'C', true, 0, false, false, 0);

        $pdf->SetFont('times', 'B', 18);
        $pdf->Write(0, 'Order Report', '', 0, 'C', true, 0, false, false, 0);

        // column titles
        $header = array('Order Ref No', 'Order Date', 'User Name', 'First Name', 'Last Name', 'Total');

        // data loading
        $data = $order_data;

        // print colored table
        $pdf->ColoredTable($header, $data);

        // ---------------------------------------------------------
        // close and output PDF document
        $pdf->Output('tgss_order_report_' . time() . '.pdf', 'I');
    }

    public function print_order_detail_report($order_id) {
        $data['order_id'] = $order_id;

        $order_data = $this->get_complete_order_data($order_id);

        $data['orders'] = $order_data['orders'];
        $data['billing_addresses'] = $order_data['billing_addresses'];
        $data['delivery_addresses'] = $order_data['delivery_addresses'];
        $data['orderdetails'] = $order_data['orderdetails'];

        $this->print_order_detail_report_pdf($order_data);
    }

    public function print_order_detail_report_pdf($complete_order_data) {
        $this->load->library("Pdf_order_detail");

        // create new PDF document
        $pdf = new Pdf_order_detail("L", PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

        // set document information
        $pdf->SetCreator("TGSS");
        $pdf->SetAuthor('TGSS');
        $pdf->SetTitle('Order Report');
        $pdf->SetSubject('TCPDF Tutorial');
        $pdf->SetKeywords('TGSS,Order Report');

        // set default header data
        $pdf->SetHeaderData('', 0, '', 'TGSS - Order Detail Report');

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
        $pdf->SetTextColor(0, 0, 0);
        // print a block of text using Write()
        $pdf->Write(0, 'TGSS', '', 0, 'C', true, 0, false, false, 0);

        $pdf->SetFont('times', 'B', 18);
        $pdf->Write(0, 'Order Detail Report', '', 0, 'C', true, 0, false, false, 0);
        //********************************************************************************************************************* 
        $pdf->SetTextColor(0, 0, 0);
        $pdf->SetFont('times', 'BU', 11);
        $pdf->Write(0, 'Order Information', '', 0, 'L', true, 0, false, false, 0);
        $pdf->Ln(); //New Line
        $pdf->SetFont('times', '', 11);
        //Order Information
        $tbl = $this->get_order_html_table($complete_order_data['orders']);
        $pdf->writeHTML($tbl, true, false, false, false, '');
        //*********************************************************************************************************************   
        $pdf->SetTextColor(0, 0, 0);
        //$pdf->Ln(); //New Line
        $pdf->SetFont('times', '', 11);
        //Order Information
        $billing_addresses_table = $this->get_order_billing_table($complete_order_data['billing_addresses']);
        $delivery_addresses_table = $this->get_order_delivery_table($complete_order_data['delivery_addresses']);

        $tbl = <<<EOD
   <br/><br/>
    <table>
        <tr>
            <td>$billing_addresses_table</td>
            <td>$delivery_addresses_table</td>
        </tr>
    </table>
EOD;
        $pdf->writeHTML($tbl, true, false, false, false, '');
        //*********************************************************************************************************************   
        // add a page
        $pdf->AddPage();
        // column titles
        $header = array('Description', 'Color', 'Quantity', 'Price', 'Total');

        foreach ($complete_order_data['orderdetails'] as $key => $value) {
            //Title
            $pdf->SetFont('times', 'B', 10);
            $pdf->Write(0, $value['title'], '', 0, 'L', true, 0, false, false, 0);
            // data loading
            $data = $value['data'];

            // print colored table
            $pdf->ColoredTable($header, $data);
            $pdf->Ln(); //New Line
        }
        //exit();
        //********************************************************************************************************************* 
        // ---------------------------------------------------------
        // close and output PDF document
        $pdf->Output('tgss_order_detail_report_' . time() . '.pdf', 'I');
    }

    private function get_order_html_table($order_data) {
        $html = <<<EOD
<table cellspacing="0" cellpadding="1" border="0" style="width:1500px;">
    <tr style="background-color:#F8F8F8 ;">
        <td style="width:200px;text-align:right;"><strong>Order Ref No : </strong></td>
        <td>{$order_data['order_ref_no']}</td>
    </tr>
    <tr>
        <td style="width:200px;text-align:right;"><strong>Order Date : </strong></td>
        <td>{$order_data['order_date_formatted']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:200px;text-align:right;"><strong>User Name : </strong></td>
        <td>{$order_data['username']}</td>
    </tr>
    <tr>
        <td style="width:200px;text-align:right;"><strong>First Name : </strong></td>
        <td>{$order_data['firstname']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:200px;text-align:right;"><strong>Last Name : </strong></td>
        <td>{$order_data['lastname']}</td>
    </tr>
    <tr>
        <td style="width:200px;text-align:right;"><strong>Total : </strong></td>
        <td>{$order_data['total']}</td>
    </tr>
</table>
<br/>
<hr width="100%" />
EOD;

        return $html;
    }

    private function get_order_billing_table($billing_data) {
        $html = <<<EOD
<table cellspacing="0" cellpadding="1" border="0" style="width:600px;">
    <tr>
        <td colspan="2"><strong><u>Billing Address</u></strong></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr style="background-color:#F8F8F8 ;">
        <td style="width:100px;text-align:right;"><strong>Email : </strong></td>
        <td>{$billing_data['email']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>First Name : </strong></td>
        <td>{$billing_data['firstname']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>Last Name : </strong></td>
        <td>{$billing_data['lastname']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>Address 1 : </strong></td>
        <td>{$billing_data['address1']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>Address 2 : </strong></td>
        <td>{$billing_data['address2']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>City : </strong></td>
        <td>{$billing_data['city']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>Post Code : </strong></td>
        <td>{$billing_data['postcode']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>Phone No : </strong></td>
        <td>{$billing_data['phoneno']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>Mobile No : </strong></td>
        <td>{$billing_data['mobileno']}</td>
    </tr>
</table>
EOD;

        return $html;
    }

    private function get_order_delivery_table($delivery_data) {
        $html = <<<EOD
<table cellspacing="0" cellpadding="1" border="0" style="width:600px;">    
    <tr>
        <td colspan="2"><strong><u>Delivery Address</u></strong></td>
    </tr>    
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>First Name : </strong></td>
        <td>{$delivery_data['firstname']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>Last Name : </strong></td>
        <td>{$delivery_data['lastname']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>Address 1 : </strong></td>
        <td>{$delivery_data['address1']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>Address 2 : </strong></td>
        <td>{$delivery_data['address2']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>City : </strong></td>
        <td>{$delivery_data['city']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>Post Code : </strong></td>
        <td>{$delivery_data['postcode']}</td>
    </tr>
    <tr style="background-color:#F8F8F8;">
        <td style="width:100px;text-align:right;"><strong>Phone No : </strong></td>
        <td>{$delivery_data['phoneno']}</td>
    </tr>
    <tr>
        <td style="width:100px;text-align:right;"><strong>Mobile No : </strong></td>
        <td>{$delivery_data['mobileno']}</td>
    </tr>
</table>
EOD;

        return $html;
    }

}

?>
