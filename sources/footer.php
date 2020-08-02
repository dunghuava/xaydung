<?php
    $textfooter_1 = $d->getTemplates(28);
    $textfooter_2 = $d->getTemplates(38);
    $textfooter_3 = $d->getTemplates(39);

    $map = false;
    $dichvu = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and id_loai='498' order by so_thu_tu asc, id desc");
?>
<footer class="footer">
  <div class="inner">
     <div class="col-footer col-md-4 col-sm-6 col-xs-12">
          <!-- <div class="title_footer"></div> --> 
          <div class="content-footer">
              <?php echo $textfooter_1['noi_dung_'.$lang]; ?>
          </div>
      </div>
      <div class="col-footer col-md-3 col-xs-12">
          <!-- <div class="title_footer"></div> -->
          <div class="content-footer">
              <?php echo $textfooter_2['noi_dung_'.$lang]; ?>
          </div>
      </div>
      <div class="col-footer col-md-3 col-xs-12">
          <!-- <div class="title_footer"></div> -->
          <h4 style="color: white">Follow Us</h4>
          <div class="fb-page" data-href="<?=$row_setting['facebook']?>" data-tabs="timeline" data-width="405" data-height="140" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="<?=$row_setting['facebook']?>" class="fb-xfbml-parse-ignore"><a href="<?=$row_setting['facebook']?>">Facebook</a></blockquote></div>
      </div>
      <div class="col-footer col-md-2 col-xs-12">
          <!-- <div class="title_footer"></div> -->
          <div class="content-footer">
              <?php echo $textfooter_3['noi_dung_'.$lang]; ?>
          </div>
      </div>
      <div class="clear"></div>
  </div>
</footer>
<div id="copyright">
    <div class="inner">
      <ul>
        <li><a href="<?=URLPATH?>"><?=$row_setting['copyright']?> </a></li>
        <li><a rel="nofollow" href="http://phuongnamvina.vn" target="_blank" title="Phương Nam Vina"><?=_thietkewebsite?>: Phương Nam Vina</a></li>
      </ul>
    </div>
</div>
<!-- <a href="<?=URLPATH?>#dangky-baogia" style="position: fixed;bottom: 56px;left: 10px;"><img style="height: 40px;" src="<?=URLPATH?>templates/images/nhan-bao-gia.gif" /></a> -->