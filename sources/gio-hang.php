<?php
    if(!isset($_SESSION))
    {
        session_start();
    }

    if(isset($_POST['guidonhang'])){
        
        if(isset($_SESSION['cart'])){
            //kiem tra so luong don hang
                $ma_donhang = 'DH'.$d->chuoird('5');
                
                $d->reset();
                $data['trang_thai'] = 1;
                $data['ho_ten'] = $d->clear($_POST['ten']);
                $data['email'] = $d->clear($_POST['email']);
                $data['dia_chi'] = $d->clear($_POST['diachi']);
                $data['dien_thoai'] = $d->clear($_POST['dienthoai']);
                $data['hinh_thuc_thanh_toan'] = $d->clear($_POST['thanhtoan']);
                $data['loi_nhan'] = addslashes($_POST['loinhan']);
                $data['ma_dh'] = $ma_donhang;
                $data['ngay_dat_hang'] = time();
                $d->setTable('#_dathang');
                if($id_don = $d->insert($data)){
                    $hinhthuc = $d->simple_fetch("select * from #_hinhthucthanhtoan where id={$data['hinh_thuc_thanh_toan']}");
                    $row_nd = "";
                    $total = 0;
                    $tong = 0;

                    foreach($_SESSION['cart'] as $key => $value) {

                        $product = $d->simple_fetch("select * from #_sanpham where id={$key}");
                        if(!empty($product)){

                            $price = $product['gia'];
                            $id_product = $product['id'];
                            
                            $tongtien = $tongtien + ($price*$value);

                            $d->reset();
                            $data_2['ma_dh'] = $ma_donhang;
                            $data_2['id_dh'] = $id_don;
                            $data_2['gia'] = $price;
                            $data_2['id_sp'] = $id_product;
                            $data_2['so_luong'] = $value;

                            $d->setTable('#_chitietdathang');
                            $d->insert($data_2);
                            $madh = $ma_donhang;
                        $row_nd .= '
                            <tr>
                                <td style="text-align:center;background-color:white;color:#000"><img src="'.URLPATH."thumb.php?src=".URLPATH."img_data/images/".$product['hinh_anh'].'&h=50" alt="'.$product['ten_'.$_SESSION['lang']].'"></td>
                                <td style="text-align:center;background-color:white;color:#000">'.$product['ten_'.$_SESSION['lang']].'</td>
                                <td style="text-align:center;background-color:white;color:#000">'.$data_2['so_luong'].'</td>
                                <td style="text-align:center;background-color:white;color:#000;text-align:center">'.number_format($price).' VNĐ</td>
                                <td style="text-align:center;background-color:white;color:#000;text-align:center">'.number_format($price*$value).' VNĐ</td>
                            </tr>                       
                                            ';
                        } // if
                    } // foreach


                    $httt = $d->simple_fetch("select * from #_hinhthucthanhtoan where id='".$data['hinh_thuc_thanh_toan']."'");  

                          
                    $noidung = '
                        <h3><b>Mã đơn hàng: '.$madh.'</b></h3><br>                 
                        <table style="width:100%;min-width:800px;margin:auto;background-color:#ccc;font-size:14px;font-family:Tahoma,Geneva,sans-serif;line-height:20px" border="0" cellpadding="8" cellspacing="1">
                            <tbody>
                                <tr style="text-align:center;background: linear-gradient(#ffffff, #f1f1f1);font-weight:bold">
                                    <td style="text-align:center;color:#000">Hình ảnh</td>
                                    <td style="text-align:center;color:#000">Tên</td>
                                    <td style="text-align:center;color:#000">Số lượng</td>
                                    <td style="text-align:center;color:#000">Giá</td>
                                    <td style="text-align:center;color:#000">Thành tiền</td>
                                </tr>'.$row_nd.'
                                <tr>
                                    <td style="background-color:white;color:#000;text-align:center"><b>Tổng tiền:</b></td>
                                    <td colspan="4" style="background-color:white;color:#000;text-align:right;color:red"><b>'.number_format($tongtien).' VNĐ</b></td>
                                </tr>
                            </tbody>
                        </table>                

                        <br></br>               
                                            
                        <table style="width:100%;min-width:800px;margin:auto;background-color:#ccc;font-size:14px;font-family:Tahoma,Geneva,sans-serif;line-height:20px" border="0" cellpadding="8" cellspacing="1">
                            <tbody>
                                <tr style="background: linear-gradient(#ffffff, #f1f1f1);">
                                    <td colspan="2" style="color:#000"><b>Thông tin khách hàng</b></td>
                                </tr>
                                <tr>
                                    <td style="background-color:white;color:#000">Họ tên</td>
                                    <td style="background-color:white;color:#000">'.$data['ho_ten'].'</td>
                                </tr>
                                <tr>
                                    <td style="background-color:white;color:#000">Email</td>
                                    <td style="background-color:white;color:#000">'.$data['email'].'</td>
                                </tr>
                                <tr>
                                    <td style="background-color:white;color:#000">Điện thoại</td>
                                    <td style="background-color:white;color:#000">'.$data['dien_thoai'].'</td>
                                </tr>
                                <tr>
                                    <td style="background-color:white;color:#000">Địa chỉ</td>
                                    <td style="background-color:white;color:#000">'.$data['dia_chi'].'</td>
                                </tr>
                                <tr>
                                    <td style="background-color:white;color:#000">Hình thức thanh toán</td>
                                    <td style="background-color:white;color:#000">'.$httt['ten_vn'].'</td>
                                </tr>
                            </tbody>
                        </table>                        
                    ';
                   
                    include "./smtp/index.php";
                    unset($_SESSION['cart']);
                    sendmail("Bạn có 1 đơn đặt hàng mới!", $noidung, $data['email'] , $row_setting['email'] ,  $data['ho_ten']);


                    $link_re = $d->simple_fetch("select * from #_category where module=8 and hien_thi=1");
                    $d->alert('Đặt hàng thành công!');
                    $d->location(URLPATH);
                
            }else{
                 $d->alert("The order has been sent or cart empty!");
            } 
        }
    }
    
    if(isset($_POST['capnhatsl'])){
        $id = addslashes($_POST['id']);
        $soluong = addslashes($_POST['soluong']);
        $d->reset();
        $data['so_luong'] = $soluong;
        $d->setWhere('id',$id);
        $d->setTable('#_chitietdathang');
        if(is_numeric($soluong) && $soluong>0){
            if($d->update($data)){
                $d->location(URLPATH."gio-hang.html");
            }
        }else {
            $d->alert("Giỏ hàng trống");
        }
    }

    if(isset($_POST['xoasp'])){
        $id = addslashes($_POST['id']);
        $d->reset();
        $d->setWhere('id',$id);
        $d->setTable('#_chitietdathang');
        if($d->delete()){
            $d->location(URLPATH."gio-hang.html");
        }
    }

    if(isset($_POST['xoaall'])){
        $d->reset();
        $d->setWhere('id_dh',@$_SESSION['iddonhang']);
        $d->setTable('#_chitietdathang');
        if($d->delete()){
             $d->location(URLPATH."gio-hang.html");
        }
    }


