<link href="<?php echo base_url(); ?>js/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/colorbox/jquery.colorbox.js"></script>

<table>
    <tr>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/C&K (JuJu).jpg" title="Chrysanthemum">
                <img src="<?php echo base_url(); ?>media/visitingcards/thumbs/C&K (JuJu).jpg"/>
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/MYT (Ju Ju).jpg" title="Desert">
                <img src="<?php echo base_url(); ?>media/visitingcards/thumbs/MYT (Ju Ju).jpg"/>
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/NG (Ju Ju).jpg" title="Hydrangeas">
                <img src="<?php echo base_url(); ?>media/visitingcards/thumbs/NG (Ju Ju).jpg"/>
            </a>
        </td>
    </tr>
    <tr>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/PK (Ju Ju).jpg" title="Jellyfish">
                <img src="<?php echo base_url(); ?>media/visitingcards/thumbs/PK (Ju Ju).jpg"/>
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/RV (Ju Ju).jpg" title="Koala">
                <img src="<?php echo base_url(); ?>media/visitingcards/thumbs/RV (Ju Ju).jpg"/>
            </a>
        </td>
        <td>
            <a class="group1" href="<?php echo base_url(); ?>media/visitingcards/SB (Ju Ju).jpg" title="Lighthouse">
                <img src="<?php echo base_url(); ?>media/visitingcards/thumbs/SB (Ju Ju).jpg"/>
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