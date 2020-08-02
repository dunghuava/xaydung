<?php  
    $nav=$d->o_fet("select * from #_category where tieu_bieu=1 and hien_thi=1 order by so_thu_tu asc, id desc");
?>
<div id="menu_desktop">
    <div class="center">
        <?php include _source.'/mmenu.php';?>
    </div>
</div>
<div class="clear"></div>

<div id="menu_mobile">
    <div class="header">
        <a href="#menu"><span></span></a>
    </div>
    <nav id="menu">
        <?php include _source.'/mmenu.php';?>
    </nav>
    <div id="timkiem">
        <form method="GET" action="index.php">
            <input type="hidden" name="com" value="search">
            <input type="text" name="textsearch" data-placeholder="<?=_typekey?>...">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
</div>