<?php
$map_lienhe=true;
if(!isset($_SESSION))
{
session_start();
}


include "./smtp/index.php";
date_default_timezone_set('Asia/Ho_Chi_Minh');

if(isset($_POST['sub_email1'])){
	$d->reset();
	$data['ho_ten'] = addslashes($_POST['ho_ten']);
	$data['email'] = addslashes($_POST['email']);
	$data['sdt'] = addslashes($_POST['so_dien_thoai']);
	$data['noi_dung'] = addslashes($_POST['message']);
	$data['ngay_hoi'] = date('d-m-Y H:i:s');
	$data['trang_thai'] = '0';
	$d->setTable('#_lienhe');
		$noidung = "<div style='margin-bottom:5px;'>Bạn nhận được tin nhắn từ website: ".URLPATH." : </div>";
		$noidung .= "<div style='margin-bottom:5px;'>Thông tin: </div>";
		$noidung .= "<div style='margin-bottom:5px;'>Họ tên: ".$_POST['ho_ten']."</div>";
		$noidung .= "<div style='margin-bottom:5px;'>Số điện thoại: ".$_POST['so_dien_thoai']."</div>";
		$noidung .= "<div style='margin-bottom:5px;'>Email: ".$_POST['email']."</div>";
		// $noidung .= "<div style='margin-bottom:5px;'>Tiêu đề: ".$_POST['tieu_de']."</div>";
		$noidung .= "<div style='margin-bottom:5px;    line-height: 1.5;'>Content: ".$_POST['message']."</div>";
		$noidung .= "<div style='margin-bottom:5px;'>Date: ".date('d-m-Y h:i:s', time())."</div>";
		$noidung .= "<div style='color:red; margin-top:10px; font-style:italic; font-size:12px'>Đây là thư gửi tự động, vui lòng không trả lời thư này!</div>";
	// if($d->insert($data)) {
	if(sendmail("Liên hệ từ website ".URLPATH, $noidung, $_POST['email'] , $row_setting['email'] ,  $data['ho_ten'])) {
		$d->alert("Gửi liên hệ thành công!");
		$d->location(URLPATH);
		// $('.captcha_status').html("Thành công: Thông tin của bạn đã được gởi đi!!!").fadeIn('slow').delay(4000).fadeOut('slow');
	}
	else {
		$d->alert("Error!");
	}
}
if(isset($_POST['sub_email'])){
	$chuoi1 = strtolower($_SESSION['code_security']);
	$chuoi2 = strtolower($_POST['captcha']);
	if($chuoi1 == $chuoi2)
	{
		$d->reset();
		$data['ho_ten'] = addslashes($_POST['ho_ten']);
		$data['email'] = addslashes($_POST['email']);
		$data['sdt'] = addslashes($_POST['so_dien_thoai']);
		$data['noi_dung'] = addslashes($_POST['message']);
		$data['dia_chi'] = addslashes($_POST['dia_chi']);
		$data['ngay_hoi'] = date('d-m-Y H:i:s');
		$data['trang_thai'] = '0';
		$d->setTable('#_lienhe');
			$noidung = "<div style='margin-bottom:5px;'>Bạn nhận được tin nhắn từ website: ".URLPATH." : </div>";
			$noidung .= "<div style='margin-bottom:5px;'>Thông tin: </div>";
			$noidung .= "<div style='margin-bottom:5px;'>Họ tên: ".$_POST['ho_ten']."</div>";
			$noidung .= "<div style='margin-bottom:5px;'>Địa chỉ: ".$_POST['dia_chi']."</div>";
			$noidung .= "<div style='margin-bottom:5px;'>Số điện thoại: ".$_POST['so_dien_thoai']."</div>";
			$noidung .= "<div style='margin-bottom:5px;'>Email: ".$_POST['email']."</div>";
			// $noidung .= "<div style='margin-bottom:5px;'>Tiêu đề: ".$_POST['tieu_de']."</div>";
			$noidung .= "<div style='margin-bottom:5px;    line-height: 1.5;'>Content: ".$_POST['message']."</div>";
			$noidung .= "<div style='margin-bottom:5px;'>Date: ".date('d-m-Y h:i:s', time())."</div>";
			$noidung .= "<div style='color:red; margin-top:10px; font-style:italic; font-size:12px'>Đây là thư gửi tự động, vui lòng không trả lời thư này!</div>";
		// if($d->insert($data)) {
		if(sendmail("Liên hệ từ website ".URLPATH, $noidung, $_POST['email'] , $row_setting['email'] ,  $data['ho_ten'])) {
			$d->alert("Gửi liên hệ thành công!");
			$d->location(URLPATH);
			// $('.captcha_status').html("Thành công: Thông tin của bạn đã được gởi đi!!!").fadeIn('slow').delay(4000).fadeOut('slow');
		}
		else {
			$d->alert("Error!");
		}
	}else {
		$d->alert("Security code is incorrect");
	} 
}


$dulieu = $d->getTemplates(10);
?>

<section>
	<div class="page-title">
		<ul class="breadcrumb">
		<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
		<li><a href="<?=URLPATH ?>lien-he.html" title="Liên hệ"><?=_lienhe?></a></li>
		</ul>
	</div>
<div class="contact-info">
	<div class="contact-form">
		<div class="row">
			<div class="content-contact col-sm-12 mb10">
				<?=$dulieu['noi_dung_'.$_SESSION['lang']];?>
			</div>
			<div class="clear"></div>
		</div>
		<form id="form-contact" method="post">
			<div class="ar_form_contact col-sm-6">
				<div class="form-group">
					<input type="text" id="ho_ten" name="ho_ten" class="form-control" required="" placeholder="<?=_hoten ?>">
				</div>
				<div class="form-group">
					<input type="text" id="dia_chi" name="dia_chi" class="form-control" required=""  placeholder="<?=_address ?>">
				</div>
				<div class="form-group">
					<input type="email" id="email" name="email" class="form-control" required=""  placeholder="Email">
				</div>
				<div class="form-group">
					<input type="text" id="so_dien_thoai" required="" name="so_dien_thoai" class="form-control" placeholder="<?=_sodienthoai ?>">
				</div>
			</div>
			<div class="ar_form_contact col-sm-6">
				<div class="form-group">
					<textarea class="form-control" name="message" placeholder="Message" rows="3"></textarea>
				</div>
				<div class="form-group recaptcha">
					<input type="text" class="form-control" required="" id="captcha" name="captcha" style="background: #fff url(./sources/captcha.php) center right no-repeat">
				</div>
				<button class="button button--aylen button--text-upper button--pd button_contact" name="sub_email" type="submit"><?=_send ?>
					<i class="fa fa-paper-plane"></i>
				</button>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</form>
	</div>
</div>
<div class="config-map">
	<div class="content-contact col-sm-12 p0">
		<div class="title_map"><i class="fa fa-map-marker" aria-hidden="true"></i><?=_bandodiadiem?></div>
		<div id="map">	
			<?=$row_setting['toado']?>
		</div>
	</div>
	<div class="clear"></div>
</div>
</section>