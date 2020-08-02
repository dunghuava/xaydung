
<div id="pre-loader"><div class="loader"></div></div>
<script type='text/javascript'>
  setTimeout(function(){
     $("#pre-loader").fadeOut(1000);
   },500);
</script>
<!-- Google Analytisc -->
<?=$row_setting['gg']?>
<?php if ($source=='lien-he') { ?>
    <script type='text/javascript'>
      $(document).ready(function(){
          $('.img_recaptcha').click(function(){
              $.ajax({
                type:'post',
                url: 'sources/ajax.php',
                data: {'do':'recaptcha'},
                success:function(data){
                  $('.recaptcha').html(data);
                }
              })
          });
      });
    </script>
<?php } ?>
<!-- Owlcarousel -->
<script src="<?=URLPATH?>templates/extra/owlcarousel/owl.carousel.js"></script>
<script type='text/javascript'>
    $(document).ready(function(){
        $('.owl-dv').owlCarousel({
            loop:true,
            nav:true,
            dots: false,
            autoplay: true,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:2
                },
                1000:{
                    items:4
                }
            }
        });
        $('.owl-op').owlCarousel({
            loop:true,
            nav:false,
            dots: true,
            autoplay: true,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                }
            }
        });
    });
</script>
<!-- Slick -->
<script src="<?=URLPATH?>templates/extra/slick/slick.min.js"></script>
<!-- Slider -->
<?php if($slider==true) { ?>
<script src='<?=URLPATH?>templates/extra/nivo-slider/jquery.nivo.slider.js'></script>
<script type="text/javascript">
    $('#slider').nivoSlider({
        pauseTime: 4000,
        controlNav: false,
        afterLoad: function(){$('.contain_slider').css({'height':'auto'})}// Triggers when slider has loaded
    });
</script>
<?php } ?>
<!-- Magiczoom Plus -->
<script src="<?=URLPATH?>templates/extra/magiczoomplus/magiczoomplus.js"></script>
<!-- mmenu -->
<script type="text/javascript" src="<?=URLPATH?>templates/extra/mmenu/jquery.mmenu.js"></script>
<script type="text/javascript">
  $(function() {
    $('nav#menu').mmenu();
  });
</script>
<!-- Lockfixed -->
<?php if ($lockfixed==true) { ?>
    <script src="<?=URLPATH?>templates/js/jquery.lockfixed.min.js"></script>
    <script>
        $(document).ready(function () {
            var bottom = $('.footer').outerHeight();
            $.lockfixed("#main_lockfixed", {offset: {top: 5, bottom:bottom+5} });
        });
    </script>
<?php } ?>
<!-- Datetime Picker -->
<!-- <script src="<?=URLPATH?>templates/extra/datetimepicker/datepicker.js"></script>
<script src="<?=URLPATH?>templates/extra/datetimepicker/main.js"></script> -->
<!-- Fancybox -->
<script src="<?=URLPATH?>templates/extra/fancybox/jquery.fancybox.js"></script>	
<script src="<?=URLPATH?>templates/extra/fancybox/jquery.mousewheel-3.0.6.pack.js"></script>
<!-- Fancybox not related posision fixed -->
<script type='text/javascript'>
    $(".fancybox").fancybox({
      fixed: false,
        helpers : {
            overlay : {
                locked : false
            }
        }
    });
