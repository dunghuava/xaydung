<?php


	$why = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and id_loai='490' and noi_bat=1  order by so_thu_tu asc, id desc");
	$service = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and noi_bat=1 and id_loai='491'  order by so_thu_tu asc, id desc");
	$product = $d->o_fet("select * from #_sanpham where hien_thi = 1 AND tieu_bieu=1 order by so_thu_tu asc, id desc");
	$duan = $d->o_fet("select  * from #_sanpham where hien_thi = 1 and tieu_bieu=1 and id_loai='507' order by so_thu_tu asc, id desc");
	$news = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and id_loai='175' and noi_bat=1  order by so_thu_tu asc, id desc limit 0,3");
    $baogia = $d->getTemplates(40);



	if (isset($_POST['sub_email1'])){

		$data=null;
		$data['ho_ten']= $_POST['ho_ten'];
		$data['email']= $_POST['email'];
		$data['so_dien_thoai']= $_POST['so_dien_thoai'];
		$data['message']= $_POST['message'];


        include "./smtp/index.php";
        $noidung = '
            <h3><b>Thông tin người gửi:</b></h3><br>                 
            <table style="width:100%;min-width:800px;margin:auto;background-color:#ccc;font-size:14px;font-family:Tahoma,Geneva,sans-serif;line-height:20px" border="0" cellpadding="8" cellspacing="1">
                <tbody>
                    <tr style="text-align:center;background: linear-gradient(#ffffff, #f1f1f1);font-weight:bold">
                        <td style="text-align:center;color:#000">Họ và tên</td>
                        <td style="text-align:center;color:#000">Email</td>
                        <td style="text-align:center;color:#000">Số điện thoại</td>
                        <td style="text-align:center;color:#000">Tin nhắn</td>
                    </tr>
                    <tr>
                        <td style="background-color:white;color:#000">'.$data['ho_ten'].'</td>
                        <td style="background-color:white;color:#000">'.$data['email'].'</td>
                        <td style="background-color:white;color:#000">'.$data['so_dien_thoai'].'</td>
                        <td style="background-color:white;color:#000">'.$data['message'].'</td>
                    </tr>
                </tbody>
            </table>';

        if (sendmail("Người đăng ký mới !",$noidung,$data['email'] , 'dunq1408@gmail.com' ,$data['ho_ten'])){
        	$d->alert ("Tin nhắn của bạn đã được gửi !");	
        }else{
        	$d->alert ("Có lỗi xảy ra !");	
        }

	}
?>

<section id="product">
	<div class="inner">
		<h2 class="title-main" data-aos='fade-down' data-aos-duration='900'>Dịch vụ của chúng tôi
			<div class="divide">
				<img class="ico" src="<?=URLPATH.'templates/images/logo.png'?>" alt="">
			</div>
		</h2>

		<div class="row">
			<?php foreach ($product as $key => $value) { ?>
				<div class="col-product col-md-4 col-xs-6">
					<div class="ar-product" data-aos='zoom-in' data-aos-duration='900'>
						<div class="img-product">
							<a href="<?=URLPATH.$value['alias_'.$lang] ?>.html" title="<?=$value['ten_'.$lang] ?>" class="effect">
								<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=360&h=228&zc=2';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=370&h=238&zc=2" alt='<?=$value['ten_'.$lang] ?>' >
							</a>
						</div>
						<h3 class="name-product text-left">
							<a href="<?=URLPATH.$value['alias_'.$lang] ?>.html" title="<?=$value['ten_'.$lang] ?>">
								<?=$value['ten_'.$lang] ?>
							</a>
						</h3>
						<div class="des text-left"><br>
							<?=$d->catchuoi_new($value['mo_ta_'.$lang],160)?>
						</div>
						<div class="view_more text-left"><br>
							<a href="<?=URLPATH.$value['alias_'.$lang] ?>.html" title="Xem thêm">[ Xem thêm... ]</a>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>

<section id="opinions">
	<div class="inner">
		<h2 class="title-main" data-aos='fade-down' data-aos-duration='900'>
			DỰ ÁN ĐÃ HOÀN THÀNH
			<div class="divide">
				<img class="ico" src="<?=URLPATH.'templates/images/logo.png'?>" alt="">
			</div>
		</h2>
		<div class="owl-op owl-carousel owl-theme">
			<?php foreach ($duan as $key => $value) { ?>
				<div class="ar-op" data-aos='zoom-in' data-aos-duration='900'>
					<div class="img-op">
						<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=362&h=231&zc=2';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=362&h=231&zc=2" alt='<?=$value['ten_'.$lang] ?>' >
					</div>
					<div class="name-op text-left">
						<?=$value['ten_'.$lang] ?>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>

<section id="news">
	<div class="inner">
		<div class="row">
			<div id="dangky-baogia" class="col-news col-md-12 col-xs-12" data-aos='fade-right' data-aos-duration='900'>
				<div class="contain-div">
				<div class="title-new text-center"><?php echo $baogia['ten_'.$lang] ?></div>
				<div class="text-center"><?php echo $baogia['noi_dung_'.$lang] ?></div>
				<form id="form-footer" action='<?php echo URLPATH ?>' method="post">
                    <div class="row">
                        <div class="ar_form_contact col-sm-6">
                            <div class="form-group">
                                <input type="email" id="email" name="ho_ten" class="form-control" required=""  placeholder="Họ và tên">
                            </div>
                        </div>
                        <div class="ar_form_contact col-sm-6">
                            <div class="form-group">
                                <input type="text" id="so_dien_thoai" required="" name="dien_thoai" class="form-control" placeholder="<?=_sodienthoai ?>">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" id="email" name="email" class="form-control" required="" placeholder="Nhập email của bạn">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" placeholder="Viết yêu cầu của bạn" rows="3"></textarea>
                    </div>
                    <button class="button button--aylen button--text-upper button--pd button_index" name="sub_email1" type="submit">Gửi đăng ký
                        <i class="fa fa-paper-plane"></i>
                    </button>
                </form>
            	</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	$(document).ready(function() {
			$('.owl-carousel').owlCarousel({
			  loop: true,
			  margin: 10,
			  autoplay: true,
			  autoplayHoverPause: true,
			  responsive: {
			    0: {
			      items: 1
			    },
			    600: {
			      items: 3
			    },
			    1000: {
			      items: 3
			    }
			  }
			})
	});
</script>