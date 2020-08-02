<?php
	// var_dump($com);
	// var_dump($_REQUEST['alias']);
	if($com=='tags') {
		$tags=addslashes($_REQUEST['alias']);
		$query = $d->simple_fetch("select * from #_tags where alias = '$tags'");
		$id_tag = $query['id'];
		// $tintuc = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and alias_{$_SESSION['lang']} like '%".$tags."%' order by so_thu_tu asc, id desc");
		$tintuc = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and FIND_IN_SET(".$id_tag.",tags) order by so_thu_tu asc, id desc");

	}
	else {
		$loai = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_{$_SESSION['lang']} = '$com'");

		if(count($loai) == 0) $d->location(URLPATH."404.html");
		$id_sub=substr($d->findIdSub($loai['id'],1),1);
		
		$id_loai=$loai['id'].$d->findIdSub($loai['id']);
		$tintuc = $d->o_fet("select * from #_tintuc where hien_thi = 1 and hen_ngay_dang<'".time()."' and FIND_IN_SET(id_loai,'$id_loai') <> 0 order by so_thu_tu asc, id desc");
	}



   if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
  
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=10;
    $maxP=10;
    $phantrang=$d->phantrang($tintuc, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $tintuc=$phantrang['source'];

?>
<section>
<div class="page-title">
	<ul class="breadcrumb">
		<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
		<?php if($com!='tags') {?>
			<?=$d->breadcrumb($loai['id'],$_SESSION['lang'],URLPATH)?>
		<?php } else { ?>
			<li><a href="<?=URLPATH ?>tags/<?=$tags?>.html" title="Tìm theo <?=$tags?>">Tag: <?=$tags?></a></li>
		<?php } ?>
	</ul>
</div>
<div class="clearfix"></div>		
<div class="box-item module">
<?php if (count($tintuc) >0) { ?>
<?php foreach ($tintuc  as $i => $item) { ?>			
	<div class="item-content-row" >
		<div class="img">
			<a href="<?=URLPATH.$d->create_long_link($item['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=@$item['ten_'.$_SESSION['lang']] ?>">
			<img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh']?>&w=150&h=120" alt="<?=@$item['ten_'.$_SESSION['lang']] ?>" onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';">
			</a>
		</div>
		<div class="content">
			<h3 class="name"><a href="<?=URLPATH.$d->create_long_link($item['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=@$item['ten_'.$_SESSION['lang']] ?>"><?=@$item['ten_'.$_SESSION['lang']] ?></a></h3>
			<div class="ngaydang">
                <i class="fa fa-calendar" aria-hidden="true"></i><?=_ngaydang?>: <?=date('d/m/Y',$item['ngay_dang'])?>
            </div>
			<div class="quote hidden-xs"><?=$d->catchuoi_new(strip_tags($item['mo_ta_'.$_SESSION['lang']]),250) ?></div>
		</div>
	</div>
<?php } ?>
<?php }else { ?><div class="note"><?=_noidungdangcapnhat?></div> <?php } ?>
<div class="clearfix"></div>
<div class="pagination-page">
<?php echo @$phantrang['paging']?>
</div>	
					
</div>
	
</section>

