<?php $login = false; ?>
<?php if (isset($_SESSION['login'])) { ?>
    <div class="xxx">
        <a href="javascript:void(0)" class="cl">
            <?php if ($_SESSION['login'][0]['photo']=='') { ?>
                <i class="fa fa-user-circle-o" aria-hidden="true"></i>
            <?php }else{ ?>
                <img src="<?=$_SESSION['login'][0]['photo']?>" alt="<?=$_SESSION['login'][0]['ten']?>" style='width: 17px;border-radius: 50%;margin-right: 5px;'>
            <?php } ?>
            Xin chào: <?=$_SESSION['login'][0]['ten']?>
        </a>
        <a href="logout.html" class="cl">
            <i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất
        </a>
    </div>
    <?php }else{ ?>
    <div class="login_header"><a href="" data-toggle="modal" data-target="#sign_up"><i class="fa fa-user-plus" aria-hidden="true"></i>Đăng ký</a></div>
    <div class="login_header"><a href="" data-toggle="modal" data-target="#myModal_login"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a></div>
<?php } ?>
<div class="modal fade" id="sign_up" role="dialog">
    <div id="main_signup">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Đăng ký</h4>
        </div>
        <form action="dang-ky.html" method="POST" id="form_signup">
                <div class="title_infomation">Thông tin tài khoản</div>
                <div class="ar_input">
                    <i class="fa fa-envelope" aria-hidden="true"></i><input type="text" name="email" id="email" required="required" placeholder="Email">
                    <div class="clear"></div>
                </div>
                <div class="ar_input">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <input type="text" name="ten" placeholder="Họ tên" required="required" >
                    <div class="clear"></div>
                </div>
                <div class="ar_input">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <input type="text" name="dienthoai" placeholder="Điện thoại" required="required" >
                    <div class="clear"></div>
                </div>
                <div class="ar_input">
                    <i class="fa fa-key" aria-hidden="true"></i><input type="password" name="password" placeholder="Mật khẩu" required="required">
                    <div class="clear"></div>
                </div>
                <div class="ar_input">
                    <i class="fa fa-refresh" aria-hidden="true"></i><input type="password" name="repassword" placeholder="Nhập lại mật khẩu" required="required" >
                    <div class="clear"></div>
                </div>
                <div class="ar_input">
                    <i class="fa fa-question" aria-hidden="true"></i><input type="text" class="form-control" id="captcha" name="captcha" style="background: #fff url(./sources/captcha.php) center right no-repeat" placeholder="Nhập mã captcha" required="required">
                    <div class="clear"></div>
                </div>
                <input type="submit"  value="Đăng ký" class="submit_register"  name="submit_register">
                <div class="login_re"><a href="javascript:void()" class="popup1">Đăng nhập</a></div>
        </form>
    </div>
</div>

<div class="modal fade" id="myModal_login" role="dialog">
    <div id="main_login" class="full_bglightbox">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title"><?=_dangnhap?></h4>
        </div>
        <div class="contain_box_form">
            <div class="body_form">
                <div class="left_body_form">
                    <div class="notify_login">Những thông tin có dấu <span>*</span> là bắt buộc nhập</div>
                    <form id="login" action="dang-nhap.html" method="post">
                        <div class="my_table table_form">
                            <div class="my_row">
                                <div class="my_cell my_cell_title"><label for="email">Email đăng nhập <span>*</span></label></div>
                                <div class="my_cell"><input type="text" id="email" class="input_form" name="email"/></div>
                            </div>
                            <div class="my_row">
                                <div class="my_cell my_cell_title"><label for="password"><?=_matkhau?> <span>*</span></label></div>
                                <div class="my_cell"><input type="password" id="password" class="input_form" name="password"/></div>
                            </div>
                            <div class="my_row">
                                <div class="my_cell my_cell_title"></div>
                                <div class="my_cell">
                                    <button type="submit" class="btn_form w100" name="submit_login"><?=_dangnhap?></button>
                                </div>
                            </div>
                            <div class="my_row">
                                <div class="my_cell my_cell_title"></div>
                                <div class="my_cell">
                                    <div class="forget_password">
                                        Bạn chưa có tài khoản? <a href="javascript:void()" class="popup">Đăng ký</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="right_body_form">
                    <div class="title_other_login"><span>Hoặc</span></div>
                    <a href="javascript:" class="item_other_login" onClick="loginFb()"><button class="btn_other_login login_facebook"><i class="fa fa-facebook"></i></button> Đăng nhập qua Facebook</a>
                    <a href="javascript:" class="item_other_login" id="googleSignIn" data-onsuccess="onSignIn"><button class="btn_other_login login_google"><i class="fa fa-google"></i></button> Đăng nhập qua Google +</a>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
