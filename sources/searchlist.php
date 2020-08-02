<?php
	function bodautv($str)
		{
		$str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|�� �|ắ|ặ|ẳ|ẵ)/", 'a', $str);
		$str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
		$str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
		$str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|�� �|ợ|ớ|ở|ỡ)/", 'o', $str);
		$str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
		$str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
		$str = preg_replace("/(đ)/", 'd', $str);
		$str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|�� �|Ặ|Ẳ|Ẵ)/", 'A', $str);
		$str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
		$str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
		$str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|�� �|Ợ|Ở|Ớ|Ỡ)/", 'O', $str);
		$str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
		$str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
		$str = preg_replace("/(Đ)/", 'D', $str);
		$str = preg_replace("/( )/", '-', $str);
		$str = preg_replace("/(\?)/", '-', $str);
		$str = preg_replace("/(:)/", '-', $str);
		$str = preg_replace("/(&)/", '', $str);
		$str = preg_replace("/,/", '-', $str);
		$str = preg_replace("/-+-/",'-',$str);

		$str = trim($str,'-');
		return $str;
		}

	$keyword = ($_GET['keyword']);
	$id_list = $_GET['list_sp'];

	if (($id_list) == 0) {
		$sanpham = $d->o_fet("select  * from #_sanpham where hien_thi = 1 and ten_{$_SESSION['lang']} like '%".addslashes($keyword)."%' order by id desc");
	}else{
		$sanpham = $d->o_fet("select  * from #_sanpham where hien_thi = 1 and ten_{$_SESSION['lang']} like '%".addslashes($keyword)."%' and id_loai='$id_list' order by id desc");
	}

	$name = _ketquatimkiem. " (".count($sanpham).")";

    if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
    
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=12;
    $maxP=5;
    $phantrang=$d->phantrang($sanpham, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $sanpham=$phantrang['source'];
?>
<section>
	<div class="page-title">
		<div class="bg-white">
		<div class="col-md-12 plr0">
		<ul class="breadcrumb">
		<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
		<li><a title="<?=_search?>"><?=_search?></a></li>
		</ul>
		</div>
		</div>
	</div>
	<h4 class="title-module"><span><?=$name?></span></h4>
<div class="row">
	<?php foreach ($sanpham  as $i => $item) { ?>	
		<div class="ar_product col-md-4 col-sm-4 col-xs-6">
			<div class="item-pro mb23">
				<div class="img">
					<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
						<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=262&h=210';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh'] ?>&w=262&h=210">				
					</a>
				</div>

				<div class="info">
					<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
						<h3><?=$item['ten_'.$_SESSION['lang']] ?></h3>
					</a>
					<div class="cart_more">
						<div class="cart_sp" title="Bỏ vào giỏ hàng">
							<form method="post" action="<?=URLPATH."gio-hang.html" ?>">
								<input type="hidden" name="id" value="<?=$item['id'] ?>">
								<button type="submit" name="addcart" class="submit_index">
										<img src="images/giohang.png" alt="giỏ hàng">Giỏ hàng
								</button>
							</form>
						</div>
						<div class="more_sp">
							<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
								Chi tiết
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
</div>
<div class="clearfix"></div>
<?php if(@$phantrang['paging'] <> ''){ ?>
<div class="pagination-page">
	<?php echo @$phantrang['paging']?>
</div>
<?php } ?>
</section>

