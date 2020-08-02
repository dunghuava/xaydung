
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