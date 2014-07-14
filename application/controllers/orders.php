<?php

class Orders extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('shoppingcart');
        $this->load->library('datetime_component');
        $this->load->library('user_component');
        $this->load->library('order_component');
        $this->load->library('payment_component');
        $this->load->model('orderdetails_model');
        $this->load->model('payments_model');
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
        $result = $this->orders_model->save_order($user_data['user_id'], $shoppingcart_data, $total);

        if ($result['status'] == true) {
            $this->session->set_flashdata('success_message', 'Order is successfully made.');
            $this->shoppingcart->clear_shoppingcart();
            redirect('orders/details/' . $result['order_id']);    //redirect to user login page
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

    public function details($order_id) {
        $data['order_id'] = $order_id;

        $order_data = $this->order_component->get_complete_order_data($order_id);
        $paymentData = $this->payment_component->get_payment_status($order_id);

        $data['billing_addresses'] = $order_data['billing_addresses'];
        $data['delivery_addresses'] = $order_data['delivery_addresses'];
        $data['orderdetails'] = $order_data['orderdetails'];
        //*********************************************************************************************************************************
        //Construction Payment Data
        $total = (float) $order_data['orders']['total'];
        $firstInstallment = $total / 2;
        $secondInstallment = $total - $firstInstallment;        
                
        //Formatting
        $totalDisplay=$this->money_component->formatMoney($total);
        $firstInstallmentDisplay=$this->money_component->formatMoney($firstInstallment);
        $secondInstallmentDisplay=$this->money_component->formatMoney($secondInstallment);
        
        //Rounding
        $total=  round($total,2);
        $firstInstallment=  round($firstInstallment,2);
        $secondInstallment=  round($secondInstallment,2);
        
        $installment_no = 0;
        $paymentButtonText = "";
        $installmentAmount=0;
        
        //If Payment is not completed yet, or not in "Error" status we display the "Make Payment" button
        if ($paymentData['paymentStatus'] != 2 && $paymentData['paymentStatus'] != -1) {

            if ($paymentData['paymentStatus'] == 0) {
                //first installment
                $installment_no = 1;
                $paymentButtonText = "Make first Installment (" . $firstInstallmentDisplay . " of " . $totalDisplay . ")";
                $installmentAmount=$firstInstallment;
            } else if ($paymentData['paymentStatus'] == 1) {
                //second installment
                $installment_no = 2;
                $paymentButtonText = "Make second Installment (" . $secondInstallmentDisplay  . " of " . $totalDisplay . ")";
                $installmentAmount=$secondInstallment;
            }
        }

        $paymentData['installment_no'] = $installment_no;
        $paymentData['paymentButtonText'] = $paymentButtonText;
        $paymentData['firstInstallmentDisplay'] = $firstInstallmentDisplay;
        $paymentData['secondInstallmentDisplay'] = $secondInstallmentDisplay;
        $paymentData['installmentAmount'] = $installmentAmount;

        $order_data['orders']['total'] =$total;
        $order_data['orders']['totalDisplay'] =$totalDisplay;

        $data['orders'] = $order_data['orders'];
        $data['paymentData'] = $paymentData;
        //*********************************************************************************************************************************
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
            array('db' => 'payment_status_text', 'dt' => 6),
            array('db' => 'order_id', 'dt' => 7),
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

        $timzone_offset = (float) $_POST['timezone_offset'];
        $timezone_offset_in_second = $this->datetime_component->timezone_offset_to_seconds($timzone_offset);

        if (isset($_POST['datefilter'])) {
            $from_date = $_POST['from_date'];
            $from_date.=" 00:00:00";
            $from_date_TS = $this->datetime_component->get_gmt_ts($from_date);
            $from_date_TS-=$timezone_offset_in_second;

            $to_date = $_POST['to_date'];
            $to_date.=" 23:59:59";
            $to_date_TS = $this->datetime_component->get_gmt_ts($to_date);
            $to_date_TS-=$timezone_offset_in_second;

            $_POST['from_date_TS'] = $from_date_TS;
            $_POST['to_date_TS'] = $to_date_TS;
        }


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
            array('db' => 'payment_status_text', 'dt' => 3),
            array('db' => 'order_id', 'dt' => 4),
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
        $timzone_offset = (float) $_POST['timezone_offset'];
        $timezone_offset_in_second = $this->datetime_component->timezone_offset_to_seconds($timzone_offset);

        if (isset($_POST['datefilter'])) {
            $from_date = $_POST['from_date'];
            $from_date.=" 00:00:00";
            $from_date_TS = $this->datetime_component->get_gmt_ts($from_date);
            $from_date_TS-=$timezone_offset_in_second;

            $to_date = $_POST['to_date'];
            $to_date.=" 23:59:59";
            $to_date_TS = $this->datetime_component->get_gmt_ts($to_date);
            $to_date_TS-=$timezone_offset_in_second;

            $_POST['from_date_TS'] = $from_date_TS;
            $_POST['to_date_TS'] = $to_date_TS;
        }

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
