<?php
	// var_dump($com);
	// var_dump($_REQUEST['alias']);
	if($com=='tags') {
		$tags=addslashes($_REQUEST['alias']);
		$query = $d->simple_fetch("select * from #_tags where alias = '$tags'");
		$tintuc = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and alias_{$_SESSION['lang']} like '%".$tags."%' order by so_thu_tu asc, id desc");

	}
	else {
		$loai = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_{$_SESSION['lang']} = '$com'");

		if(count($loai) == 0) $d->location(URLPATH."404.html");
		$id_sub=substr($d->findIdSub($loai['id'],1),1);
		
		$id_loai=$loai['id'].$d->findIdSub($loai['id']);
		$tintuc = $d->o_fet("select * from #_tintuc where hien_thi = 1 and FIND_IN_SET(id_loai,'$id_loai') <> 0 order by so_thu_tu asc, id desc");
	}



   if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
  
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=12;
    $maxP=10;
    $phantrang=$d->phantrang($tintuc, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $tintuc=$phantrang['source'];

?>



<section>
		
<div class="page-title">
	<div class="bg-white">
	<div class="col-md-12 plr0">
	<ul class="breadcrumb">
		<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
		<?php if($com!='tags') {?>
			<?=$d->breadcrumb($loai['id'],$_SESSION['lang'],URLPATH)?>
		<?php } else { ?>
			<li><a href="<?=URLPATH ?>tags/<?=$tags?>.html" title="Tìm theo <?=$tags?>">Tag: <?=$tags?></a></li>
		<?php } ?>
	</ul>
	</div>
	</div>
</div>
<div class="clearfix"></div>		
<div class="box-item module">

<div class="row">
<?php if (count($tintuc) >0) { ?>
	<?php foreach ($tintuc  as $i => $value) { ?>
	<div class="ar_product col-md-4 col-sm-4 col-xs-6">			
		<div class="ar_dv in">
		 	<div class="img_dv">
		 		<a href="<?=URLPATH.$value['alias_'.$_SESSION['lang']] ?>.html" title="<?=$value['ten_'.$_SESSION['lang']] ?>">
					<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=260&h=185';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=260&h=185">				
				</a>
			</div>
			<div class="name_des_dv">
				<div class="name_dv">
					<a href="<?=URLPATH.$value['alias_'.$_SESSION['lang']] ?>.html" title="<?=$value['ten_'.$_SESSION['lang']] ?>">	
						<?=$value['ten_'.$lang] ?>		
					</a>
				</div>
				<div class="description_dv">
					<?=catchuoi($value['mo_ta_'.$lang],120) ?>
				</div>
			</div>
	 	</div>
	 </div>
	<?php } ?>
	<div class="clear"></div>
<?php }else { ?><div class="note"><?=_noidungdangcapnhat?></div> <?php } ?>
</div>
<div class="pagination-page">
<?php echo @$phantrang['paging']?>
</div>	
					
</div>
	
</section>

