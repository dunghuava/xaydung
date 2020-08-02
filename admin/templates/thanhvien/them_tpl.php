<?php @include "sources/editor.php" ?>
<ol class="breadcrumb">
  <li><a href="."><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
   <li class="active"><a href="index.php">Hiển thị</a></li>
  <li class="active"><a href="index.php?p=thanhvien&a=man">Thành viên</a></li>
</ol>
<div class="col-xs-12">
<form name="frm" method="post" action="index.php?p=thanhvien&a=save&id=<?=@$_REQUEST['id']?>&page=<?=@$_REQUEST['page']?>" enctype="multipart/form-data">
<div class="ar_admin">
<table class="table table-bordered table-hover them_dt" style="border:none">
	<tbody>
		<tr>
			<td class="td_left">
				Họ tên:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=@$items[0]['ten']?>
				</div>
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Địa chỉ:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=@$items[0]['diachi']?>
				</div>
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Email:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=@$items[0]['email']?></div>
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Số điện thoại:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=@$items[0]['dienthoai']?></div>
			</td>
		</tr>

		<tr>
			<td class="td_left">
				Ngày liên hệ:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=date(@$items[0]['ngaytao'])?></div>
			</td>
		</tr>
		<!-- <tr>
			<td class="td_left">
				Tiêu đề liên hệ:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=@$items[0]['tieu_de']?></div>
			</td>
		</tr> -->
		<!-- <tr>
			<td class="td_left">
				Nội dung liên hệ:
			</td>
			<td class="td_right">
				<div  style="line-height:1.8;border:1px solid #ccc;padding:5px; border-radius:4px"><?=@$items[0]['noi_dung']?></div>
			</td>
		</tr> -->
	</tbody>
</table>
</div>
<div class="ar_admin">
	<table class="table table-bordered table-hover them_dt" style="border:none">
		<tr>
			<td class="td_left" style="text-align:right">
			</td>
			<td class="td_right">
				<input type="button" value="Quay lại" onclick="javascript:window.location='index.php?p=thanhvien&a=man'" class="btn btn-primary" />
			</td>
		</tr>
	</table>
</div>
</div>
</form>
</div>