</script> 
<script src="<?=URLPATH?>templates/js/home.js"></script>
<script src="<?=URLPATH?>templates/js/module.js"></script>
<script src="templates/extra/bootstrap/js/bootstrap-slider.js"></script>
<script src="<?=URLPATH?>templates/js/aos.js"></script>
<script src="<?=URLPATH?>templates/js/detect.js"></script>
<script src="<?=URLPATH?>templates/extra/bootstrap/js/bootstrap.min.js"></script>
<div id="fb-root"></div>
<?php if ($lang=='vn') { ?>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<?php }else{ ?>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_EN/sdk.js#xfbml=1&version=v2.8";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<?php } ?>
<script type="text/javascript">
    $(document).ready(function() {
          $("input:text").each(function() {
            $(this).val($(this).data('placeholder')).focus(function() {
              if ($(this).val() == $(this).data('placeholder')) {
                $(this).val('').addClass('selected');
              }
            }).blur(function() {
              if ($(this).val().length == 0) {
                $(this).val($(this).data('placeholder')).removeClass('selected');;
              }
            });
          });
        });
</script>
<?php if($map==true){ ?>
    <script type="text/javascript">
       var map;
       var infowindow;
       var marker= new Array();
       var old_id= 0;
       var infoWindowArray= new Array();
       var infowindow_array= new Array();
       function initialize1(){
       var defaultLatLng = new google.maps.LatLng(<?=$row_setting['toado']?>);
       var myOptions= {
       zoom: 16,
       center: defaultLatLng,
       scrollwheel : false,
       mapTypeId: google.maps.MapTypeId.ROADMAP
       };
       map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);map.setCenter(defaultLatLng);
       var arrLatLng = new google.maps.LatLng(<?=$row_setting['toado']?>);
       infoWindowArray[7895] = '<div class="map_description"><div class="map_title"><h2 style="color:green;font-size:11px;font-weight:bold;line-height: initial;"><?=$row_setting["company_".$lang]?></h2></div><b style="color:#000;font-size:11px;">Địa Chỉ : <?=$row_setting["address_".$lang]?></b><br></div>';
       loadMarker(arrLatLng, infoWindowArray[7895], 7895);
       moveToMaker(7895);}function loadMarker(myLocation, myInfoWindow, id){marker[id] = new google.maps.Marker({position: myLocation, map: map, visible:true,animation:google.maps.Animation.BOUNCE});
       var popup = myInfoWindow;infowindow_array[id] = new google.maps.InfoWindow({ content: popup});google.maps.event.addListener(marker[id], 'mouseover', function() {if (id == old_id) return;if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;});google.maps.event.addListener(infowindow_array[id], 'closeclick', function() {old_id = 0;});}function moveToMaker(id){var location = marker[id].position;map.setCenter(location);if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;}
       google.maps.event.addDomListener(window, "load", initialize1);
    </script> 
<?php } ?>
<?php if ($map_lienhe==true) { ?>
    <script type="text/javascript">
       var map;
       var infowindow;
       var marker= new Array();
       var old_id= 0;
       var infoWindowArray= new Array();
       var infowindow_array= new Array();
       function initialize1(){
       var defaultLatLng = new google.maps.LatLng(<?=$row_setting['toado']?>);
       var myOptions= {
       zoom: 16,
       center: defaultLatLng,
       scrollwheel : false,
       mapTypeId: google.maps.MapTypeId.ROADMAP
       };
       map = new google.maps.Map(document.getElementById("map_canvas1"), myOptions);map.setCenter(defaultLatLng);

       var arrLatLng = new google.maps.LatLng(<?=$row_setting['toado']?>);
       infoWindowArray[7895] = '<div class="map_description"><div class="map_title"><h2 style="color:green;font-size:14px;margin-bottom: 5px;;font-weight:bold;line-height: initial;"><?=$row_setting["company_".$lang]?></h2></div><b><?=_diachi?> :</b> <?=$row_setting["address_".$lang]?><br></div>';
       loadMarker(arrLatLng, infoWindowArray[7895], 7895);

       moveToMaker(7895);}function loadMarker(myLocation, myInfoWindow, id){marker[id] = new google.maps.Marker({position: myLocation, map: map, visible:true,animation:google.maps.Animation.BOUNCE});
       var popup = myInfoWindow;infowindow_array[id] = new google.maps.InfoWindow({ content: popup});google.maps.event.addListener(marker[id], 'mouseover', function() {if (id == old_id) return;if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;});google.maps.event.addListener(infowindow_array[id], 'closeclick', function() {old_id = 0;});}function moveToMaker(id){var location = marker[id].position;map.setCenter(location);if (old_id > 0) infowindow_array[old_id].close();infowindow_array[id].open(map, marker[id]);old_id = id;}
       google.maps.event.addDomListener(window, "load", initialize1);
   </script> 
<?php } ?>
<?php if($tab==true){ ?>
    <script type='text/javascript'>
        $('.content_tab').hide();
        $('.content_tab:first').show();
        $(document).ready(function(){
          $('.title_tab li').click(function(){
            $('.title_tab li').removeClass('active');
            $(this).addClass('active');
            $('.content_tab').hide();
            var id_tab = $(this).attr('rel');
            $('#'+id_tab).fadeIn();
          })
        });
    </script> 
<?php } ?>

<!-- Login, Registration -->
<?php if ($login == true) { ?>
<script src="templates/js/script_facebook.js" type="text/javascript"></script>
<script src="templates/js/script_google.js" type="text/javascript"></script>
<script src="https://apis.google.com/js/platform.js?onload=onLoadGoogleCallback" async defer></script>
<script type='text/javascript'>
    $('.popup').click(function(){
        $(this).parents().children('#myModal_login').modal('hide');
        $('#sign_up').modal('show');
    });
    $('.popup1').click(function(){
        $(this).parents().children('#sign_up').modal('hide');
        $('#myModal_login').modal('show');
    });
    $('.login_header.down a.cl').click(function(){
        $('.sub_thanhvien').stop().slideToggle();
    });
</script>
<?php } ?>
<?php if($select_video==true) { ?>
<script type="text/javascript">
    $(document).ready(function($) {
        $('.list_video select').change(function(event){
            var duongdan = $(this).val();
            $('.videoclip iframe').attr('src','https://www.youtube.com/embed/'+ duongdan);
        });
    });
</script>
<?php } ?>
<!-- Droplist menu -->
<script type='text/javascript'>
    $(document).ready(function(e) {
        $('#menu_desktop ul li').hover(
            function(){
                 $(this).children('ul').stop().slideDown();
            },
            function(){
                $(this).children('ul').css({'display':'none'});
            }
        );
    });
</script>

<script type='text/javascript'>
    $(document).ready(function(){
        $('.i-facebook').on('click',function(){
            $('.ar-chat').slideToggle();
        });
    });
</script>