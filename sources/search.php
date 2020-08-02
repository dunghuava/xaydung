<?php
	$key = $_GET['textsearch'];

	$sanpham = $d->o_fet("select  * from #_sanpham where hien_thi = 1 and ten_{$_SESSION['lang']} like '%".addslashes($key)."%' order by id desc");

	$name = _ketquatimkiem. " (".count($sanpham).")";
	//if(count($loai) == 0) $d->location(URLPATH."404.html");

    if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
    
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=18;
    $maxP=5;
    $phantrang=$d->phantrang($sanpham, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $sanpham=$phantrang['source'];
?>
<section>
	<div class="page-title">
		<ul class="breadcrumb">
			<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
			<li><a title="<?=_search?>"><?=$name?></a></li>
		</ul>
	</div>
		
	<div class="row">
	<?php if (count($sanpham) > 0) { ?>
		<?php foreach($sanpham as $item) {?>
		<div class="col-pr col-md-4 col-sm-4 col-xs-6">
			<div class="ar-pr">
				<div class="img-pr">
					<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>" class="effect">
						<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=245&h=230&zc=2';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh'] ?>&w=245&h=230&zc=2" alt='<?=$item['ten_'.$_SESSION['lang']] ?>'>				
					</a>
				</div>
				<div class="info-pr">
					<h3 class="name-pr">
						<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
							<?=$item['ten_'.$_SESSION['lang']] ?>
						</a>
					</h3>
					<div class="price-pr">
						Giá: <span><?=($item['gia']>0) ? $d->vnd($item['gia']) :  _lienhe;?></span>
					</div>
					<div class="more_sp">
						<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
							Chi tiết
						</a>
					</div>
				</div>
			</div>
		</div>	
		<?php } ?>
	<?php }else{echo "<div class='note'>"._noidungdangcapnhat."</div>"; }?>
	<div class="clear"></div>
	</div>
	<?php if(@$phantrang['paging'] <> ''){ ?>
	<div class="pagination-page">
		<?php echo @$phantrang['paging']?>
	</div>
	<?php } ?>
</section>

