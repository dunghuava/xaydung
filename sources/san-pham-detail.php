<?php
	$ctsp = $d->o_fet("select * from #_sanpham where hien_thi = 1 and alias_".$_SESSION['lang']." = '".$com."'");
	$property=explode('@1@',$ctsp[0]['property']);
	if(count($ctsp) == 0) $d->location(URLPATH."404.html");

	$sanpham = $d->o_fet("select * from #_sanpham where hien_thi = 1  and id <> '".@$ctsp[0]['id']."' and id_loai = '".@$ctsp[0]['id_loai']."' order by id desc limit 0,16");
	$hinh_anh_sp = $d->o_fet("select * from #_sanpham_hinhanh where id_sp = '".@$ctsp[0]['id']."' order by id desc");
	$tab=true;
?>

<section>
	<div class="page-title">
		<ul class="breadcrumb">
			<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
			<?=$d->breadcrumb($ctsp[0]['id_loai'],$_SESSION['lang'],URLPATH)?>
		</ul>
	</div>
	<div class="img-detail-pro" data-wow-duration="2s">
		<div class="img_detail">
			<a id="Zoomer" href="<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh'] ?>" data-options="zoomMode: magnifier" class="MagicZoomPlus" rel="zoom-width:300px; zoom-height:300px;selectors-effect-speed: 600; selectors-class: Active;">
				<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh']?>&w=400&h=300&zc=2">
	         </a>
	    </div>
	    <div class="sub_img_detail">
			<?php if (count($hinh_anh_sp)>0) { ?>
		    	<div>
					<div class="sub_img_sanpham">
						<a href="<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh'] ?>" rel="zoom-id: Zoomer" rev="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh']?>&w=400&h=300&zc=2">
							<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh'] ?>&w=100&h=70&zc=2">
						</a>
					</div>
		    	</div>
			<?php } ?>
			<?php foreach ($hinh_anh_sp as $key => $value) { ?>
			<div>
				<div class="sub_img_sanpham">
					<a href="<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>" rel="zoom-id: Zoomer" rev="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh']?>&w=400&h=300&zc=2">
						<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=100&h=70&zc=2">
					</a>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>

	<div class="quote-pro" data-wow-duration="2s">

		<div class="box">

			<h1 class="sp_detail">
				<?=$ctsp[0]['ten_'.$_SESSION['lang']] ?>
			</h1>

			<div class="sp_detail">
				<?=_masp?>: <?=$ctsp[0]['ma_sp']?>
			</div>	

			<div class="sp_detail price_detail" id="tong_tien">Giá bán: <h3><?=($ctsp[0]['gia']>0) ? $d->vnd($ctsp[0]['gia']) :  _lienhe;?></h3></div>	
				
			<?php if($ctsp[0]['mo_ta_'.$lang]!='') { ?>
				<div class="sp_detail mota"><?=catchuoi($ctsp[0]['mo_ta_'.$_SESSION['lang']],300)?></div>
			<?php } ?>
			<!-- <div class="sp_detail lienhemuahang">
				<?=_lienhemuahang?><br/>
				<?=$row_setting['hotline']?>
			</div> -->
			<div class="sp_detail" style="display: inline-block;width: 100%;">
				<div class="col-share col-md-5">
					<form method="post" action="<?=URLPATH."gio-hang.html" ?>">
						<input type="hidden" name="id" value="<?=$ctsp[0]['id'] ?>">
						<button type="submit" name="addcart" class="addcart">
							<i class="fa fa-shopping-cart" aria-hidden="true"></i> <span><?=_dathang?></span>
						</button>
					</form>
				</div>
				<div class="col-share col-md-7">
					<?php include("ct_share.php");?>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div id="product_detail">
		<div class="title_tab">
			<li rel='tab1' class="active">Thông tin sản phẩm</li>
			<li rel='tab2'>Bình luận</li>
			<div class="clear"></div>
		</div>
		<div>
			<div class="content_tab" id="tab1">
				<div class="text-pages">
					<?=$ctsp[0]['thong_tin_'.$lang] ?>
				</div>
			</div>
			<div class="content_tab" id="tab2">
				<div class="fb-comments" data-href="<?=$url_page?>" data-numposts="5" data-width="100%"></div>
			</div>
		</div>
	</div> 
	<div class="title_main">
	    <div class="title-main"><?=_pro_relative?></div>
	</div>
	<?php include("ct_product.php"); ?>	
</section>