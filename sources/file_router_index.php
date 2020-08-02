<?php
	$com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
	$alias = (isset($_REQUEST['alias'])) ? addslashes($_REQUEST['alias']) : "";
	$alias1 = (isset($_REQUEST['alias1'])) ? addslashes($_REQUEST['alias1']) : "";
	$alias2 = (isset($_REQUEST['alias2'])) ? addslashes($_REQUEST['alias2']) : "";
	

	if($com=='search') {
		$com='search';
	}
	if($com=='searchlist') {
		$com='searchlist';
	}
	else if($com=='khuyen-mai') {
		$com='khuyen-mai';
	}
	else if($com=='don-hang') {
		$com='don-hang';
	}
	else if($com=='tags') {
		$com='tags';
	}
	else {
		if($alias!='') {
			$com=$alias;
		}
		if($alias1!='') {
			$com=$alias1;
		}
		if($alias2!='') {
			$com=$alias2;
		}
	}
	
	$query=$d->o_fet("select * from #_category where alias_{$_SESSION['lang']}='$com' ");
	// $ID_dichvu = '463'.$d->findIdSub('463');
	// $ID_dichvu = explode(',', $ID_dichvu);
	
	if(count($query) > 0 && $com!='') {
		if($query[0]['module']==1) {
			$source = 'gallery';		
		}
		else if($query[0]['module']==2) {
			$source = 'tin-tuc';
			if($query[0]['id']== 272) {
				$source = 'about';
			}
			// if (in_array($query[0]['id'],$ID_dichvu)) {
			// 	$source = 'dichvu';
			// }
		}
		else if($query[0]['module']==3) {
			$source = 'san-pham';
		}
		else if($query[0]['module']==4) {
			$source = 'bat-dong-san';
		}
		else if($query[0]['module']==5) {
			$source = 'lien-he';
		}
		else if($query[0]['module']==6) {
			$source = 'video';
		}
		else if($query[0]['module']==7) {
			$source = 'gio-hang';
		}
		else if($query[0]['module']==8) {
			$source = 'thanh-cong';
		}
	}
	else if($d->num_rows("select * from #_tintuc where alias_{$_SESSION['lang']}='$com' ") > 0 && $com!='') {
		$source = 'tin-tuc-detail';
	}
	else if($d->num_rows("select * from #_sanpham where alias_{$_SESSION['lang']}='$com' ") > 0 && $com!='') {
		$query = $d->simple_fetch("select * from #_sanpham where alias_{$_SESSION['lang']}='$com' ");
		if($query['style']==0) {
			$source = 'san-pham-detail';
		}
		else {
			$source = 'bat-dong-san-detail';
		}
	}
	else if($com == 'dat-lich'){
		$source = 'dat-lich';
	}
	else if($com == 'sitemap'){
		$source = 'sitemap';
	}
	else if($com == 'gio-hang'){
		$source = 'gio-hang';
	}
	else if($com == 'faqs'){
		$source = 'faqs';
	}
	else if($com == 'tags'){
		$source = 'tin-tuc';
	}
	else if($com == 'search'){
		$source = 'search';
	}	
	else if($com == 'searchlist'){
		$source = 'searchlist';
	}	
	else if($com == 'don-hang'){
		$source = 'don-hang';
	}
	else if($com=='') {
		$source = 'index';
	}else if($com == 'dang-ky'){
		$source = 'dangky';
	}
	else if($com == 'dang-nhap'){
		$source = 'dangnhap';
	}
	else if($com == 'transfer'){
		$source = 'transfer';
	}
	else if($com == 'logout'){
		$source = 'logout';
	}
	else if($com=='404'){
		$source = '404';
	}
	else {
		$source = '404';
	}

?>