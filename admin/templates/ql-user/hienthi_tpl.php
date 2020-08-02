<ol class="breadcrumb">
  <li><a href="."><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
  <li class="active"><a href=".">User</a></li>
  <li class="active"><a href="#">Quản lý user</a></li>
</ol>

<div class="col-xs-12">
<div class="form-group">
	<div class="btn-group">
		<select id="action" name="action" onclick="form_submit(this)" class="form-control">
			<option selected>Tác vụ</option>
			<option value="delete">Xóa</option>
		</select>
	</div>

	<div class="btn-group">
		<input id="search" name="search" type="text" class="form-control" placeholder="Tìm kiếm"/>
	</div>
	<div class="btn-group">
		<select id="action" onchange="seach(this,'ql-user')" name="action" class="form-control">
			<option value="0" selected>Tìm theo</option>
			<option value="1">ID</option>
			<option value="2">Tên</option>
		</select>
	</div>
	<div class="btn-group">
		<select id="action" onchange="show(this,'ql-user')" name="action" class="form-control">
			<option value="0" selected>Số hiển thị</option>
			<option value="1">15</option>
			<option value="2">25</option>
			<option value="3">50</option>
			<option value="4">75</option>
			<option value="5">100</option>
			<option value="6">200</option>
			<option value="7">300</option>
		</select>
	</div>
	<a href="index.php?p=ql-user&a=add" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-plus"></i> Thêm mới</a>
</div>

<form id="form" method="post" action="index.php?p=ql-user&a=delete_all" role="form">

<table class="table table-bordered table-hover">
	<thead>
		<tr>
			<th style="width:5%"><input class="chk_box checkall" type="checkbox" name="chk" value="0"  id="check_all"></th>
			<th style="width:5%">ID</th>
		    <th style="width:50%;">Họ tên</th>
		    <th style="width:20%;">Quyền hạn</th>
		    <th style="width:10%;">Hiển thị</th>
			<th style="width:10%">Tác vụ</th>
		</tr>
	</thead>
	<tbody>
		<?php $count=count($items); for($i=0; $i<$count; $i++){ ?>
		<tr>
			<td>
				<input type="checkbox" class="chk_box" name="chk_child[]" value="<?=$items[$i]['id']?>">
			</td>
			<td><?=$items[$i]['id']?></td>
			<td>
				<?=$items[$i]['ho_ten']?>
			</td>
			<td>
				<!-- <select onchange="thaydoi_quyen(this,'<?=$items[$i]['id']?>')" class="input width400 form-control" style="box-shadow: none; background: none;"  <?php if($_SESSION['quyen'] == 2) echo 'disabled'; ?>>
                <option <?php if(@$items[$i]['quyen_han'] == 3) echo "selected='selected'";?> value="2">Quản trị viên cấp 2</option>
				 	<option <?php if(@$items[$i]['quyen_han'] == 2) echo "selected='selected'";?> value="2">Quản trị viên cấp 1</option>
				 	<option <?php if(@$items[$i]['quyen_han'] == 1) echo "selected='selected'";?> value="1">Administrator</option>
				 </select> -->

                	<P><?php if(@$items[$i]['quyen_han'] == 0) echo "user";?></P>
				 	<P><?php if(@$items[$i]['quyen_han'] == 2) echo "user";?></P>
				 	<P><?php if(@$items[$i]['quyen_han'] == 1) echo "Administrator";?></P>

			</td>
			<td>
				<?php if($items[$i]['hien_thi'] == 1){ ?>
				<a href="index.php?p=ql-user&a=man&b=hien_thi&TT=0&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>" class="text-danger"><font style="color:#428bca">Hiện</font></a>
				<?php }else{ ?>
				<a href="index.php?p=ql-user&a=man&b=hien_thi&TT=1&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>" class="text-danger"><font style="color:red">Ẩn</font></a>
				<?php } ?>
			</td>
			<td>
				<a href="index.php?p=ql-user&a=edit&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>" class="text-danger" title="Sửa"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;
				<a href="index.php?p=ql-user&a=delete&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>" onClick="if(!confirm('Xác nhận xóa?')) return false;" class="text-danger" title="Xóa"><i class="glyphicon glyphicon-remove"></i></a>
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>
</form>
</div>
<div class="pagination">
  <?php echo @$paging['paging']?>
</div>
<script type="text/javascript">
function thaydoi_quyen(obj,id){
	var va = $(obj).val();
	if(id != 'admin'){
		$.ajax({
			url: "./sources/aj_quyen.php",
			type:'POST',
			data:"va="+va+"&id="+id,
			success: function(data){
				if(data == 1) alert("Cập nhật quyền thành công");
				else alert("Lỗi cập nhật");
			}
		})
	}else alert("Quyền bị giới hạn");
}
</script>