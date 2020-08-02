<?php 
	if($_SESSION['quyen'] == 2) $d->location("index.php?p=ql-user&a=man")
?>
<?php @include "sources/editor.php" ?>

<ol class="breadcrumb">
  <li><a href="."><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
   <li class="active"><a href="index.php">User</a></li>
  <li class="active"><a href="index.php?p=ql-user&a=man">Quản lý user</a></li>
  <li class="active"><a href="#">Thêm user</a></li>
</ol>
<div class="col-xs-12">
<form name="frm" method="post" action="index.php?p=ql-user&a=save&id=<?=@$_REQUEST['id']?>&page=<?=@$_REQUEST['page']?>" enctype="multipart/form-data">
<table class="table table-bordered table-hover them_dt" style="border:none">
	<tbody>
		<tr>
			<td class="td_left">
				Loại tài khoản:
			</td>
			<td class="td_right">
				 <select class="input width400 form-control" name="quyen_han">
<option <?php if(@$items[0]['quyen_han'] == 3) echo "selected='selected'";?> value="3">Quản trị viên cấp 2</option>
<option <?php if(@$items[0]['quyen_han'] == 2) echo "selected='selected'";?> value="2">Quản trị viên cấp 1</option>
<option <?php if(@$items[0]['quyen_han'] == 1) echo "selected='selected'";?> value="1">Administrator</option>
				 </select>
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Tên tài khoản:
			</td>
			<td class="td_right">
				 <input class="input width400 form-control" type="text" name="id" value="<?php echo @$items[0]['id']?>"  />
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Họ tên:
			</td>
			<td class="td_right">
				<input class="input width400 form-control" type="text" name="ho_ten" value="<?php echo @$items[0]['ho_ten']?>"  />
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Mật khẩu:
			</td>
			<td class="td_right">
				<input class="input width400 form-control" type="password" name="password" id="password" value="<?php echo @$items[0]['password']?>"  />
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Nhập lại mật khẩu:
			</td>
			<td class="td_right">
				<input class="input width400 form-control" type="password" name="cfpassword" id="cfpassword" value="<?php echo @$items[0]['cfpassword']?>"  />
			</td>
		</tr>
		<tr>
			<td class="td_left">
				Hiển thị:
			</td>
			<td class="td_right">
				<input type="checkbox" class="chkbox" name="hien_thi" <?php if(isset($items[0]['hien_thi'])){	if(@$items[0]['hien_thi']==1) echo 'checked="checked"';	else echo'';}else echo 'checked="checked"';	?>>
			</td>
		</tr>
		<tr>
			<td class="td_left" style="text-align:right">
				<input type="submit" onclick="return kiemtra()" value="Lưu" class="btn btn-primary" />
			</td>
			<td class="td_right">
				<input type="button" value="Thoát" onclick="javascript:window.location='index.php?p=ql-user&a=man'" class="btn btn-primary" />
			</td>
		</tr>
	</tbody>
</table>
</form>
</div>
<script type="text/javascript">
	function kiemtra(){
			var id = $("#id").val();
			var pw = $("#password").val();
			var cfpw = $("#cfpassword").val();
			if(id == ''){
				$("#id").focus();
				return false;
			}else if(pw == ''){
				$("#password").focus();
				return false;
			}else if(pw != cfpw){
					$("#cfpassword").focus();
					return false;
			}else return true;
	}
</script>