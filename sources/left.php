<?php 
    $select_video=true;
    $lockfixed=false;
    $support    = $d->o_fet("select * from #_hotro where hien_thi=1 order by so_thu_tu asc, id desc");
    $news_left  = $d->o_fet("select * from #_tintuc where noi_bat=1 and hien_thi=1 and id_loai=175  order by so_thu_tu asc, id desc");  
    $lienket=$d->o_fet("select * from #_lienketwebsite where hien_thi=1 order by so_thu_tu asc, id desc");
    $video_left = $d->o_fet("select * from #_video where hien_thi = 1 order by id desc");
?>
<?php  
    $nav_dmsp = $d->o_fet("select * from #_category where hien_thi=1 and module=3 and id_loai=251 order by so_thu_tu asc, id desc"); 
?>
<div class="clearfix bao-left">
    <div class="title-left"><?=_danhmucdichvu?></div>
    <div class="ar_left menu">
        <ul>
            <?php foreach ($nav_dmsp as $key => $value) { ?>
                <li>
                    <a href="<?=URLPATH.$d->create_long_link($value['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title='<?=$value['ten_'.$_SESSION['lang']]?>'><i class="fa fa-angle-double-right" aria-hidden="true"></i><?=$value['ten_'.$_SESSION['lang']]?></a>
                </li>
            <?php } ?>
        </ul>
        <div class="clearfix"></div>
    </div> 
</div>
<div class="clearfix bao-left">
    <div class="title-left"><?=_hotrotructuyen?></div>
    <div class="ar_left">
        <img src="images/hotro.png" alt="Hỗ trợ" style="margin-bottom: 10px;">
        <?php foreach($support as $item) { $st++; ?>
            <div class="support">
                <div class="title-hotro">
                    <span><i class="fa fa-user" aria-hidden="true"></i></span>
                   <span class="name"><?=$item['ten_'.$lang]?></span>
                </div>
                <div class="hot-line">
                    <span><i class="fa fa-phone-square" aria-hidden="true"></i></span>
                    <?=$item['sdt']?>
                </div>
                <div class="hot-line">
                    <a href="https://zalo.me/<?=$item['yahoo']?>" target='_blank'>
                        <span><img src="images/zalo.png" alt="zalo"></span>
                        <?=$item['yahoo']?>
                    </a>
                </div>
                <div class="hot-line">
                <a href="skype:<?=$item['skype']?>?chat">
                    <span><img src="templates/images/skype.png" width="15px" alt="skype"></span>
                    <?=$item['skype']?>
                </a>
                </div>
            </div>
        <?php } ?>
        <div class="clearfix"></div>
    </div> 
</div>


    <div class="clearfix bao-left">
        <div class="title-left">Video clip</div>
        <div class="ar_left">
            <div class="videoclip">
                <iframe width="100%" height="200" src="https://www.youtube.com/embed/<?=$video_left[0]['link']?>" frameborder="0" allowfullscreen></iframe>  
            </div>
            <div class="list_video">
                <select>
                    <?php foreach ($video_left as $key => $value) { ?>
                        <option value="<?=$value['link']?>">
                            <?=$value['ten_'.$_SESSION['lang']]?>
                        </option>
                    <?php } ?>
                </select>
            </div>
        </div>
    </div>
    
    <div class="clearfix bao-left">
        <div class="title-left">Đối Tác - Khách Hàng</div>
        <div class="ar_left">
            <div class="img_qcpnvn">
                <a href="http://phuongnamvina.vn" target="_blank" rel='nofollow'><img src="images/qc1.gif" alt="Công ty Phương Nam Vina" title="Công ty Phương Nam Vina"></a>
            </div>
            <div class="img_qcpnvn">
                <a href="http://24hquangcao.net" target="_blank" rel='nofollow'><img src="images/qc2.gif" alt="Đăng tin quảng cáo miễn phí" title="Đăng tin quảng cáo miễn phí"></a>
            </div>
        </div> 
    </div>