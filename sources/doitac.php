<?php  $doitac=$d->getImg(466); ?>
<div id="doitac">
  <div class="center">
     <h3 align="center">ĐỐI TÁC KHÁCH HÀNG</h3><br>
      <div class="slick_doitac">
        <?php foreach ($doitac as $key => $value) { ?>
            <div>
                <div class="item_doitac">
                    <a href="<?=$value['link']?>" target='_blank' title='<?=$value['title_'.$lang] ?>'>
                        <img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=160&h=90&zc=2';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['picture'] ?>&w=190&h=160&zc=2" alt='<?=$value['title_'.$lang] ?>'>
                    </a>
                </div>
            </div>
        <?php } ?>
      </div>
  </div>
</div>