<?php
if(!defined('_source')) die("Error");
$a = (isset($_REQUEST['a'])) ? addslashes($_REQUEST['a']) : "";
switch($a){
	case "man":
		showdulieu();
		$template = @$_REQUEST['p']."/hienthi";
		break;
	case "add":
		$template = @$_REQUEST['p']."/them";
		break;
	case "edit":
		showdulieu();
		$template = @$_REQUEST['p']."/doipass";
		break;
	case "save":
		luudulieu();
		break;
	case "delete":
		xoadulieu();
		break;
	case "delete_all":
		xoadulieu_mang();
		break;
	case "savepass":
		savepass();
		break;
	default:
		$template = "index";
}

function savepass(){
	global $d;

	$id = $_SESSION["user_admin"];
	$data['ho_ten'] = addslashes($_POST['ho_ten']);	
	$data['pass_hash'] = sha1($d->clean(addslashes($_POST['password'])));


	$d->reset();
	$d->setTable('#_user');
	$d->setWhere('id',$id);
	if($d->update($data))
	{
		$d->redirect("index.php?p=ql-user&a=man");
	}
	else{
		$d->transfer("Lưu dữ liệu bị lỗi", "index.php?p=ql-user&a=man");
	}
}

function showdulieu(){
	global $d, $items, $paging, $loai,$hang;
	if($_REQUEST['a'] == 'man'){
		//update cot
		$id = isset($_GET['id']) ? addslashes($_GET['id']) : "";
		if($id!=null){

		if($_SESSION['quyen'] == 1){
			$cot = (isset($_GET['b'])) ? addslashes($_GET['b']) : "";
			$trangthai = (isset($_GET['TT'])) ? addslashes($_GET['TT']) : "";

			$d->reset();
			$d->setTable('#_user');
			$d->setWhere('id',$id);
			if($trangthai == '0') $data[$cot] = 0;
			else  $data[$cot] = 1;
			if($id <> 'admin'){
				if($d->update($data)){}
				}
		}else $d->alert("Quản trị viên không thể thực hiện thao tác này!");
			$d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
		}
		//show du lieu
		if(isset($_GET['seach'])){
			$seach = addslashes($_GET['seach']);
			$key = (isset($_GET['key']))? addslashes($_GET['key']):"";
			if($seach == 'id'){
				$items = $d->o_fet("select * from #_user where id = '".$key."'");
			}else{
				$items = $d->o_fet("select * from #_user where ho_ten like '%".$key."%'");
			}
		}
		else $items = $d->o_fet("select * from #_user order by id desc");


		if(isset($_GET['hienthi'])){
			$maxR= $d->lay_show_hienthi(addslashes($_GET['hienthi']));
		}
		else $maxR=25;
		// phan trang
		$page = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
		$url=$d->fullAddress();
		$maxP=$maxR;
		$paging=$d->phantrang($items, $url, $page, $maxR, $maxP,'classunlink','classlink','page');
		$items=$paging['source'];
		//
	}else if($_REQUEST['a'] == 'edit'){
		//lay noi dung theo id
		$id = $_SESSION["user_admin"];
		$items = $d->o_fet("select * from #_user where id =  '".$id."'");
	}
}

function luudulieu(){
	global $d;

	$data['id'] = $d->clean(addslashes($_POST['id']));
	$data['user_hash'] = sha1($data['id']);
	$data['ho_ten'] = addslashes($_POST['ho_ten']);
	$data['pass_hash'] = sha1($d->clean(addslashes($_POST['password'])));
	$data['quyen_han'] = addslashes($_POST['quyen_han']);

	$data['hien_thi'] = isset($_POST['hien_thi']) ? 1 : 0;
	$d->reset();
	$d->setTable('#_user');
	if($d->insert($data))
	{
		$d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
	}
	else{
		$d->transfer("Tên tài khoản đã tồn tại!", "index.php?p=ql-user&a=man");
	}
}

function xoadulieu(){
	global $d;
	if($_SESSION['quyen'] == 1){
		if(isset($_GET['id'])){
			$id =  addslashes($_GET['id']);
			$d->reset();
			$d->setTable('#_user');
			$d->setWhere('id',$id);
			$d->setWhereOrther('id','admin');
			if($d->delete()){
				@$d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
			}else
				$d->transfer("Xóa dữ liệu bị lỗi", "index.php?p=ql-user&a=man");
		}else $d->transfer("Không nhận được dữ liệu", "index.php?p=ql-user&a=man");
	}else {
		$d->alert("Quản trị viên không thể thực hiện thao tác này!");
		@$d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
	} 
}

function xoadulieu_mang(){
	global $d, $d;
	if($_SESSION['quyen'] == 1){
		if(isset($_POST['chk_child'])){
			$chuoi = "";
			foreach ($_POST['chk_child'] as $val) {
				if($val <> 'admin')
				$chuoi .=$val.",";
			}
			$chuoi = trim($chuoi,',');
			//lay danh sách idsp theo chuoi
			$hinhanh = $d->o_fet("select * from #_user where id in ($chuoi)");
			if($d->o_fet("delete from #_user where id in ($chuoi)")){
				//xoa hình ảnh
				foreach ($hinhanh as $ha) {
					@unlink('../img_data/images/'.$ha['hinh_anh']);

				}
				$d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
			}
			else $d->transfer("Xóa dữ liệu bị lỗi", "index.php?p=ql-user&a=man");
		}else $d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
	}else {
		$d->alert("Quản trị viên không thể thực hiện thao tác này!");
		@$d->redirect("index.php?p=ql-user&a=man&page=".@$_REQUEST['page']."");
	} 
}
?>