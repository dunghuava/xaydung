function ctsp_thaydoisl(id){
	var bien = "#soluong_"+id;
	var soluong = $(bien).val();
	if(!isNaN(soluong) && soluong >= 0)
	{
		$.ajax({
			url: "ajax_chitietsanpham.php",
			type:'POST',
			data:"loai=soluong"+"&soluong="+soluong+"&id="+id,
			success: function(data){
				$("#one").jGrowl("<strong>"+data+".</strong>");
			}
		})
	}
	else{
			$("#one").jGrowl("Nhập số lượng chưa đúng.");
	}
}

function ctsp_macdinh(hienthi,idsp,idmau,id){
	$.ajax({
			url: "ajax_chitietsanpham.php",
			type:'POST',
			data:"loai=macdinh"+"&hienthi="+hienthi+"&idsp="+idsp+"&idmau="+idmau+"&id="+id,
			success: function(data){
				$("#one").jGrowl("<strong>"+data+".</strong>");
			}
	})
}

function thaydoi_chietkhau(obj,id){
	var soluong = $(obj).val();
    $.ajax({
		url: "sources/ajax.php",
		type:'POST',
		data:"loai=thaydoi_chietkhau"+"&soluong="+soluong+"&id="+id,
		success: function(data){
			$("#one").jGrowl("<strong>"+data+".</strong>");
		}
	})
}

function add_so_luong(obj,cls){
	var cl = "."+cls;
	if(($(obj).is(':checked'))){
		$(cl).val('1');
	}
	else $(cl).val('0');
}

function thay_doi_thong_tin(obj,name,id){
	var giatri = $(obj).val();
	$.ajax({
		url: "sources/ajax.php",
		type:'POST',
		data:"loai="+name+"&giatri="+giatri+"&id="+id,
		success: function(data){
			$("#one").jGrowl(data);
			$(obj).attr("readonly", true);
			if(name == 'doipass') $(obj).val('doipass');
		}
	})
}

function bat_input(obj){
	$(obj).attr("readonly", false);
	if($(obj).val() == 'doipass'){
		$(obj).val('');
	}
}

function kiemtra_id(){
	if($("#id").val() == ''){
		$("#id").focus();
		return false;
	}
	if($("#id").val() == '0'){
		$("#id").focus();
		return false;
	}
	else if($("#id").val() == ''){
		$("#id").focus();
		return false;
	}
	else if($("#password").val() == ''){
		$("#password").focus();
		return false;
	}
	else if($("#password").val() != '' && $("#password").val().length < 6){
		alert("Mật khẩu phải dài hơn 6 kí tự");
		$("#password").focus();
		return false;
	}
	else if($("#cfpassword").val() == ''){
		$("#cfpassword").focus();
		return false;
	}
	else if($("#cfpassword").val() != $("#password").val()){
		$("#cfpassword").focus();
		return false;
	}
	else if($("#ho_ten").val() == ''){
		$("#ho_ten").focus();
		return false;
	}
	else if($("#dia_chi").val() == ''){
		$("#dia_chi").focus();
		return false;
	}
	else if($("#so_dien_thoai").val() == ''){
		$("#so_dien_thoai").focus();
		return false;
	}
	else if($("#so_dien_thoai").val() != '' && $("#so_dien_thoai").val().length < 8){
		alert("Số điện thoại phải dài hơn 8 kí tự");
		$("#so_dien_thoai").focus();
		return false;
	}
	else if($("#email").val() == ''){
		$("#email").focus();
		return false;
	}
	else if(!kiemtraemail($("#email").val())){
		alert("Địa chỉ email không hợp lệ");
		$("#email").focus();
		return false;
	}else return true;
}
function kiemtraemail(email) {
	var isValid = false;
	var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(regex.test(email)) {
		isValid = true;
	}
	return isValid;
}
function kiemtra_user(obj){
	var id = $(obj).val();
	$.ajax({
		url: "sources/ajax.php",
		type:'POST',
		data:"loai=kiemtra_user&id="+id,
		success: function(data){
			$("#one").jGrowl("<strong>"+data+".</strong>");
		}
	})
}

