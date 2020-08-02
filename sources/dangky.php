
<?php 
    $dempas = count(str_split($_POST['password'])); // đếm số phần tử trong pass để xét điều kiện: Phải lớn hơn 6 ký tự
    $phone = $_POST['dienthoai'];
    $d->reset();
    $thanhvien  = $d->o_fet("select * from #_thanhvien where email='".$_POST['email']."'"); 
    $count_thanhvien = count($thanhvien);

    if (isset($_POST['submit_register'])) {
        if ($count_thanhvien>0) {
              $d->alert ('Email đã tồn tại');
              exit();
        } 
        else{
            if ($_POST['password'] != $_POST['repassword']) {
                $d->alert ('Mật khẩu nhập lại chưa chính xác!');
                exit();
            }if ($dempas < 6) {
                $d->alert ('Password phải lớn hơn 6 ký tự.');
                $d->location(URLPATH);
            }if (!preg_match('/([0-9]+)/i',$_POST['dienthoai'])) { // kiểm tra ký tự nhập vào phải là số
                $d->alert ('Số điện thoại không hợp lệ.');
                exit();
            }if ($_POST['captcha'] != $_SESSION['security_code']) {
                $d->alert ('Mã captcha chưa hợp lệ!');
                exit();
            }else{
                $data['mathanhvien'] = ChuoiNgauNhien(6);
                $data['email'] = $_POST['email'];
                $data['dienthoai'] = $_POST['dienthoai'];
                $data['password'] = md5($_POST['password']);
                $data['ten'] = $_POST['ten'];
                $data['diachi'] = $_POST['diachi'];
                $data['gioitinh'] = $_POST['gioitinh'];
                $data['ngaytao'] = time();
                $data['hienthi'] = 1;
                $d->setTable('#_thanhvien');
                if ($d->insert($data)){
                    $d->alert('Đăng ký thành công');
                    $d->location(URLPATH);
                }else{
                    $d->alert('Đăng ký không thành công, vui lòng thử lại!');
                    $d->location(URLPATH);
                }
            }
        }
    }
?>