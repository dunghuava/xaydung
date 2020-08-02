
<div class="panel panel-default">
    <?php if((int)$_SESSION['quyen']>0) { ?>
    <ul id="menu" class="list-group">
        <li class="list-group-item <?php if($_GET['p'] == '') echo "active"?>">
            <a href="index.php"><i class="glyphicon glyphicon-home"></i> <span>Trang chủ Admin</span></a>
        </li>
        <li class="list-group-item <?php if($_GET['p'] == 'category' || $_GET['p'] == 'san-pham' || $_GET['p'] == 'bat-dong-san' || $_GET['p'] == 'catalogue' || $_GET['p'] == 'bai-viet' ) echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-dashboard"></i> <span>Quản trị Danh mục</span> <i class="caret"></i></a>
            <ul class="list-group">
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'category') > 0 || (int)$_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'category') echo "active"?>">
                    <a href="?p=category&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Loại danh mục</span></a>
                </li>
                <?php } ?>
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'san-pham') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'san-pham') echo "active"?>">
                    <a href="?p=san-pham&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Sản phẩm</span></a>
                </li>
                <?php } ?>
                
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'bai-viet') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'bai-viet') echo "active"?>">
                    <a href="?p=bai-viet&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bài viết</span></a>
                </li>
                <?php } ?>
                
            </ul>
        </li>
        
        <!-- <li class="list-group-item <?php if($_GET['p'] == 'kichthuoc' || $_GET['p'] == 'mausac') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-list-alt"></i> <span>Phần mở rộng</span> <i class="caret"></i></a>
            <ul class="list-group">
                <li class="list-group-item <?php if($_GET['p'] == 'kichthuoc') echo "active" ?>">
                    <a href="?p=kichthuoc&a=man"><i class="fa fa-braille" aria-hidden="true"></i> <span>Nhập kích thước</span></a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'mausac') echo "active" ?>">
                    <a href="?p=mausac&a=man"><i class="fa fa-tachometer" aria-hidden="true"></i> <span>Nhập màu sắc</span></a>
                </li>
            </ul>
        </li> -->

        <li class="list-group-item <?php if($_GET['p'] == 'giaodien' || $_GET['p'] == 'video'  || $_GET['p'] == 'ql-thongtin' || $_GET['p'] == 'ho-tro-truc-tuyen' || $_GET['p'] == 'map' || $_GET['p'] == 'lien-ket-website' || $_GET['p'] == 'nhom-ho-tro' || $_GET['p'] == 'question' || $_GET['p'] == 'thanh-pho' || $_GET['p'] == 'quan'|| $_GET['p'] == 'upload-file' || $_GET['p'] == 'hinh-thuc-thanh-toan' || $_GET['p'] == 'ql-binhluan'|| $_GET['p'] == 'gallery'  || $_GET['p'] == 'dat-lich' || $_GET['p'] == 'slider-sp') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-th-list"></i> <span>Quản trị giao diện</span> <i class="caret"></i></a>
            <ul class="list-group">
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'gallery') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'slider-sp') echo "active"?>">
                    <a href="?p=slider-sp&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Slider</span></a>
                </li>
                <?php } ?>
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'gallery') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'gallery') echo "active"?>">
                    <a href="?p=gallery&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hình ảnh chung</span></a>
                </li>
                <?php } ?>
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'nhom-ho-tro') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'nhom-ho-tro') echo "active"?>">
                    <a href="?p=nhom-ho-tro&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Nhóm hỗ trợ</span></a>
                </li> -->
                <?php } ?>
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'ho-tro-truc-tuyen') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'ho-tro-truc-tuyen') echo "active"?>">
                    <a href="?p=ho-tro-truc-tuyen&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hỗ trợ trực tuyến</span></a>
                </li>
                <?php } ?>
                <!--li class="list-group-item <?php if($_GET['p'] == 'question') echo "active"?>">
                    <a href="?p=question&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hỏi đáp</span></a>
                </li-->
                <!--li class="list-group-item <?php if($_GET['p'] == 'map') echo "active"?>">
                    <a href="?p=map&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Bản đồ chi nhánh</span></a>
                </li-->
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'video') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'video') echo "active"?>">
                    <a href="?p=video&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Quản lý video</span></a>
                </li>
                <?php } ?>
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'lien-ket-website') echo "active"?>">
                    <a href="?p=lien-ket-website&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Liên kết Website</span></a>
                </li> -->
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'ql-khachhang') echo "active"?>">
                    <a href="?p=ql-khachhang&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>QL thành viên</span></a>
                </li>
                -->
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'ql-binhluan') echo "active"?>">
                    <a href="?p=ql-binhluan&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>QL bình luận</span></a>
                </li> -->
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'hinh-thuc-thanh-toan') echo "active"?>">
                    <a href="?p=hinh-thuc-thanh-toan&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Hình thức thanh toán</span></a>
                </li> -->
                <!--li class="list-group-item <?php if($_GET['p'] == 'dat-lich') echo "active"?>">
                    <a href="?p=dat-lich&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Đặt lịch hẹn</span></a>
                </li
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'upload-file') > 0 || $_SESSION['is_admin'] == 1 ){
                ?> -->
                <li class="list-group-item <?php if($_GET['p'] == 'upload-file') echo "active"?>">
                    <a href="?p=upload-file&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Upload File</span></a>
                </li>
                <?php } ?>
                
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'ql-thongtin') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'ql-thongtin') echo "active"?>">
                    <a href="?p=ql-thongtin&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Quản lý thông tin</span></a>
                </li>
                <?php } ?>
                
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'giaodien') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'giaodien') echo "active"?>">
                    <a href="?p=giaodien&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Giao diện</span></a>
                </li>
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'thanh-pho') echo "active"?>">
                    <a href="?p=thanh-pho&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thành phố</span></a>
                </li> -->
                <!-- <li class="list-group-item <?php if($_GET['p'] == 'quan') echo "active"?>">
                    <a href="?p=quan&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Quận</span></a>
                </li> -->
                <?php } ?>

            </ul>
        </li>

