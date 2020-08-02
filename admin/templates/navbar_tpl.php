<nav class="navbar navbar-inverse" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.php"><i class="glyphicon glyphicon-th-large"></i> Administrator</a>
		</div>

		<div class="class_conghau">
			<!-- vào trang web -->
			<div class="thongbao_lienhe view_website">
				<a href="<?=URLPATH?>" target='_blank'><img src="img/return.png" alt="return">Vào trang web</a>
			</div>

			<!-- thông báo -->
			<?php  
				// đơn hàng
				$sql = "select id from #_dathang where tinh_trang = 0 and trang_thai = 1";
	    		$c_donhang = count($d->o_fet($sql));

	    		// liên hệ
				$sql = "select id from #_lienhe where trang_thai = 0";
			    $c_lienhe = count($d->o_fet($sql));
			    $total = $c_donhang + $c_lienhe;
			?>
			<div class="thongbao_lienhe">
	            <a href="?p=lien-he&a=man"><i class="fa fa-comments" aria-hidden="true"></i> <span>Liên hệ</span>
	            <?php if($c_lienhe > 0){ ?>
	                <div class="notify_contact"><?=$c_lienhe?></div>
	            <?php }  ?>
	            </a>
	        </div>

	        <div class="thongbao_lienhe">
	            <a href="?p=danh-sach-don-hang&a=man"><i class="fa fa-shopping-cart" aria-hidden="true"></i> <span>Đơn hàng</span>
                <?php if($c_donhang > 0){ ?>
                    <span class="notify_contact"><?=$c_donhang?></span>
                <?php }  ?>
                </a>
	        </div>
	    </div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Xin chào: <?=@$_SESSION['user_admin'] ?><b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="index.php?p=ql-user&a=change-pass"><i class="glyphicon glyphicon-user"></i> Thông tin cá nhân</a></li>
						<li class="divider"></li>
						<li><a href="index.php?p=out"><i class="glyphicon glyphicon-off"></i> Thoát</a></li>
					</ul>
				</li>
			</ul>
		</div>
</nav>

<style type="text/css">
	.class_conghau{
		font-size: 13px;
		line-height: 40px;
		color: #999;
	}
	.class_conghau a{
		color: #999;
		text-decoration: none;
	}
	.class_conghau i{
		margin-right: 5px;
	}
	.view_website{
		float: left; 
	}
	.view_website img{
		margin-right: 10px;
	}
	.thongbao_lienhe{
		float: left;
		position: relative;
		border-left: 1px solid #5d5d5d;
	}
	.thongbao_lienhe a{display: block;padding: 0px 25px;}
	.thongbao_lienhe:hover{background: #5d5d5d;transition: all 0.4s;}
	.thongbao_lienhe:hover a{color: #fff;}
	.thongbao_lienhe .notify_contact{
		position: absolute;
	    top: 0px;
	    right: 7px;
	    background: red;
	    width: auto;
	    height: auto;
	    padding: 5px;
	    border-radius: 2px;
	    line-height: 7px;
	    color: #fff;
	    font-weight: bold;
	    font-size: 11px;
	}
	@media (max-width: 480px){
		.thongbao_lienhe a{padding: 0px 10px;}
		.class_conghau{display: inline-block;width: 100%;line-height: 35px;border-top: 1px solid #5d5d5d;}
		.navbar-header{width: auto;text-align: left;padding-left: 10px;}
	}

</style>