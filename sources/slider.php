<?php  
  $slide = $d->o_fet("select * from #_slide_sp where hien_thi = 1 order by so_thu_tu asc, id desc");
  $slider=true;
?>
<div class="contain_slider" style="background:url('<?=URLPATH ?>img_data/images/<?=$slide[0]['hinh_anh']?>') top center no-repeat;">
    <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider"> 
            <?php foreach($slide as $i => $value) {?>
                <img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh']?>&w=1423&h=370" alt="<?=$value['title_'.$lang]?>" />
            <?php } ?>
        </div>
    </div>
</div>
<style type="text/css">
	.contain_slider{height:370px;background-size:100% !important;}
</style>