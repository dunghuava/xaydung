<?php 
	$weekday = date('l',$tintuc[0]['ngay_dang']);
	$weekday = strtolower($weekday);
	switch($weekday) {
	    case 'monday':
	        $weekday = 'Thứ hai';
	        break;
	    case 'tuesday':
	        $weekday = 'Thứ ba';
	        break;
	    case 'wednesday':
	        $weekday = 'Thứ tư';
	        break;
	    case 'thursday':
	        $weekday = 'Thứ năm';
	        break;
	    case 'friday':
	        $weekday = 'Thứ sáu';
	        break;
	    case 'saturday':
	        $weekday = 'Thứ bảy';
	        break;
	    default:
	        $weekday = 'Chủ nhật';
	        break;
	}
?>
<div id="clock"><?=$weekday?>, <?=date('d/m/Y : H:m:i',$tintuc[0]['ngay_dang'])?></div>
<h1 class="name"><?=@$tintuc[0]['ten_'.$_SESSION['lang']]?></h1>
<div class="text-pages">
<?=@$tintuc[0]['noi_dung_'.$_SESSION['lang']]?>
</div>