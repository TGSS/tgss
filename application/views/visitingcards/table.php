<br/>
<div class="visitingcard-all-table-wrapper clearfix">
    <?php foreach ($tableData as $key => $value) { ?>
        <div class="visitingcard-table-wrapper">
            <div class="card-table-heading"><?php echo $value['table_display_name']; ?></div>
            <table class="table table-striped table-bordered table-hover table-condensed card-table">
                <thead>
                    <tr>
                        <th>Color</th>
                        <th>600</th>
                        <th>1200</th>
                        <th>2400</th>
                        <th>3600</th>
                    </tr>
                </thead>
                <tbody>

                    <?php foreach ($value['data'] as $key2 => $value2) { ?>
                        <tr>
                            <td class="color-column"><?php echo $value2[0]['price']; ?></td>
                            <td id="<?php echo $value2[1]['card_id'];?>"><?php echo $value2[1]['price']; ?></td>
                            <td id="<?php echo $value2[2]['card_id'];?>"><?php echo $value2[2]['price']; ?></td>
                            <td id="<?php echo $value2[3]['card_id'];?>"><?php echo $value2[3]['price']; ?></td>
                            <td id="<?php echo $value2[4]['card_id'];?>"><?php echo $value2[4]['price']; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>

    <?php } ?>
</div>

<style>
    .visitingcard-table-wrapper{
        width:50%;
        float:left;
        padding-left:20px;
        padding-right:20px;
    }

    .card-table-heading,.visitingcard-table-wrapper table{
        /*margin-left:10px;*/
        /*margin-right:10px;*/
    }
</style>