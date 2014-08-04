<div style="margin:0 auto;width:800px;" class="clearfix">
<?php
$count=0;

foreach ($voucher_types as $key=>$value){
    $size=$value['size'];
    $type_quantity=$value['type_quantity'];
    $printing=$value['printing'];
    
    $buttonText=$size . "<br/>" . $type_quantity . "<br/>" . $printing;
    
    if ($count%2==0){
        $buttonClass="button-left";        
    }else{
        $buttonClass="button-right";        
    }
	
	if ($count%4==0){
		$buttonType="btn-primary";
	}else if ($count%4==1){
		$buttonType="btn-success";
	}else if ($count%4==2){
		$buttonType="btn-warning";
	}else if ($count%4==3){
		$buttonType="btn-danger";
	}
    
    $count++;
?>   
<a href="index.php/vouchers/select/<?php echo $value['type_id']; ?>" class="btn <?php echo $buttonType . " " . $buttonClass;?>"><?php echo $buttonText; ?></a>
<?php
}
?>
</div>

<style>
    .button-left{
        float:left;
        width:48%;
		margin-bottom:10px;
    }
    
    .button-right{
        float:right;
        width:48%;
		margin-bottom:10px;
    }
</style>