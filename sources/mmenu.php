<ul>
    <li></li>
    <li class="<?php if($com=='') echo 'active'?>""><a href=""><?=_trangchu?></a></li>
    <?php foreach ($nav as $key => $value) { ?>
    <li class="<?php if($value['id']==$_SESSION['nav'][0]) echo 'active'?>">
        <a href="<?=URLPATH.$d->create_long_link($value['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=$value['ten_'.$_SESSION['lang']]?>">
            <?=$value['ten_'.$_SESSION['lang']]?>
        </a>
        <?php $sub1=$d->o_fet("select * from #_category where id_loai={$value['id']} and hien_thi=1 order by so_thu_tu asc, id desc"); ?>
        <?php if (count($sub1)>0) { ?>
        <ul>
        <?php foreach ($sub1 as $key => $value1) { ?>
            <li>
                <a href="<?=URLPATH.$d->create_long_link($value1['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=$value1['ten_'.$_SESSION['lang']]?>">
                    <?=$value1['ten_'.$_SESSION['lang']]?>
                </a>
            <?php $sub2=$d->o_fet("select * from #_category where id_loai={$value1['id']} and hien_thi=1 order by so_thu_tu asc, id desc"); ?>
            <?php if (count($sub2)>0) { ?>
            <ul>
            <?php foreach ($sub2 as $key => $value2) { ?>
                <li>
                    <a href="<?=URLPATH.$d->create_long_link($value2['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=$value2['ten_'.$_SESSION['lang']]?>">
                        <?=$value2['ten_'.$_SESSION['lang']]?>
                    </a>
                    <?php $sub3=$d->o_fet("select * from #_category where id_loai={$value2['id']} and hien_thi=1 order by so_thu_tu asc, id desc"); ?>
                    <?php if (count($sub3)>0) { ?>
                    <ul>
                    <?php foreach ($sub3 as $key => $value3) { ?>
                        <li>
                            <a href="<?=URLPATH.$d->create_long_link($value3['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=$value3['ten_'.$_SESSION['lang']]?>">
                                <?=$value3['ten_'.$_SESSION['lang']]?>
                            </a>
                            <?php $sub4=$d->o_fet("select * from #_category where id_loai={$value3['id']} and hien_thi=1 order by so_thu_tu asc, id desc"); ?>
                            <?php if (count($sub4)>0) { ?>
                            <ul>
                            <?php foreach ($sub4 as $key => $value4) { ?>
                                <li>
                                    <a href="<?=URLPATH.$d->create_long_link($value4['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=$value4['ten_'.$_SESSION['lang']]?>">
                                        <?=$value4['ten_'.$_SESSION['lang']]?>
                                    </a>
                                </li>
                            <?php } ?>
                            </ul>
                            <?php } ?>
                        </li>
                    <?php } ?>
                    </ul>
                    <?php } ?>
                </li>
            <?php } ?>
            </ul>
            <?php } ?>
        </li>
        <?php } ?>
        </ul>
        <?php } ?>
    </li>
    <?php } ?>
</ul>
<div class="clear"></div>