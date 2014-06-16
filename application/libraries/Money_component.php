<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Money_component {

    public function formatMoney($money){
        $money=round($money,2);
        $money=number_format($money,2);
        return $money;
    }
    
}
    
?>
