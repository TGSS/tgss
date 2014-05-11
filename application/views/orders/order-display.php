<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/datatable/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/bootstrap-datetimepicker.css">

<script src="<?php echo base_url(); ?>js/datatable/jquery.dataTables.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/moment.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/bootstrap-datetimepicker.js" type="text/javascript"></script>

<style>
    .dataTables_wrapper, .search-form{
        margin-left:20px;
        margin-right:20px;
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
    }
    
    .chosen-container-single .chosen-single{
        padding: 4px 0 0 8px !important;
        height: 33px !important;
    }
    
    .chosen-container-single .chosen-single div b {
        background-position-y: 6px;
    }
</style>

<form id="order-search-form" class="form-horizontal search-form" role="form">
    <div class="form-group">   
        <div class="col-sm-12">            
            <div class="row">
                <div class='col-sm-3'>
                    <div class="form-group">
                        <div class='input-group date' id='datetimepicker1'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class='col-sm-3'>
                    <div class="form-group">
                        <div class='input-group date' id='datetimepicker2'>
                            <input type='text' class="form-control" />
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
                <script type="text/javascript">
                    $(function () {
                        $('#datetimepicker1').datetimepicker();
                        $('#datetimepicker2').datetimepicker();
                    });
                </script>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-3">
                    <select id="searchby" name="searchby" class="form-control chosen-select">
                        <option value="order_ref_no">Order Ref No</option>
                        <option value="username">User Name</option>
                        <option value="total">Total</option>
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
            <button type="submit" class="btn btn-default" id="btn-show-all">Show All</button>
        </div>
    </div>
</form>

<table id="order-display" class="display" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>Order Ref No</th>
            <th>Date</th>
            <th>User</th>
            <th>Total</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th>Order Ref No</th>
            <th>Date</th>
            <th>User</th>
            <th>Total</th>
        </tr>
    </tfoot>        
</table>

<script>
    var table;
    /* Custom filtering function which will search data in column four between two values */
    $.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var min = $('#min').val() * 1;
        var max = $('#max').val() * 1;
        var age = parseFloat( data[3] ) || 0; // use data for the age column
 
        if ( ( min == '' && max == '' ) ||
            ( min == '' && age <= max ) ||
            ( min <= age && '' == max ) ||
            ( min <= age && age <= max ) )
        {
            return true;
        }
        return false;
    }
);
 
    $(document).ready(function() {
        //table= $('#order-display').DataTable();
     
        table=$('#order-display').dataTable( {
            "processing": true,
            "serverSide": true,
            "searching" : false,
            "ajax": {
                "url":"<?php echo base_url(); ?>index.php/orders/load_table_data",
                "type":"POST",
                "data":function(d){
                    if ($('#chk_customfilter').prop('checked')){
                        d.customfilter=true;
                        d.searchby=$('#searchby').val();
                        d.searchkey=$('#searchkey').val();
                    }                    
                }
            }
        } );
        
        // Event listener to the two range filtering inputs to redraw on input
        $('#btn-search').click( function() {
            //table.draw();
            table.fnDraw();
            return false;
        } );
        
        $('#btn-show-all').click( function() {
            //Removing "filters"
            $('#chk_customfilter').attr('checked', false); 
            table.fnDraw();
            return false;
        } );
        
        $(".chosen-select").chosen({
            width: "220px"
        });
    } );
</script>