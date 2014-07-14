<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/datatable/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/bootstrap-datetimepicker.css">

<script src="<?php echo base_url(); ?>js/datatable/jquery.dataTables.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/bootstrap-datetimepicker.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/orders/my-order-display.js" type="text/javascript"></script>

<style>
    .dataTables_wrapper{
        /*margin-left:15px;
        margin-right:15px;*/
    }

    .search-form{
        /*
        margin-left:0px;
        */
    }

    #order-search-form .custom-search-component{
        display:inline !important;
        /*width:180px;*/
    }

    #order-search-form .date .form-control {        
        width:180px !important;
    }

    #order-search-form .form-group{
        margin-right: 0px;
        margin-left: 0px;
    }

    #order-search-form .input-group-addon{
        width:auto;
    }

    #searchkey{
        width:220px !important;
        height:30px !important;
        margin-top: 6px;
    }

    .chosen-container-single .chosen-single{
        padding: 4px 0 0 8px !important;
        height: 30px !important;
    }

    .chosen-container-single .chosen-single div b {
        background-position-y: 6px !important;
    }
    
    #from_date_value,#to_date_value{
        height:30px;
    }
</style>

<input type="hidden" id="user_id" name="user_id" value="<?php echo $user_id; ?>" />
<input type="hidden" id="timezone_offset" name="timezone_offset" value="<?php echo $timezone_offset; ?>" />

<div id="body_wrapper_body_wrapper">
    <div class="body_wrapper_body_wrapper_top">
        <div class="item_right">
            <div class="tgss-product-heading">Order Display</div>

            <form id="order-search-form" class="form-horizontal search-form" role="form" action="orders/print_order_report" method="post" >
                <div class="form-group">   
                    <div class="col-sm-12">            
                        <div class="row">
                            <div class='col-sm-3'>
                                <div class="form-group">
                                    <div class='input-group date' id='from_date' data-date-format="DD-MMM-YYYY">
                                        <input type='text' class="form-control" id="from_date_value" name="from_date_value"/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class='col-sm-3'>
                                <div class="form-group">
                                    <div class='input-group date' id='to_date' data-date-format="DD-MMM-YYYY">
                                        <input type='text' class="form-control" id="to_date_value" name="to_date_value"/>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-1">
                                <label class="checkbox-inline">
                                    <input type="checkbox" id="chk_datefilter" name="chk_datefilter" value="">
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-3">
                                <select id="searchby" name="searchby" class="form-control chosen-select">
                                    <option value="order_ref_no">Order Ref No</option>
                                                            <!-- <option value="total">Total</option>-->
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <input type="text" id="searchkey" name="searchkey" class="form-control custom-search-component" placeholder="Search">                    
                            </div>
                            <div class="col-sm-1">
                                <label class="checkbox-inline">
                                    <input type="checkbox" id="chk_customfilter" name="chk_customfilter" value="">
                                </label>
                            </div>
                        </div>


                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary" id="btn-search">Search</button>                        
                        <button type="submit" class="btn btn-info" id="btn-print" name="btn-print">Print</button>
                        <button type="submit" class="btn btn-default" id="btn-show-all">Show All</button>
                    </div>
                </div>
            </form>

            <table id="order-display" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Order Ref No</th>
                        <th>Date</th>
                        <th>Total</th>
                        <th>Payment Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Order Ref No</th>
                        <th>Date</th>
                        <th>Total</th>
                        <th>Payment Status</th>
                        <th>Action</th>
                    </tr>
                </tfoot>        
            </table>
        </div>
        <div id="clr"></div>
    </div>
</div>