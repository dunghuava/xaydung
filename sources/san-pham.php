<?php
	$query=$d->simple_fetch("select * from #_category where alias_{$_SESSION['lang']}='$com'");
	$id_loai=$query['id'];
	$all_id=$id_loai.$d->findIdSub($id_loai);

	if($d->findIdSub($id_loai)!='') {
		$nav_child=$d->o_fet("select * from #_category where id_loai=$id_loai and hien_thi=1 order by so_thu_tu asc, id desc");
	}
	$sanpham = $d->o_fet("select * from #_sanpham where hien_thi = 1  and id_loai in ( $all_id ) and style=0 order by so_thu_tu asc, id desc");

	if($id_loai == '') $d->location(URLPATH."404.html");

	if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");

	$curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
	$url= $d->fullAddress();
	$maxR= 18;
	$maxP=5;
	$phantrang=$d->phantrang($sanpham, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
	$sanpham=$phantrang['source'];
	
	$link=explode("?",$d->fullAddress());
	$vari=explode("&",$link[1]);
	$search=array();
	foreach($vari as $item) {
	$str=explode("=",$item);
	$search["$str[0]"]=$str[1];
	}$and = "";
?>
<section>
	<div class="page-title">
		<ul class="breadcrumb">
			<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
			<?=$d->breadcrumb($id_loai,$_SESSION['lang'],URLPATH)?>
		</ul>
	</div>
	<div class="clearfix"></div>
	<div class="mota-dm">
		<?=$query['mo_ta_'.$lang]?>
	</div>
	<div class="clearfix"></div>

	<?php include("ct_product.php"); ?>
	<div class="clearfix"></div>

	<div class="pagination-page">
		<?php echo @$phantrang['paging']?>
	</div>
</section>

