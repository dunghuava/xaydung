<?php  
    $banner = $d->o_fet("select * from #_setting where hien_thi=1 and id=30"); 
?>
<header>
    <div class="inner">
        <div class="logo">
            <a href="<?=URLPATH?>" title="Home">  
                <img src="<?=URLPATH?>img_data/images/<?=$banner[0]['hinh_anh_'.$lang]?>" alt="Logo">
            </a>
        </div>
        <div class="hotline">
            <div class="hltxt">
                <img class="imghltl" src="templates/images/hotline.png">
                <div class="text-header">
                    <p><?php echo $row_setting['hotline'] ?></p>
                    <p class="txthth">Hotline</p>
                </div>
            </div>
        </div>
        <div class="right-header">
            <div class="s_desktop">
                <form method="GET" action="index.php">
                    <input type="hidden" name="com" value="search">
                    <input type="text" name="textsearch" data-placeholder="<?=_typekey?>...">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>  
    </div>
</header>
