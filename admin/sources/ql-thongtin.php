<?php
if(!defined('_source')) die("Error");
$a = (isset($_REQUEST['a'])) ? addslashes($_REQUEST['a']) : "";

switch($a){
	case "man":
		showdulieu();
		$template = @$_REQUEST['p']."/them";
		break;
	case "save":
		luudulieu();
		break;
	default:
		$template = "index";
}
function showdulieu(){
	global $d, $items;
	if(isset($_REQUEST['p'])){
		$id = addslashes($_REQUEST['p']);
		$items = $d->o_fet("select * from #_thongtin where id = '1'");
	}
}

function luudulieu(){
	global $d;
	$file_name=$d->fns_Rand_digit(0,9,12);
	if(@$file = $d->upload_image("file", '', '../img_data/images/',$file_name)){

		$hinhanh = $d->o_fet("select * from #_thongtin where id = '1'");
		@unlink('../img_data/images/'.$hinhanh[0]['hinh_anh']);
		$data['hinh_anh'] = $file;

	}
	//echo $_POST['copyright'];
	//exit();
	$data['hotline'] = addslashes($_POST['hotline']);
	$data['company_vn'] = addslashes($_POST['company_vn']);
	$data['company_us'] = addslashes($_POST['company_us']);
	$data['address_vn'] = addslashes($_POST['address_vn']);
	$data['address_us'] = addslashes($_POST['address_us']);
	$data['twitter'] = addslashes($_POST['twitter']);
	$data['facebook'] = addslashes($_POST['facebook']);
	$data['google'] = addslashes($_POST['google']);
	$data['youtube'] = addslashes($_POST['youtube']);
	$data['skype'] = addslashes($_POST['skype']);
	$data['dien_thoai'] = addslashes($_POST['dien_thoai']);
	$data['email'] = addslashes($_POST['email']);
	$data['toado'] = addslashes($_POST['toado']);
	$data['copyright'] = addslashes($_POST['copyright']);

	$d->reset();
	$d->setWhere("id","1");
	$d->setTable('#_thongtin');
	if($d->update($data)){
		$d->redirect("index.php?p=".$_GET['p']."&a=man");
	}else{
		$d->alert("#ERR.");
		$d->redirect("index.php?p=".$_GET['p']."&a=man");
	}
}
?>