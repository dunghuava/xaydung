<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            <a href="../" target="_blank"><i class="glyphicon glyphicon-th-large"></i> <span>Phương Nam Vina</span></a>
        </h3>
    </div>
    <?php if($_SESSION['quyen']==1) {?>
    <ul id="menu" class="list-group">
        <li class="list-group-item <?php if($_GET['p'] == '') echo "active"?>">
            <a href="index.php"><i class="glyphicon glyphicon-home"></i> <span>Trang chủ</span></a>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'category' || $_GET['p'] == 'gallery' || $_GET['p'] == 'video' || $_GET['p'] == 'san-pham' || $_GET['p'] == 'bat-dong-san' || $_GET['p'] == 'bai-viet' || $_GET['p'] == 'ho-tro-truc-tuyen' || $_GET['p'] == 'map' || $_GET['p'] == 'lien-ket-website' || $_GET['p'] == 'nhom-ho-tro' || $_GET['p'] == 'question' || $_GET['p'] == 'thanh-pho' || $_GET['p'] == 'quan'|| $_GET['p'] == 'upload-file' || $_GET['p'] == 'hinh-thuc-thanh-toan' || $_GET['p'] == 'ql-binhluan' || $_GET['p'] == 'dat-lich') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-dashboard"></i> <span>Danh mục</span> <i class="caret"></i></a>
            <ul class="list-group">

				<li class="list-group-item <?php if($_GET['p'] == 'category') echo "active"?>">
                    <a href="?p=category&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Loại danh mục</span></a>
                </li>
				
				<li class="list-group-item <?php if($_GET['p'] == 'san-pham') echo "active"?>">
                    <a href="?p=san-pham&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Sản phẩm</span></a>
                </li>
                
				
				<!--li class="list-group-item <?php if($_GET['p'] == 'bat-dong-san') echo "active"?>">
                    <a href="?p=bat-dong-san&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bất động sản</span></a>
                </li-->

                <li class="list-group-item <?php if($_GET['p'] == 'bai-viet') echo "active"?>">
                    <a href="?p=bai-viet&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bài viết</span></a>
                </li>
				<li class="list-group-item <?php if($_GET['p'] == 'gallery') echo "active"?>">
                    <a href="?p=gallery&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hình ảnh</span></a>
                </li>
				<li class="list-group-item <?php if($_GET['p'] == 'nhom-ho-tro') echo "active"?>">
                    <a href="?p=nhom-ho-tro&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Nhóm hỗ trợ</span></a>
                </li>
				<li class="list-group-item <?php if($_GET['p'] == 'ho-tro-truc-tuyen') echo "active"?>">
                    <a href="?p=ho-tro-truc-tuyen&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hỗ trợ trực tuyến</span></a>
                </li>
				<!--li class="list-group-item <?php if($_GET['p'] == 'question') echo "active"?>">
                    <a href="?p=question&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hỏi đáp</span></a>
                </li-->
				<!--li class="list-group-item <?php if($_GET['p'] == 'map') echo "active"?>">
                    <a href="?p=map&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bản đồ chi nhánh</span></a>
                </li-->
				
				<!-- <li class="list-group-item <?php if($_GET['p'] == 'video') echo "active"?>">
                    <a href="?p=video&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Quản lý video</span></a>
                </li> -->
				<!--li class="list-group-item <?php if($_GET['p'] == 'lien-ket-website') echo "active"?>">
                    <a href="?p=lien-ket-website&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Liên kết Website</span></a>
                </li-->
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'ql-khachhang') echo "active"?>">
                    <a href="?p=ql-khachhang&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>QL thành viên</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'ql-binhluan') echo "active"?>">
                    <a href="?p=ql-binhluan&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>QL bình luận</span></a>
                </li> -->
                <li class="list-group-item <?php if($_GET['p'] == 'hinh-thuc-thanh-toan') echo "active"?>">
                    <a href="?p=hinh-thuc-thanh-toan&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hình thức thanh toán</span></a>
                </li>
				<!--li class="list-group-item <?php if($_GET['p'] == 'dat-lich') echo "active"?>">
                    <a href="?p=dat-lich&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Đặt lịch hẹn</span></a>
                </li-->
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'upload-file') echo "active"?>">
                    <a href="?p=upload-file&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Upload File</span></a>
                </li> -->
                
            </ul>
        </li>
		
		<!--li class="list-group-item <?php if($_GET['p'] == 'extra0' || $_GET['p'] == 'extra1' || $_GET['p'] == 'extra2' || $_GET['p'] == 'extra3' || $_GET['p'] == 'extra4' || $_GET['p'] == 'extra5' || $_GET['p'] == 'extra6' || $_GET['p'] == 'extra7' || $_GET['p'] == 'extra8' || $_GET['p'] == 'extra9' || $_GET['p'] == 'extra10' || $_GET['p'] == 'extra11') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-list-alt"></i> <span>Phần mở rộng</span> <i class="caret"></i></a>
            <ul class="list-group">
				<li class="list-group-item <?php if($_GET['p'] == 'extra0') echo "active"?>">
