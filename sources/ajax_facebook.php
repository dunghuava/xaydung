<?php
	if(!isset($_SESSION))
	{
		session_start();
	}
	error_reporting(0); 
	define('_source','../sources/');
	define('_lib','../admin/lib/');
	@include _lib."config.php";
	@include_once _lib."function.php";
	$d = new func_index($config['database']);
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	
	$data['email'] = $_POST['email'];
	$data['ten'] = $_POST['name'];
	$data['mathanhvien'] = $_POST['id'];
	$data['photo'] = $_POST['photo'];
	$data['ngaytao'] = time();

	$check = $d->o_fet("select * from #_thanhvien where email='".$data['email']."'");
	if (count($check)>0) {
		session_start();
		$_SESSION['login']=array();
		$_SESSION['login'] = $check;
	}else{
		$d->setTable('#_thanhvien');
		$id = $d->insert($data);
		$check = $d->o_fet("select * from #_thanhvien where id='".$id."'");
		// var_dump($check);
		session_start();
		$_SESSION['login']=array();
		$_SESSION['login'] = $check;
	}
?>