<?php @include "sources/editor.php" ?>
<ol class="breadcrumb">
  <li><a href="."><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
   <li class="active"><a href="index.php">Hiển thị</a></li>
  <li class="active"><a href="index.php?p=<?=@$_REQUEST['p']?>&a=man">Giới thiệu</a></li>
</ol>
<div class="col-xs-12">
<form name="frm" method="post" action="index.php?p=<?=@$_REQUEST['p']?>&a=save&id=<?=@$_REQUEST['id']?>&page=<?=@$_REQUEST['page']?>" enctype="multipart/form-data">

<div class="ar_admin">
	<table class="table table-bordered table-hover them_dt" style="border:none">
		<tbody>
			<tr>
				<td class="td_left">
					Nội dung file robots::
				</td>
				<td class="td_right">
					<textarea class="input form-control" style="width:100%;min-height:100px;border:1px solid #ccc;padding:5px; border-radius:4px" name="robots"><?= @$robots ?></textarea>
				</td>
			</tr>
			<tr>
				<td class="td_left">
					Up file sitemap.xml:
				</td>
				<td class="td_right">
					<input type="file" name="file" />
				</td>
			</tr>
			<tr>
				<td class="td_left">
					Nội dung file sitemap:
				</td>
				<td class="td_right">
					<textarea class="input form-control" style="width:100%;min-height:200px;border:1px solid #ccc;padding:5px; border-radius:4px" name=""><?=@$sitemap?></textarea>
				</td>
			</tr>
			<tr>
				<td class="td_left">
					Cập nhật site map tự động:
				</td>
				<td class="td_right">
					<input type="checkbox" value="1" name="sm_sp" id="sm_sp" style="width:15px; height:15px;"> <label for="sm_sp" style="  position: absolute;">Auto</label><br/>
				</td>
			</tr>
			<?php  
				$items = $d->o_fet("select * from #_thongtin order by id asc");
			?>
			<tr>
				<td class="td_left">
					Google Analytics:
				</td>
				<td class="td_right">
					<textarea class="input form-control" style="width:100%;min-height:200px;border:1px solid #ccc;padding:5px; border-radius:4px" name="gg"><?=@$items[0]['gg']?></textarea>
				</td>
			</tr>
		</tbody>
	</table>
</div>

<div class="ar_admin last">
	<table class="table table-bordered table-hover them_dt" style="border:none">
		<tr>
			<td class="td_left" style="text-align:right">
				<input type="submit" value="Lưu" class="btn btn-primary" />
			</td>
			<td class="td_right">
				<input type="button" value="Thoát" onclick="javascript:window.location='index.php'" class="btn btn-primary" />
			</td>
		</tr>
	</table>
</div>
</form>
</div>