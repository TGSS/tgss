<div class="tgss-product-heading">Order Details</div>

<form class="form-horizontal" role="form">
    <div class="form-group">
        <label class="col-sm-3 control-label">Order Ref No :</label>
        <div class="col-sm-9">
            <p class="form-control-static"><?php echo $orders['order_ref_no']; ?></p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Order Date :</label>
        <div class="col-sm-9">
            <p class="form-control-static"><?php echo $orders['order_date']; ?></p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">User Name :</label>
        <div class="col-sm-9">
            <p class="form-control-static"><?php echo $orders['username']; ?></p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">First Name :</label>
        <div class="col-sm-9">
            <p class="form-control-static"><?php echo $orders['firstname']; ?></p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Last Name :</label>
        <div class="col-sm-9">
            <p class="form-control-static"><?php echo $orders['lastname']; ?></p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Total :</label>
        <div class="col-sm-9">
            <p class="form-control-static"><?php echo $orders['total']; ?></p>
        </div>
    </div>
</form>