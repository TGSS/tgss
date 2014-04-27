<link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>css/chosen.min.css" rel="stylesheet" type="text/css" />

<script src="<?php echo base_url(); ?>js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/chosen/chosen.jquery.min.js" type="text/javascript"></script>                                
<script src="<?php echo base_url(); ?>js/chosen/chosen.proto.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>js/visitingcards/visitingcard.js" type="text/javascript"></script>

<div class="tgss-page-heading">Visiting Cards</div>

<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-4">
        <?php $this->load->view("visitingcards/visitingcard-form"); ?>
    </div>
    <div class="col-sm-5">
        <?php $this->load->view("visitingcards/table"); ?>
    </div>
</div>