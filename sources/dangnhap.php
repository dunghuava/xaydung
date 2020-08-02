
<?php
    if (isset($_SESSION['login'])) {
        $d->alert('Bạn đã đăng nhập, vui lòng đăng xuất để tiếp tục');
        $d->location(URLPATH);
    }else{
        if (isset($_POST['submit_login'])) {
            $email_login = $_POST['email'];
            $password_login = $_POST['password'];
            $d->reset();
            $thanhvien_login  = $d->o_fet("select * from #_thanhvien where email='".$email_login."' and password='".md5($password_login)."' limit 0,1"); 
            if ($thanhvien_login[0]['id'] != '') {
                session_start();
                $_SESSION['login'] = array();
                $_SESSION['login'] = $thanhvien_login;
                $d->alert('Đăng nhập thành công.');
                $d->location(URLPATH);
            }else{
                $d->alert('Tài khoản không tồn tại!');
                $d->location(URLPATH);
            }
        }
    } 
?>