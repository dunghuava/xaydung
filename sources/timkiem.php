<?php  
    $list_search = $d->o_fet("select * from #_category where hien_thi=1 and module=3 and id_loai=251 order by so_thu_tu asc, id desc");
?>
<div class="center">
    <div id="timkiemnangcao">
         <div class="title_timkiem">
            Tìm kiếm sản phẩm
         </div>   
         <form action="index.php" method="GET">
            <input type="hidden" name="com" value="searchlist">
            <input type="text" name="keyword" class="keyword_search" onfocus="Focus(this)" onblur="Blur(this)" placeholder ="Từ khóa tìm kiếm">
            <select name="list_sp">
                <option value="0">Chọn loại đèn</option>
                <?php foreach ($list_search as $key => $value) { ?>
                    <option value="<?=$value['id']?>" <?php if($_GET['list_sp'] == $value['id']){
                            echo "selected";
                        } ?>>
                        <?=$value['ten_'.$lang]?>
                    </option>
                <?php } ?>
            </select>
            <input type="submit" class="submit_search" value="Tìm kiếm">
            <div class="clear"></div>
         </form>
         <div class="clear"></div>
    </div>
</div>