<?php
    $sql = "select id from #_dathang where tinh_trang = 0 and trang_thai = 1";
    $c_donhang = count($d->o_fet($sql));

    $sql = "select id from #_lienhe where trang_thai = 0";
    $c_lienhe = count($d->o_fet($sql));

    $total = $c_donhang + $c_lienhe;

?>
        <!-- <li class="list-group-item <?php if($_GET['p'] == 'lien-he' || $_GET['p'] == 'ql-email' || $_GET['p'] == 'danh-sach-don-hang') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-usd"></i> <span>Quản trị thông tin <i class="caret"></i></span></span>
            <?php if($total > 0){ ?>
                <span class="notify"><?=$total?></span>
            <?php }  ?>
            </a>
            <ul class="list-group">
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'danh-sach-don-hang') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'danh-sach-don-hang') echo "active"?>">
                    <a href="?p=danh-sach-don-hang&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Danh sách đơn hàng</span>
                    <?php if($c_donhang > 0){ ?>
                        <span class="notify-2"><?=$c_donhang?></span>
                    <?php }  ?>
                    </a>
                </li>
                <?php } ?>
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'lien-he') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'lien-he') echo "active"?>">
                    <a href="?p=lien-he&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Khách hàng Liên hệ</span>
                    <?php if($c_lienhe > 0){ ?>
                        <span class="notify-2"><?=$c_lienhe?></span>
                    <?php }  ?>
                    </a>
                </li>
                <li class="list-group-item <?php if($_GET['p'] == 'ql-email') echo "active"?>">
                    <a href="?p=ql-email&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Danh sách email</span></a>
                </li>
                <?php } ?>
            </ul>
        </li> -->
        <li class="list-group-item <?php if($_GET['p'] == 'thu-vien-anh' || $_GET['p'] == 'lien-ket-website' || $_GET['p'] == 'seo-co-ban' || $_GET['p'] == 'seo-nang-cao' || $_GET['p'] == 'lien-ket-doi-tac') echo "active" ?>">
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
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'seo-co-ban') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'seo-co-ban') echo "active"?>">
                    <a href="?p=seo-co-ban&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Seo cơ bản</span></a>
                </li>
                <?php } ?>
                <?php
                    if($d->checkUserPermission($_SESSION['id_user'],'seo-nang-cao') > 0 || $_SESSION['is_admin'] == 1 ){
                ?>
                <li class="list-group-item <?php if($_GET['p'] == 'seo-nang-cao') echo "active"?>">
                    <a href="?p=seo-nang-cao&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Seo nâng cao</span></a>
                </li>
                <?php } ?>
            </ul>
        </li>
        
        <li class="list-group-item <?php if($_GET['p'] == 'ql-user' || $_GET['p'] == 'permission' || $_GET['p'] == 'ql-user') echo "active" ?>">
            <a href="#"><i class="glyphicon glyphicon-user"></i> <span>Cấu Hình User <i class="caret"></i></span></a>
            <ul class="list-group">
                <?php if($_SESSION['is_admin'] == 1){ ?>
                    <!-- <li class="list-group-item <?php if($_GET['p'] == 'ql-user' && $_GET['a'] == 'man') echo "active"?>">
                        <a href="?p=ql-user&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Quản lý user</span></a>
                    </li>
                    <li class="list-group-item <?php if($_GET['p'] == 'permission' && $_GET['a'] == 'man') echo "active"?>">
                        <a href="?p=permission&a=man"><i class="glyphicon glyphicon-chevron-right"></i> <span>Danh sách quyền</span></a>
                    </li> -->
                <?php } ?>
                <li class="list-group-item <?php if($_GET['p'] == 'ql-user' && $_GET['a'] == 'change-pass') echo "active"?>">
                    <a href="?p=ql-user&a=change-pass"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thông tin user</span></a>
                </li>
                <li class="list-group-item">
                    <a href="?p=out"><i class="glyphicon glyphicon-chevron-right"></i> <span>Thoát</span></a>
                </li>
            </ul>
        </li>
    </ul>
    <?php }?>
    
    
    
</div>

<style type="text/css">
    span.notify{
        background: url(../admin/public/images/notify-right.png);
        width: 32px;
        height: 22px;
        color: #fff;
        text-align: center;
        position: absolute;
        line-height: 11px;
        font-size: 13px;
        padding-top: 3px;
        z-index: 1;
        right: -15px;
        top: 0px;
        -webkit-filter: hue-rotate(340deg);
        -moz-filter: hue-rotate(340deg);
        -ms-filter: hue-rotate(340deg);
        -o-filter: hue-rotate(340deg);
    }
    span.notify-2{
        background: #ff0000;
        width: 30px;
        height: 20px;
        color: #fff;
        text-align: center;
        position: absolute;
        line-height: 13px;
        font-size: 13px;
        padding-top: 3px;
        z-index: 1;
        right: -0px;
        top: 0px;
        border-radius: 5px;
    }
</style>