<a href="?p=extra0&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bộ vi xử lý CPU / PROCESSOR</span></a>
                </li>

            </ul>
        </li-->		

        <li class="list-group-item <?php if($_GET['p'] == 'lien-he' || $_GET['p'] == 'giaodien'  || $_GET['p'] == 'ql-email' || $_GET['p'] == 'ql-thongtin') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-th-list"></i> <span>Hiển thị</span> <i class="caret"></i></a>
            <ul class="list-group">
                <!--li class="list-group-item <?php if($_GET['p'] == 'ql-email') echo "active"?>">
                    <a href="?p=ql-email&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Danh sách email</span></a>
                </li-->
                <li class="list-group-item <?php if($_GET['p'] == 'ql-thongtin') echo "active"?>">
                    <a href="?p=ql-thongtin&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Ql thông tin</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'lien-he') echo "active"?>">
                    <a href="?p=lien-he&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Liên hệ</span></a>
                </li>
				<li class="list-group-item <?php if($_GET['p'] == 'giaodien') echo "active"?>">
                    <a href="?p=giaodien&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Giao diện</span></a>
                </li>

            </ul>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'ho-tro-truc-tuyen' || $_GET['p'] == 'thu-vien-anh' || $_GET['p'] == 'lien-ket-website' || $_GET['p'] == 'seo-co-ban' || $_GET['p'] == 'seo-nang-cao' || $_GET['p'] == 'lien-ket-doi-tac'|| $_GET['p'] == 'slider-sp') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-list-alt"></i> <span>SEO Website</span> <i class="caret"></i></a>
            <ul class="list-group">
                
  
                <!--li class="list-group-item <?php if($_GET['p'] == 'slider-sp') echo "active"?>">
                    <a href="?p=slider-sp&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Slider</span></a>
                </li-->
                <!--li class="list-group-item <?php if($_GET['p'] == 'thu-vien-anh') echo "active"?>">
                    <a href="?p=thu-vien-anh&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thư viện ảnh</span></a>
                </li-->
                
                <!--li class="list-group-item <?php if($_GET['p'] == 'lien-ket-website') echo "active"?>">
                    <a href="?p=lien-ket-website&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Banner quảng cáo</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'lien-ket-doi-tac') echo "active"?>">
                    <a href="?p=lien-ket-doi-tac&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Liên kết đối tác</span></a>
                </li-->
                
                <li class="list-group-item <?php if($_GET['p'] == 'seo-co-ban') echo "active"?>">
                    <a href="?p=seo-co-ban&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Seo cơ bản</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'seo-nang-cao') echo "active"?>">
                    <a href="?p=seo-nang-cao&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Seo nâng cao</span></a>
                </li>
            </ul>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'danh-sach-don-hang') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-usd"></i> <span>Đơn hàng <i class="caret"></i></span></span></a>
            <ul class="list-group">
                <li class="list-group-item <?php if($_GET['p'] == 'danh-sach-don-hang') echo "active"?>">
                    <a href="?p=danh-sach-don-hang&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Danh sách đơn hàng</span></a>
                </li>
            </ul>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'ql-user' || $_GET['p'] == 'ql-user') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-user"></i> <span>USER Login <i class="caret"></i></span></a>
            <ul class="list-group">
                <li class="list-group-item <?php if($_GET['p'] == 'ql-user' && $_GET['a'] == 'man') echo "active"?>">
                    <a href="?p=ql-user&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Quản lý user</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'ql-user' && $_GET['a'] == 'edit') echo "active"?>">
                    <a href="?p=ql-user&a=edit"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thông tin user</span></a>
                </li>
                <li class="list-group-item">
                    <a href="?p=out"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thoát</span></a>
                </li>
            </ul>
        </li>
    </ul>
    <?php }?>
    
    <?php if($_SESSION['quyen']==2) {?>
    <ul id="menu" class="list-group">
        <li class="list-group-item <?php if($_GET['p'] == '') echo "active"?>">
            <a href="index.php"><i class="glyphicon glyphicon-home"></i> <span>Trang chủ</span></a>
        </li>

        <li class="list-group-item <?php if($_GET['p'] == 'danh-sach-don-hang') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-usd"></i> <span>Đơn hàng <i class="caret"></i></span></span></a>
            <ul class="list-group">
                <li class="list-group-item <?php if($_GET['p'] == 'san-pham') echo "active"?>">
                    <a href="?p=san-pham&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Sản phẩm</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'danh-sach-don-hang') echo "active"?>">
                    <a href="?p=danh-sach-don-hang&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Danh sách đơn hàng</span></a>
                </li>
            </ul>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'ql-user' || $_GET['p'] == 'ql-user') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-user"></i> <span>USER Login <i class="caret"></i></span></a>
            <ul class="list-group">
                <li class="list-group-item">
                    <a href="?p=out"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thoát</span></a>
                </li>
            </ul>
        </li>
    </ul>
    <?php }?>
    
    <?php if($_SESSION['quyen']==3) {?>
    <ul id="menu" class="list-group">
        <li class="list-group-item <?php if($_GET['p'] == '') echo "active"?>">
            <a href="index.php"><i class="glyphicon glyphicon-home"></i> <span>Trang chủ</span></a>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'bai-viet') echo "active"?>">
        	<a href="?p=bai-viet&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bài viết</span></a>
        </li>

        <li class="list-group-item <?php if($_GET['p'] == 'ql-user' || $_GET['p'] == 'ql-user') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-user"></i> <span>USER Login <i class="caret"></i></span></a>
            <ul class="list-group">
                <li class="list-group-item">
                    <a href="?p=out"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thoát</span></a>
                </li>
            </ul>
        </li>
    </ul>
    <?php }?>
    
    
</div>