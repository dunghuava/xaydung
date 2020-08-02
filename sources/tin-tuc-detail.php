<?php
	
	$tintuc = $d->o_fet("select * from #_tintuc where hien_thi = 1 and alias_".$_SESSION['lang']." = '".$com."'");
	if(count($tintuc) == 0) $d->location(URLPATH."404.html");
	
	$tintuc_lienquan = $d->o_fet("select * from #_tintuc where hien_thi = 1 and id <> '".@$tintuc[0]['id']."' and id_loai = '".$tintuc[0]['id_loai']."' order by id desc limit 0,12");
	
	$loai=$d->simple_fetch("select * from #_category where id = '".$tintuc[0]['id_loai']."'");
	
	$hinh_anh_slide = $d->o_fet("select * from #_sanpham_hinhanh where id_sp = '".$tintuc[0]['id']."' order by id desc");

	
?>


<section>

<div class="page-title">
	<ul class="breadcrumb">
		<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
		<?=$d->breadcrumb($tintuc[0]['id_loai'],$_SESSION['lang'],URLPATH)?>
	</ul>
</div>
<div class="clearfix"></div>
<div class="box-item module">
	<?php if(count($hinh_anh_slide>0) && $hinh_anh_slide[0]['hinh_anh']!='') {?>
	<div class="box-show-img">
		<div class="owl-detail-content">
		<?php foreach($hinh_anh_slide as $item) {?>
		<figure>
			<a href="<?=URLPATH ?>img_data/images/<?=$item['hinh_anh'] ?>" title="<?=$item['title'] ?>" class="fancybox" rel="fan1">
				<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh'] ?>&w=400&h=300">
			</a>
		</figure>
		<?php } ?>
		</div>
	</div>
	<?php } ?>
	<div class="text-contents wow fadeIn" data-wow-duration="2s">
		<?php include("ct_content.php"); ?>
		<?php include("ct_social.php"); ?>
		<div class="clearfix"></div>	
		<div class="relative-contents">
			<h3><?=_baivietlienquan ?> <span>|</span> <a href="<?=URLPATH?><?=$loai['alias_'.$lang]?>.html">Xem tất cả</a></h3>
			<ul>
				<?php foreach ($tintuc_lienquan as $tt) { ?>
					<li><a href="<?=URLPATH.$d->create_long_link($tt['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html"><i class="fa fa-circle" aria-hidden="true"></i> <?=$tt['ten_'.$_SESSION['lang']]?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>

</section>