?>

<style type="text/css">
    .table tr th a{ color: #000; }
    .wrapper-contai{ position: static; }

</style>

<section>

    <div class="page-title">
        <ul class="breadcrumb">
            <li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
            <li><a href="<?=URLPATH ?>gio-hang.html" title="<?=__cart?>"><?=_cart?></a></li>
        </ul>
    </div>
        
    <div class="col-sm-12 p0">
        <?php if(isset($_SESSION['cart'])){ ?>
        <div class="title-form"><?=_sp_chon?></div>
        <div class="table-responsive">
            <table class="table table-hover table-bordered ">
                <tbody>
                    <tr>
                        <th style="width:3%;text-align: center;">STT</th>
                        <th style="width:10%; text-align: center;"><?=_hinhanh?></th>
                        <th style="width:25%; text-align: center;"><?=_namepro?></th>
                        <th style="width:15%; text-align: center;"><?=_price?></th>

                        <th style="width:10%; text-align: center;" class="th_soluong"><?=_number?></th>
                        <th style="width:15%; text-align: center;"  ><?=_money?></th>
                        <th style="width:10%; text-align: center;">
                            <?=_del?>
                        </th>
                    </tr>
                    <?php
                        $stt = 0;
                        $tongtien = 0;
                        if(count($_SESSION['cart'])>0){ foreach ($_SESSION['cart'] as $key => $value) {
                            $product = $d->simple_fetch("select * from #_sanpham where id={$key}");
                            if(!empty($product)){
                                $id_product = $product['id'];
                                $price = $product['gia'];
                                $tongtien = $tongtien + ($price*$value);
                            $stt++;
                            ?>
                            <tr>
                                <td style="text-align: center;"><?=$stt?></td>
                                <td style="text-align: center;">
                                    <a href="<?=URLPATH.$d->create_long_link($product['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" >
                                        <img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=35&h=35&zc=2';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$product['hinh_anh'] ?>&w=35&h=35&zc=2">    
                                    </a>
                                </td>
                                <td style="text-align: center;">
                                    <a href="<?=URLPATH.$d->create_long_link($product['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" >
                                        <?=@$product['ten_'.$_SESSION['lang']]?>
                                    </a>
                                </td>
                                <td align="center"><strong><?=@$d->vnd($price)?></strong></td>


                                <td align="center">
                                    <input name="soluong" style="width: 50px;" type="number" value="<?= $value ?>" onchange="chang_soluong(this,'<?=$product['id'] ?>','<?=$_SESSION['iddonhang'] ?>')" class="text-center ">   
                                    
                                </td>
                                
                                <td align="center">
                                    <div id="thanhtien_117" class="thanhtien_<?=$val['id'] ?> color-main">
                                    <?php
                                        echo $d->vnd($price*$value);
                                    ?>
                                    </div>
                                </td>
                                 <td align="center">
                                    <a href="javascript:;" onclick="xoa_sp_gh_dh('<?=$product['id'] ?>','<?=$_SESSION['iddonhang'] ?>','<?=_redel?>?')" title="Xóa sản phẩm"><i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                    <?php }}} ?>
                    <tr>
                    <td colspan="7">
                        <div class="tong_tt">
                        <h3><?=_totalmoney?>: <span><font id="tong_tien_gh" class="color-main"><?=$d->vnd($tongtien)?></font></span></h3>
                        </div>
                    </td>

                    </tr>
                </tbody>
            </table>    
        </div>   
        <div class="button_muahang thanhtoan"><a href="javascript:void()">Thanh toán</a></div> 
        <div class="button_muahang"><a href="">Tiếp tục mua hàng</a></div> 
    </div>
    <div class="clearfix"></div>  
    <?php } else { ?>
        <div class="well text-center">
            <a href="javascript:history.back()"><?=_cartblank?></a>
        </div>
    <?php } ?>

    
    <script type='text/javascript'>
        $(document).ready(function(){
            $('.button_muahang.thanhtoan').click(function(){
                $('.container_dathang').stop().slideToggle();
            })
        });
    </script>

    <div class="container_dathang col-md-12 p0">
        <div class="title-form"><?=_infouser?></div>
        <div class="ar_form">
        <form action="" id="form-shopping" class="form-horizontal" method="post" >
                <div class="form-group">
                    <label for="ten" class="col-sm-3 control-label "><?=_hoten?> (<font class="red">*</font>)</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="ten" required="" name="ten" data-error="<?=_typehoten?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email (<font class="red">*</font>)</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control" id="email" required="" name="email" data-error="<?=_type_email?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="diachi" class="col-sm-3 control-label"><?=_address?> (<font class="red">*</font>)</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" required="" id="diachi" name="diachi" data-error="<?=_typeaddress?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="dienthoai" class="col-sm-3 control-label no-pd-right"><?=_sodienthoai?> (<font class="red">*</font>)</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" required="" id="dienthoai" name="dienthoai" data-error="<?=_typesodienthoai?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="loinhan" class="col-sm-3 control-label"><?=_message?>:</label>
                    <div class="col-sm-9">
                        <textarea id="loinhan" class="form-control" rows="5" name="loinhan"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="thanhtoan" class="col-sm-3 control-label"><?=_formpayment?>:</label>
                    <div class="col-sm-9">
                        <select name="thanhtoan" class="form-control" id="thanhtoan">
                            <?php 
                                $_hinhthucthanhtoan = $d->o_sel("*","#_hinhthucthanhtoan","hien_thi = 1","so_thu_tu asc");
                                foreach ($_hinhthucthanhtoan as $httt) {
                            ?>
                            <option value="<?=$httt['id'] ?>" <?php if(!empty($_POST['thanhtoan']) && $_POST['thanhtoan'] == $httt['id'] ) echo 'selected="selected"' ?>><?=$httt['ten_vn'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="col_button col-sm-12">
                    <button type="submit" class="button button--aylen button--pd button--size-m pull-right" name="guidonhang"><?=_sendcart?></button>
                </div>
                <div class="clear"></div>
        </form>  
        </div>
    </div>   
</section>

<script>
function xoa_sp_gh_dh(id,iddh,al){
    var cf = confirm(al);
    if(cf){
        $.ajax({
            url: "./sources/ajax.php",
            type:'POST',
            data:{'do':'xoa_sp_gh','id':id,'iddh':iddh},
            success: function(data){
                window.location.href="<?=URLPATH ?>gio-hang.html";
            }
        })
    }
}

function thanhtien(id,iddh){
    var cls = ".thanhtien_"+id;
    $.ajax({
        url: "./sources/ajax.php",
        type:'POST',
        data:{'do':'thanh_tien','id':id,'iddh':iddh},
        success: function(data){
            $(cls).html(data);
        }
    })
}

function tongtien(id,iddh){
    $.ajax({
        url: "./sources/ajax.php",
        type:'POST',
        data:{'do':'tong_tien','id':id,'iddh':iddh},
        success: function(data){
            $("#tong_tien_gh").html(data);
        }
    })
}

function chang_soluong(obj,id,iddh){
    var sl = $(obj).val();
    $.ajax({
        url: "./sources/ajax.php",
        type:'POST',
        data:{'do':'change_so_luong','id':id,'iddh':iddh,'sl':sl},
        success: function(data){
            if(data == 0){
                alert("Số lượng nhập không hợp lệ!");
            }else{
                console.log(data);
                window.location.href="<?=URLPATH ?>gio-hang.html";
            }
        }
    })
}

</script>


