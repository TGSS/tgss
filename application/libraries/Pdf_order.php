<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

require_once dirname(__FILE__) . '/tcpdf/tcpdf.php';

class Pdf_order extends TCPDF {

//    function __construct() {
//        parent::__construct();
//    }

    // Colored table
    public function ColoredTable($header, $data) {
        // Colors, line width and bold font
        $this->SetFillColor(0, 0, 255);
        $this->SetTextColor(255);
        $this->SetDrawColor(128, 0, 0);
        $this->SetLineWidth(0.3);
        $this->SetFont('', 'B',12);
        // Header
        $w = array(30, 60, 60, 40,40,30);
        $num_headers = count($header);
        for ($i = 0; $i < $num_headers; ++$i) {
            $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
        }
        $this->Ln();
        // Color and font restoration
        $this->SetFillColor(224, 235, 255);
        $this->SetTextColor(0);
        $this->SetFont('','',10);
        // Data
        $fill = 0;
        foreach ($data as $row) {
            $this->Cell($w[0], 7, $row['order_ref_no'], 'LR', 0, 'L', $fill);
            $this->Cell($w[1], 7, $row['order_date_formatted'], 'LR', 0, 'L', $fill);
            $this->Cell($w[2], 7, $row['username'], 'LR', 0, 'L', $fill);
            $this->Cell($w[3], 7, $row['firstname'], 'LR', 0, 'L', $fill);
            $this->Cell($w[4], 7, $row['lastname'], 'LR', 0, 'L', $fill);
            $this->Cell($w[5], 7, number_format($row['total']), 'LR', 0, 'R', $fill);
            //$this->Cell($w[2], 6, number_format($row[2]), 'LR', 0, 'R', $fill);
            //$this->Cell($w[3], 6, number_format($row[3]), 'LR', 0, 'R', $fill);
            $this->Ln();
            $fill = !$fill;
        }
        $this->Cell(array_sum($w), 0, '', 'T');
    }

}