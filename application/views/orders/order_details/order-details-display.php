<div class="form-group">
    <label class="col-sm-5 control-label">Order Ref No :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $orders['order_ref_no']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">Order Date :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $orders['order_date']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">User Name :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $orders['username']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">First Name :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $orders['firstname']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">Last Name :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $orders['lastname']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">Total :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $orders['totalDisplay']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">First Installment :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $paymentData['firstInstallmentDisplay']; ?></p>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-5 control-label">Second Installment :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $paymentData['secondInstallmentDisplay']; ?></p>
    </div>
</div>
<!--<div class="form-group">
    <label class="col-sm-5 control-label">Paid Amount :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $paymentData['paidAmount']; ?></p>
    </div>
</div>-->
<div class="form-group">
    <label class="col-sm-5 control-label">Payment Status :</label>
    <div class="col-sm-7">
        <p class="form-control-static"><?php echo $paymentData['paymentStatusText']; ?></p>
    </div>
</div>
