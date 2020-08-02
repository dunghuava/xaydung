<div class="like-share-page mb20">

<!-- <span><i class="fa fa-share-alt"></i> <?=_share?></span> -->

<div class="facebook">
<div class="fb-like" data-href="<?=$url_page?>" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
<div id="fb-root"></div>
<script>
(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</div>
<div class="twitter">
<a href="<?=$url_page?>" class="twitter-share-button">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</div>
<div class="google">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<g:plusone size="medium"></g:plusone>
</div>		
</div>