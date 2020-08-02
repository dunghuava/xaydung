//<script src="https://apis.google.com/js/platform.js?onload=onLoadGoogleCallback" async defer></script> in index.php
function onLoadGoogleCallback(){
    gapi.load('auth2', function() {
    auth2 = gapi.auth2.init({
      client_id: '387000255458-ufa21i5eo3636jpqlf2353286m6aoivt.apps.googleusercontent.com',
      cookiepolicy: 'single_host_origin',
      scope: 'profile'
    });
    auth2.attachClickHandler(element, {},
        function(googleUser) {
            var profile = googleUser.getBasicProfile();
            $.ajax({
                url: './sources/ajax_google.php',
                type: 'POST',
                data: {id: profile.getId(),name: profile.getName(),email: profile.getEmail(),photo: profile.getImageUrl(),},
                success:function(data){
                    window.location.reload();
                }
            })
        }, function(error) {
            console.log('Sign-in error', error);
        }
    );
});
element = document.getElementById('googleSignIn');
}
function signOut() {
var auth2 = gapi.auth2.getAuthInstance();
auth2.signOut().then(function () {
  console.log('User signed out.');
});
}


// function logout()
// {
//     gapi.auth.signOut();
//     location.reload();
// }
// function login() 
// {
//   var myParams = {
//     'clientid' : '157311862244-u0fu20sn8dlkeq24d36rnictt47hbbo3.apps.googleusercontent.com',
//     'cookiepolicy' : 'single_host_origin',
//     'callback' : 'loginCallback',
//     'approvalprompt':'force',
//     'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
//   };
//   gapi.auth.signIn(myParams);
// }
// function loginCallback(result)
// {
//     if(result['status']['signed_in'])
//     {
//         var request = gapi.client.plus.people.get(
//         {
//             'userId': 'me'
//         });
//         request.execute(function (resp)
//         {
//             var email = '';
//             if(resp['emails'])
//             {
//                 for(i = 0; i < resp['emails'].length; i++)
//                 {
//                     if(resp['emails'][i]['type'] == 'account')
//                     {
//                         email = resp['emails'][i]['value'];
						
//                     }
//                 }
//             }				
// 			var str = "Name:" + resp['displayName'] + "<br>";
//             str += "Image:" + resp['image']['url'] + "<br>";
//             str += "<img src='" + resp['image']['url'] + "' /><br>";
//             str += "URL:" + resp['url'] + "<br>";
//             str += "Email:" + email + "<br>";
// 			alert("email:"+ email +" name:"+resp['displayName']);
// 			$.ajax({
// 				data:{email:email,name:resp['displayName'],url:'dangnhap'},
// 				type:'post',
// 				url:'ajax/ajax_google.php',
// 				success:function(data){
// 					alert(data);
// 					window.location.href='';
// 					return false;
// 				}
// 			})
// 			return false;
//         });
//     }
// }
// function onLoadCallback()
// {
//     gapi.client.setApiKey('');
//     gapi.client.load('plus', 'v1',function(){});
// }
//  (function() {
//        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
//        po.src = 'https://apis.google.com/js/client.js?onload=onLoadCallback';
//        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
//      })();	