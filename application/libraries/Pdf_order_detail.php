<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

require_once dirname(__FILE__) . '/tcpdf/tcpdf.php';

class Pdf_order_detail extends TCPDF {

//    function __construct() {
//        parent::__construct();
//    }

    // Colored table
    public function ColoredTable($header, $data) {
        // Colors, line width and bold font
        $this->SetFillColor(240, 240, 240);
        $this->SetTextColor(0);
        $this->SetDrawColor(128, 0, 0);
        $this->SetLineWidth(0.3);
        $this->SetFont('', 'B',10);
        // Header
        $w = array(60, 20, 20, 20,20);
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
            $this->Cell($w[0], 7, $row['card_type_display'], 'LR', 0, 'L', $fill);
            $this->Cell($w[1], 7, $row['color'], 'LR', 0, 'L', $fill);
            $this->Cell($w[2], 7, $row['quantity'], 'LR', 0, 'L', $fill);
            $this->Cell($w[3], 7, number_format($row['price']), 'LR', 0, 'R', $fill);
            $this->Cell($w[4], 7, number_format($row['total']), 'LR', 0, 'R', $fill);
            //$this->Cell($w[2], 6, number_format($row[2]), 'LR', 0, 'R', $fill);
            //$this->Cell($w[3], 6, number_format($row[3]), 'LR', 0, 'R', $fill);
            $this->Ln();
            $fill = !$fill;
        }
        $this->Cell(array_sum($w), 0, '', 'T');
    }

}