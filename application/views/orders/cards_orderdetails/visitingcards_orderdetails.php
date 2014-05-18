<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><b>Visiting Card</b></div>

    <table id="visitingcards_orderdetails" class="table table-striped">
    <thead>
        <tr>
            <th>Description</th>
            <th>Color</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($visitingcards_orderdetails as $key => $value) { ?>
            <tr>
                <td><?php echo $value['card_type_display']; ?></td>
                <td><?php echo $value['color']; ?></td>
                <td><?php echo $value['quantity']; ?></td>
                <td><?php echo $value['price']; ?></td>
                <td><?php echo $value['total']; ?></td>
            </tr>
        <?php } ?>            
    </tbody>
</table>
</div>