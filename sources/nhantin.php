
<form>
    <div class="input-dangky">
        <input type="text" name="dangky" id="email_register" placeholder="Địa chỉ email: ">
    </div> 
    <button class="btn_nhantin" type="button" onclick="email_subscribe()"><?=_dangky?></button>
</form>

<script type="text/javascript">
     function email_subscribe(){
        var email = $('#email_register').val();
       if (email  === '') {
            alert('Vui lòng nhập email!.');
            return false;
        }
        if( !isValidEmailAddress( email ) ) {
            alert('Email không đúng định dạng!');
            return false;
        }
        $.ajax({
            url: './sources/ajax.php',
            type: 'post',
            data:{'do':'register_email','email':email},
            success: function(data) {
              data=data.trim();
                if(data=='ok') {
                    alert('Đăng ký thành công!');
                    location.reload();
                }
                else if(data=='replace') {
                    alert('Email này đã tồn tại');
                    location.reload();
                }
                else {
                    alert('Xảy ra lỗi!');
                    $('#subscribe_email').val('');
                }
            }               
        }); 
    };
</script>