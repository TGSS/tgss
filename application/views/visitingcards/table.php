<?php foreach ($tableData as $key => $value) { ?>
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
                    <td class="color-column"><?php echo $value2[0]; ?></td>
                    <td><?php echo $value2[1]; ?></td>
                    <td><?php echo $value2[2]; ?></td>
                    <td><?php echo $value2[3]; ?></td>
                    <td><?php echo $value2[4]; ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
    <br/>
<?php } ?>