<?php
	if(!isset($_SESSION))
	{
		session_start();
	}
	ob_start();
	error_reporting(0);
	define('_source','./sources/');
	define('_lib','./admin/lib/');
	@include _lib."config.php";
	@include_once _lib."function.php";
	global $d;
	global $lang;
	$d = new func_index($config['database']);
	date_default_timezone_set('Asia/Ho_Chi_Minh');

	if ($_REQUEST['lang']) {
		$_SESSION['lang'] = $_REQUEST['lang'];
		header("Location:".URLPATH);
	}
	elseif(!isset($_SESSION['lang'])) {
		$_SESSION['lang']='vn';
	}
	$lang = $_SESSION['lang'];
	include _source."lang.php";
	include _source."language_".$_SESSION['lang'].".php";
	include _source."file_router_index.php";
	$row_setting= $d->simple_fetch("select * from #_thongtin limit 0,1");	
	$url_page=$d->fullAddress();
	unset($_SESSION['nav']);
	$d->getActive($com,$_SESSION['lang']);
?>
<?php  
    if(isset($_POST['addcart'])){
        $id = $_POST['id'];
        $soluong = isset($_POST['soluong'])?$_POST['soluong']:1;
        $detail = $d->simple_fetch("select * from #_sanpham where id={$id}");
        if(!empty($detail)){
            $id_product = $detail['id'];
            if(isset($_SESSION['cart'][$id_product])){
                $_SESSION['cart'][$id_product] = $_SESSION['cart'][$id_product] + $soluong;
            }
            else{
                 $_SESSION['cart'][$id_product] = $soluong;
            }
        }
    }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" class="metaview">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="format-detection" content="telephone=no">
<base href="<?=URLPATH?>" />
<?php 
	if(empty($_GET['com']) || $source == 'index'){
		echo '<link rel="canonical" href="'.URLPATH.'" />';
	}else{
		$exp_cal = explode("&", $d->fullAddress());
		$exp_cal = explode("?", $exp_cal[0]);
		echo '<link rel="canonical" href="'.$exp_cal[0].'" />';
	}
?>
<?php if(strpos($_SERVER['HTTP_HOST'],"phuongnamvina.com") <> null ) {  ?>
	<meta name="robots" content="noindex">
	<meta name="googlebot" content="noindex">
<?php } ?>
<link href="<?=URLPATH?>templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
<?php include _source."seo.php" ?>
<link href="<?=URLPATH?>templates/extra/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/fonts/font-awesome/font-awesome.min.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/fonts/font_entypo/entypo.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <link rel='stylesheet'  href='<?=URLPATH?>templates/extra/layerslider/layerslider.css' type='text/css' media='all' /> -->

<!-- Nivo slider -->
<link rel='stylesheet'  href='<?=URLPATH?>templates/extra/nivo-slider/nivo-slider.css' type='text/css' media='all' />

<link href="<?=URLPATH?>templates/extra/owlcarousel/owl.carousel.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/extra/magiczoomplus/magiczoomplus.css" rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="<?=URLPATH?>templates/extra/mmenu/jquery.mmenu.css" />
<!-- <link rel="stylesheet" type="text/css" href="<?=URLPATH?>templates/extra/datetimepicker/datepicker.css"> -->
<link href="<?=URLPATH?>templates/extra/slick/slick.css" rel="stylesheet" />
<link href="templates/extra/bootstrap/css/bootstrap-slider.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/extra/wow/animate.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/css/aos.css" rel="stylesheet" />
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyDbYXUfyXrfWP46Zq7koC2u08xw_8So_ng&sensor=true"></script>
<link href="<?=URLPATH?>templates/extra/fancybox/jquery.fancybox.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/css/style.css" rel="stylesheet" />
<link href="<?=URLPATH?>templates/css/responsive.css" rel="stylesheet" />
<script src="<?=URLPATH?>templates/js/jquery-1.11.0.min.js"></script>
</head>
<body class="<?php if($com!='') echo 'module'?>">
<?php include 'limit.php'; ?>
	<div class="fback-top"><i class="fa fa-angle-up"></i></div>
	<div id="full">
		<?php include _source."header.php"; ?>
		<?php include _source."menu.php"; ?>
		<?php if($source=='index') { ?>
			<?php include _source."slider.php"; ?>
		<?php } ?>
		<?php //include _source."login.php"; ?>
		<div id="container">
			<?php if($source=='index') { ?>
				<?php include _source.$source.".php"; ?>
			<?php } else{ ?>
				<div class="center">
					<div id="left">
						<?php include _source."left.php"; ?>
					</div>
					<div id="right">
						<?php include _source.$source.".php"; ?>
					</div>
					<div class="clear"></div>
				</div>
			<?php } ?>
		</div>
		<?php include _source."doitac.php";?>
		<?php include _source."footer.php";?>
	</div>
	
	<div class="ar-fb">
		<div>
			<a href="javascript:" class="i-facebook">
				<div class="call_now1">
					<div class="call_now_circle"></div>
					<div class="call_now_circle_fill"></div>
					<div class="call_now_icon1"></div>
				</div>
			</a>
		</div>
	    <div class="ar-chat">
		    <div class="fb-page" data-href="<?=$row_setting['facebook']?>" data-tabs="messages" data-width="310" data-height="270" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="<?=$row_setting['facebook']?>" class="fb-xfbml-parse-ignore"><a href="<?=$row_setting['facebook']?>">Facebook</a></blockquote></div>
		</div>
	</div>
	<a href="https://zalo.me/<?=$row_setting['hotline']?>" target='_blank'>
	    <div class="call_now2">
	        <div class="call_now_circle"></div>
	        <div class="call_now_circle_fill"></div>
	        <div class="call_now_icon2"></div>
	    </div>
	</a>
	<a href="tel:<?=$row_setting['hotline']?>">
	    <div class="call_now">
	        <div class="call_now_circle"></div>
	        <div class="call_now_circle_fill"></div>
	        <div class="call_now_icon"></div>
	    </div>
	</a>
	<?php include _source.'js.php';?>
</body>
</html>
<?php $d->disconnect() ?>