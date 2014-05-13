<?php if (!empty($visitingcards_orderdetails)) { 
    $this->load->view("orders/cards_orderdetails/visitingcards_orderdetails",$visitingcards_orderdetails);
} ?>

<?php if (!empty($letterheads_orderdetails)) { 
    $this->load->view("orders/cards_orderdetails/letterheads_orderdetails",$letterheads_orderdetails);
} ?>

<style>
    table{
        margin-bottom: 0px !important;
    }
</style>