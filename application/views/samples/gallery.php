<link href="<?php echo base_url(); ?>js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/colorbox/jquery.colorbox.js"></script>

<table>
    <tr>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/Chrysanthemum.jpg" title="Chrysanthemum">
                <img src="<?php echo base_url(); ?>media/visitingcards/Chrysanthemum.jpg" width="150" height="150" />
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/Desert.jpg" title="Desert">
                <img src="<?php echo base_url(); ?>media/visitingcards/Desert.jpg" width="150" height="150" />
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/Hydrangeas.jpg" title="Hydrangeas">
                <img src="<?php echo base_url(); ?>media/visitingcards/Hydrangeas.jpg" width="150" height="150" />
            </a>
        </td>
    </tr>
    <tr>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/Jellyfish.jpg" title="Jellyfish">
                <img src="<?php echo base_url(); ?>media/visitingcards/Jellyfish.jpg" width="150" height="150" />
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/Koala.jpg" title="Koala">
                <img src="<?php echo base_url(); ?>media/visitingcards/Koala.jpg" width="150" height="150" />
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/Lighthouse.jpg" title="Lighthouse">
                <img src="<?php echo base_url(); ?>media/visitingcards/Lighthouse.jpg" width="150" height="150" />
            </a>
        </td>
    </tr>
</table>

<style>
    table{
        margin-left:10px;
    }
    table tr td{
        padding:5px;
    }
</style>

<script type="text/javascript">
    $(document).ready(function(){
        $(".group1").colorbox({rel:'group1'});
    })
</script>