function ql_user(obj){
	var val = $(obj).val();
	if(val == 1) window.location.href="index.php?p=ql-user&a=man";
	else if(val == 2) window.location.href="index.php?p=ql-user&a=dlcap1";
	else if(val == 3) window.location.href="index.php?p=ql-user&a=dlcap2";
	else if(val == 4) window.location.href="index.php?p=ql-user&a=admin";
}

function chondaily(obj){
	var val = $(obj).val();
	if(val == 2){
		$('#chon_dai_ly').show();
	}else $('#chon_dai_ly').hide();
}

function thongke(obj){
	var val = $(obj).val();
	if(val == 1) window.location.href="index.php?p=thongke&a=theongay";
	else if(val == 3) window.location.href="index.php?p=thongke&a=theothang";
	else if(val == 4) window.location.href="index.php?p=thongke&a=theoquy";
	else if(val == 5) window.location.href="index.php?p=thongke&a=theonam";
	else if(val == 6) window.location.href="index.php?p=thongke&a=sanpham-mua";
}

function loai_san_pham(){
	if($("#ten_loai_vn").val() == ''){
		$("#ten_loai_vn").focus();
		return false;

	}else if($("#ten_loai_us").val() == ''){
		$("#ten_loai_us").focus();
		return false;
	}
	return true;
}

function san_pham(){
	if($("#ten_vn").val() == ''){
		$("#ten_vn").focus();
		return false;

	}else if($("#ten_us").val() == ''){
		$("#ten_us").focus();
		return false;
	}
	else if($("#gia_tien").val() != '' && isNaN($("#gia_tien").val())){
		$("#gia_tien").focus();
		return false;
	}
	else if($("#gia_tien").val() != '' && !isNaN($("#gia_tien").val()) && $("#gia_tien").val() < 0){
		$("#gia_tien").focus();
		return false;
	}
	else if($("#khuyen_mai").val() != '' && isNaN($("#khuyen_mai").val())){
		$("#khuyen_mai").focus();
		return false;
	}
	else if($("#khuyen_mai").val() != '' && !isNaN($("#khuyen_mai").val()) && $("#khuyen_mai").val() < 0){
		$("#khuyen_mai").focus();
		return false;
	}
	else return true;
}

function ti_gia_add(){
	if($("#ti_gia").val() == ''){
		$("#ti_gia").focus();
		return false;
	}
	else if($("#ti_gia").val() != '' && isNaN($("#ti_gia").val())){
		$("#ti_gia").focus();
		return false;
	}
	else if($("#ti_gia").val() != '' && !isNaN($("#ti_gia").val()) && $("#ti_gia").val() < 0){
		$("#ti_gia").focus();
		return false;
	}
	else return true;
}

function tintuc(){
	if($("#tieu_de_vn").val() == ''){
		$("#tieu_de_vn").focus();
		return false;
	}else if($("#tieu_de_us").val() == ''){
		$("#tieu_de_us").focus();
		return false;
	}else if($("#noi_dung_ngoai_vn").val() == ''){
		$("#noi_dung_ngoai_vn").focus();
		return false;
	}else if($("#noi_dung_ngoai_us").val() == ''){
		$("#noi_dung_ngoai_us").focus();
		return false;
	}else return true;
}

function size_add(){
	if($("#ten").val() == ''){
		$("#ten").focus();
		return false;
	}else return true;
}

function mau_add(){
	if($("#ten_mau_vn").val() == ''){
		$("#ten_mau_vn").focus();
		return false;
	}else if($("#ten_mau_us").val() == ''){
		$("#ten_mau_us").focus();
		return false;
	}else if($("#ma_mau").val() == ''){
		$("#ma_mau").focus();
		return false;
	}else return true;
}

function ho_tro(){
	if($("#ten_vn").val() == ''){
		$("#ten_vn").focus();
		return false;
	}else if($("#ten_us").val() == ''){
		$("#ten_us").focus();
		return false;
	}else return true;
}