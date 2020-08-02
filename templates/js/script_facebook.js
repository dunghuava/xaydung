
  window.fbAsyncInit = function() {
  FB.init({
    appId      : '2467863216772498',
    xfbml      : true,
    version    : 'v2.10'
  });
  FB.AppEvents.logPageView();
};
function loginFb(){
    FB.login(function (response) {
        if (response.authResponse) {
          FB.api('/me?fields=email,name,id', function (response) {  
              var photo = 'https://graph.facebook.com/'+response.id+'/picture?width=200&height=200';
              $.ajax({
        					data:{email:response.email,name:response.name,id:response.id,photo:photo},
        					type:'post',
        					url:'./sources/ajax_facebook.php',
        					success:function(data){
                      window.location.reload();
        					}
      			  })
          });
        } else {
            
        }
    }, {scope: 'email'});
  return false;
}
	
	