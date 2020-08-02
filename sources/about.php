<?php
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
    $maxR=9;
    $maxP=5;
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

	<!-- <h1 class="name"><?=@$tintuc[0]['ten_'.$_SESSION['lang']]?></h1> -->
	<div class="text-pages">
		<?=@$tintuc[0]['noi_dung_'.$_SESSION['lang']]?>
	</div>
	<?php include("ct_social.php"); ?>
</section>

