<?php
$sql = "select id from #_dathang where tinh_trang = 0 and trang_thai = 1";
$c_donhang = count($d->o_fet($sql));

$sql = "select id from #_lienhe where trang_thai = 0";
$c_lienhe = count($d->o_fet($sql));

$sql = "select id from #_dknhamau where hien_thi = 0";
$c_nhamau = count($d->o_fet($sql));


?>
<ol class="breadcrumb">
  	<li>
  		<a href="<?=URLPATH?>">
	  		<i class="glyphicon glyphicon-home"></i> Trang chủ website
	  	</a>  
  		<!-- <?php if($c_donhang>0){ ?>
	  		<img src="./img/new.gif"> 
	  		<a href="./index.php?p=danh-sach-don-hang&a=man"><?php echo $c_donhang ?> Đơn hàng mới</a>
  		<?php } ?>
  		<?php if($c_lienhe>0){ ?>
  		 <img src="./img/new2.gif"> 
  		 <a href="./index.php?p=lien-he&a=man"><?php echo $c_lienhe ?> Tin nhắn mới</a>
  		<?php } ?>
  		<?php if($c_nhamau>0){ ?>
  		 <img src="./img/new2.gif"> 
  		 <a href="./index.php?p=dk-xem-nha-mau&a=man"><?php echo $c_nhamau ?> ĐK xem nhà mẫu</a>
  		<?php } ?> -->
  	</li>
</ol>
<style type="text/css">
        .info-custom ul{ list-style: none; padding-left: 0px; font-size: 15px; }
        .info-custom{ text-align: left; }
        .red{ color: red; }
        .plr0{ padding: 0px; }
        .login-header{
                /*width: 1160px;*/
            /*margin: 100px auto 0;*/
            border-radius: 5px;
        }
        .login-header .alert-custom h3{
            font-size: 25px;
            margin-top: 0px;
            padding-top: 10px;
        }
        .login-header .alert-custom{
            padding: 10px;
            border-radius: 5px;
        }
        .huong-dan{
            text-align: left;
            padding-left: 15px;
            font-size: 14px;
        }
        .huong-dan ul{
        	    padding-left: 300px;
        }
        .huong-dan ul li{ line-height: 30px; font-size: 18px; }
        .red{ color: red; font-size: 24px; }
        #login{
            margin-top: 85px;
                width: 400px;
        }
        .login-header .alert-custom{ height: 163px; }.t_index a {
        color: #FF262B;
        text-decoration: none;
        font-size: 16px;
        font-family: tahoma;
        font-weight: 500;
        padding-bottom:10px;
        display:block;
        }
        .t_index a:hover{
          color: #0AA4C6;
        }
        @media(max-width: 1024px){
        	.huong-dan ul{ padding-left: 20px; }
        }
        @media(max-width: 480px){
            .login-header .alert-custom h3{font-size: 17px;}
            .huong-dan{padding-left: 0px;}
            .huong-dan ul{padding-left: 10px;}
            .huong-dan ul li{font-size: 14px;}
            .red{font-size: 16px;display: block;}
            .login-header .alert-custom{height: auto;}
        }
    </style>
<div class="col-xs-12 text-center">
		<div style="margin:auto">
			<div class="clearfix"></div>
				<div class="login-header">
		        <div class="alert alert-success alert-custom">
		            <h3>Nếu cần hỗ trợ kỹ thuật, quý khách vui lòng thực hiện:</h3>
		            <div class="huong-dan">
		                <ul>
		                    <li>Gửi yêu cầu vào email: <span class="red">kythuat@phuongnamvina.vn</span></li>
		                    <li>Gọi số Hotline HTKH: <span class="red">0915 101 017, 0912 817 117</span></li>
		                </ul>
		            </div>
		        </div>
		    </div>
		</div>
</div>