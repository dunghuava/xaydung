<?php @include "sources/editor.php" ?>
<ol class="breadcrumb">
  <li><a href="<?=urladmin ?>"><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
   <li class="active"><a href="<?=urladmin ?>index.php">Danh mục</a></li>
  <li class="active"><a href="<?=urladmin ?>index.php?p=giaodien&a=man">Giao diện</a></li>
  <li class="active"><a href="#"><?php if(isset($_GET['id'])) echo "Sửa "; else echo "Thêm mới" ?></a></li>
</ol>
<div class="col-xs-12">
<form name="frm" method="post" action="index.php?p=giaodien&a=save&id=<?=@$_REQUEST['id']?>&page=<?=@$_REQUEST['page']?>&loaitin=<?=@$_GET['loaitin']?>" enctype="multipart/form-data">

<div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
	<ul id="myTabs" class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active">
			<a href="#id_viet" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Ngôn ngữ VN</a>
		</li>
		<!-- <li role="presentation" class="">
			<a href="#id_us" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Ngôn ngữ EN</a>
		</li> -->
		<!-- <li role="presentation" class="">
			<a href="#id_ch" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Ngôn ngữ Japan</a>
		</li> -->
	</ul>
	<div id="myTabContent" class="tab-content">
		<div role="tabpanel" class="tab-pane fade active in" id="id_viet" aria-labelledby="home-tab">
		<!-- //lang viet -->
		<div class="ar_admin">
		<table class="table table-bordered table-hover them_dt" style="border:none">
			<tbody>
				<?php if(isset($_GET['id'])){ ?>
				<tr>
					<td class="td_left">
						Hình ảnh:
					</td>
					<td class="td_right">
						<?php if(@$items[0]['hinh_anh_vn'] <> ''){ ?>
						<img src="../img_data/images/<?php echo @$items[0]['hinh_anh_vn']?>"  width="120" alt="NO PHOTO" />
						<?php } ?>
					</td>
				</tr>
				<?php }?>
				<tr>
					<td class="td_left">
						Chọn hình ảnh:
					</td>
					<td class="td_right">
						<input type="file" name="file" class="input width400 form-control"/>
					</td>
				</tr>
				<tr>
					<td class="td_left">
						Tiêu đề:
					</td>
					<td class="td_right">
						<input class="input width400 form-control"  id="ten_vn" name="ten_vn" value="<?php echo @$items[0]['ten_vn']?>"  />
						<input type="hidden" 
					</td>
				</tr>
				<tr>
					<td class="td_left">
						Nội dung:
					</td>
					<td class="td_right">
						<textarea  name="noi_dung_vn" id="noi_dung_vn"><?=@$items[0]['noi_dung_vn']?></textarea>
						<?php $ckeditor->replace('noi_dung_vn'); ?>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<!-- end -->
		</div>
		<div role="tabpanel" class="tab-pane fade" id="id_us" aria-labelledby="profile-tab">
		<!-- lang us -->
		<div class="ar_admin">
		<table class="table table-bordered table-hover them_dt" style="border:none">
			<tbody>
				<tr>
				<?php if(isset($_GET['id'])){ ?>
					<tr>
						<td class="td_left">
							Hình ảnh (en):
						</td>
						<td class="td_right">
							<?php if(@$items[0]['hinh_anh_us'] <> ''){ ?>
							<img src="../img_data/images/<?php echo @$items[0]['hinh_anh_us']?>"  width="120" alt="NO PHOTO" />
							<?php } ?>
						</td>
					</tr>
				<?php }?>
				<tr>
					<td class="td_left">
						Chọn hình ảnh (en):
					</td>
					<td class="td_right">
						<input type="file" name="file1"/>
					</td>
				</tr>
					<td class="td_left">
						Tiêu đề (en):
					</td>
					<td class="td_right">
						<input class="input width400 form-control" id="ten_us" name="ten_us" value="<?php echo @$items[0]['ten_us']?>"  />
					</td>
				</tr>

				<tr>
					<td class="td_left">
						Nội dung (en):
					</td>
					<td class="td_right">
						<textarea  name="noi_dung_us" id="noi_dung_us"><?=@$items[0]['noi_dung_us']?></textarea>
						<?php $ckeditor->replace('noi_dung_us'); ?>
					</td>
				</tr>
				
				<tr>
					<td class="td_left" style="text-align:right">
						<input type="submit" value="Lưu" class="btn btn-primary" />
					</td>
					<td class="td_right">
						<input type="button" value="Thoát" onclick="javascript:window.location='index.php?p=giaodien&a=man'" class="btn btn-primary" />
					</td>
				</tr>
			</tbody>
		</table>
		</div>
		<!-- end -->
		</div>
		<div class="ar_admin last">
		<table class="table table-bordered table-hover them_dt" style="border:none">
			<tr>
				<td class="td_left">
					Tác vụ: 
				</td>
				<td class="td_right">
					<input type="checkbox" class="chkbox" name="hien_thi" <?php if(isset($items[0]['hien_thi'])) { if(@$items[0]['hien_thi']==1) echo 'checked="checked"';} else echo'checked="checked"'; ?> id="hien_thi"><label class="lb_nut" for="hien_thi">Hiển thị</label>
				</td>
			</tr>
			<tr>
				<td class="td_left" style="text-align:right">
					<input type="submit" value="Lưu" class="btn btn-primary" />
				</td>
				<td class="td_right">
					<input type="button" value="Thoát" onclick="javascript:window.location='index.php?p=giaodien&a=man'" class="btn btn-primary" />
				</td>
			</tr>
		</table>
		</div>
	</div>
</div>

</form>
</div>
