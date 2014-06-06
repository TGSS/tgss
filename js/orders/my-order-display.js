var table;
 
$(document).ready(function() {
    //table= $('#order-display').DataTable();
     
    table=$('#order-display').dataTable( {
        "processing": true,
        "serverSide": true,
        "searching" : false,
        "bLengthChange": false,
        "aaSorting": [[1,'desc'],[0,'asc']],
        "ajax": {
            "url":base_url + "index.php/orders/load_my_order_table_data",
            "type":"POST",
            "data":function(d){
                d.user_id=$("#user_id").val();
                
                if ($('#chk_customfilter').prop('checked')){
                    d.customfilter=true;
                    d.searchby=$('#searchby').val();
                    d.searchkey=$('#searchkey').val();
                }   
                if ($('#chk_datefilter').prop('checked')){
                    d.datefilter=true;
                    d.from_date=$('#from_date_value').val();
                    d.to_date=$('#to_date_value').val();
                } 
                
                d.timezone_offset=$('#timezone_offset').val();
            }            
        },
        
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
        $('#chk_datefilter').attr('checked', false); 
        $('#from_date').data("DateTimePicker").setDate(moment().subtract('days', 1).format('D-MMM-YYYY'));
        $('#to_date').data("DateTimePicker").setDate(moment().add('days', 30).format('D-MMM-YYYY'));       
        $('#searchkey').val("");
        table.fnDraw();
        return false;
    } );
        
    $(".chosen-select").chosen({
        width: "220px"
    });

                              
    $('#from_date').datetimepicker({
        pickTime: false
    });
    $('#to_date').datetimepicker({
        pickTime: false
    });
                                        
    $('#from_date').data("DateTimePicker").setDate(moment().subtract('days', 1).format('D-MMM-YYYY'));
    $('#to_date').data("DateTimePicker").setDate(moment().add('days', 30).format('D-MMM-YYYY'));       
} );