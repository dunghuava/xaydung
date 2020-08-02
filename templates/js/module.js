
function ResizeModule() {

	if($('.img-detail-pro').length){
		var Wdetail=$('.owl-pro-detail').width();
		var Hdetail=Wdetail/1.333;
		$('.owl-pro-detail .img, .owl-pro-detail .img a').height(Hdetail);
		$('.owl-pro-detail .img img').css({'max-height':Hdetail});
		/*resize detail thumb*/
		var Wthumb=$('.owl-pro-detail-thumb .img').width();
		var Hthumb=Wthumb/1.333;
		$('.owl-pro-detail-thumb .img, .owl-pro-detail-thumb .img a').height(Hthumb);
		$('.owl-pro-detail-thumb .img img').css({'max-height':Hthumb});	
	}
	
	if($('.index-contents').length){
		$('.item-content .quote').attr('style','');
		var h=0;
		$('.item-content').each(function() {
			var i = $('.quote',this).height();
			if(i>h) h=i;
		});
		$('.item-content .quote').height(h);
	}
	
	
	if($('.box-item-contents').length){		
		var X = $('.item-index-contents').width();
		$('.item-index-contents .name span').css({'height':X})
	}	

	
}

function check_dh(madh){
	var cf = confirm(al);
	if(cf){
		$.ajax({
			url: "./sources/ajax.php",
			type:'GET',
			data:{'do':'check_dh','id':madh},
			success: function(data){
				window.location.href="<?=URLPATH ?>gio-hang.html";
			}
		})
	}
}

function clickThumb(img,thumb) {
	thumb.on("click", ".owl-item", function(e){
		e.preventDefault();
		var number = $(this).data("owlItem");
		img.trigger("owl.goTo",number);
	});
}


function syncPosition(current,thumb) {
	
	if(thumb != undefined) {
		thumb.find(".owl-item").removeClass("synced").eq(current).addClass("synced");
		if(thumb.data("owlCarousel") !== undefined){
			center(current,thumb)
		}
	}
}


function center(number,thumb){
	var sync2visible = thumb.data("owlCarousel").owl.visibleItems;
	var num = number;
	var found = false;
	for(var i in sync2visible){
		if(num === sync2visible[i]){
			var found = true;
		}
	}

	if(found===false){
		if(num>sync2visible[sync2visible.length-1]){
			thumb.trigger("owl.goTo", num - sync2visible.length+2)
		}else{
			if(num - 1 === -1){
				num = 0;
			}
			thumb.trigger("owl.goTo", num);
		}
	} else if(num === sync2visible[sync2visible.length-1]){
		thumb.trigger("owl.goTo", sync2visible[1])
	} else if(num === sync2visible[0]){
		thumb.trigger("owl.goTo", num-1);
	}
}



$(document).ready(function() {
	
/*$('#sidebar').affix({
  offset: {
    top: 200,
    bottom: function () {
      return (this.bottom = $('.footer').outerHeight(true))
    }
  }
})*/

	$(window).on('resize load',function() {
		ResizeModule();
	});
	
	
	$(window).scroll(function () {
		if ($(this).scrollTop() > 300) {
			$('.fback-top').fadeIn();
		} else {
			$('.fback-top').fadeOut();
		}
	});


	$('.fback-top').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 500);
		return false;
	});
	
	$('.fancybox').fancybox();


	if($("#form-shopping").length) {
		var error1=$('#form-shopping #ten').attr('data-error');
		var error2=$('#form-shopping #email').attr('data-error');
		var error3=$('#form-shopping #diachi').attr('data-error');
		var error4=$('#form-shopping #dienthoai').attr('data-error');
		
		$("#form-shopping").validate({
			rules: {
				ten: "required",				
				email: {
					required: true,
					email: true
				},
				diachi: "required",
				dienthoai: "required",
			},
			messages: {
				ten: error1,
				email: error2,
				diachi: error3,
				dienthoai: error4,
			}
		});	
	}

	
	// if($("#form-contact").length) {
	// 	var error1=$('#form-contact #ho_ten').attr('data-error');
	// 	var error2=$('#form-contact #so_dien_thoai').attr('data-error');
	// 	var error3=$('#form-contact #dia_chi').attr('data-error');
	// 	var error4=$('#form-contact #email').attr('data-error');
	// 	var error5=$('#form-contact #noi_dung').attr('data-error');
	// 	var error6=$('#form-contact #captcha').attr('data-error');
		
	// 	$("#form-contact").validate({
	// 		rules: {
	// 			ho_ten: "required",
	// 			so_dien_thoai: "required",
	// 			dia_chi: "required",
	// 			email: {
	// 				required: true,
	// 				email: true
	// 			},
	// 			noi_dung: "required",
	// 			captcha: "required",

	// 		},
	// 		messages: {
	// 			ho_ten: '',
	// 			so_dien_thoai: '',
	// 			dia_chi: '',
	// 			email: '',
	// 			noi_dung: '',
	// 			captcha: '',
	// 		},
	// 		highlight : function (element) {
	// 			$(element).closest('.form-group').addClass('has-error');
	// 		},
	// 		unhighlight : function (element) {
	// 			$(element).closest('.form-group').removeClass('has-error');
	// 		}
			
	// 	});	
		
	// }
		

	
	if($("#form-question").length) {
		
		var error1=$('#form-question #ten').attr('data-error');
		var error2=$('#form-question #cau_hoi').attr('data-error');
		var error3=$('#form-question #captcha').attr('data-error');
		
		$("#form-question").validate({
			rules: {
				ten: "required",
				cau_hoi: "required",
				captcha: "required",

			},
			messages: {
				ten: error1,
				cau_hoi: error2,
				captcha: error3,
			}
		});	
	}
	
	
	if($('.img-detail-pro').length) {
		var sync1 = $(".owl-pro-detail");
		var sync2 = $(".owl-pro-detail-thumb");

		sync1.owlCarousel({
			singleItem : true,
			slideSpeed : 1000,
			navigation : false,
			autoPlay:true,
			navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			afterAction : function() {
				syncPosition(this.currentItem,sync2);
			},
			responsiveRefreshRate : 200,
		});



		sync2.owlCarousel({
			items : 5,
			itemsDesktop      : [1199,5],
			itemsDesktopSmall     : [979,5],
			itemsTablet       : [768,5],
			itemsMobile       : [479,3],
			pagination:false,
			responsiveRefreshRate : 100,
			afterInit : function(el){
				el.find(".owl-item").eq(0).addClass("synced");
			},
			afterAction: function(){
				setTimeout(function() { ResizeModule() },200);	
			}
		});

		clickThumb(sync1,sync2);	
	
	}



	if($('.owl-detail-content').length) {
		$('.owl-detail-content').owlCarousel({
			items : 4,
			itemsDesktop : [1199, 4],
			itemsDesktopSmall : [979, 4],
			itemsTablet : [768, 3],
			itemsTabletSmall : false,
			itemsMobile : [479, 2],
			navigation : true,
			navigationText : ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			rewindNav:true,
			autoPlay:true,
			autoHeight : true,
			afterAction: function(){
			
			}
		});	
	}
	

	if($("#form-datlich").length) {
		
		var error1=$('#form-datlich #name').attr('data-error');
		var error2=$('#form-datlich #donvi').attr('data-error');
		var error3=$('#form-datlich #chuyenmon').attr('data-error');
		var error4=$('#form-datlich #email').attr('data-error');
		var error5=$('#form-datlich #phone').attr('data-error');
		var error6=$('#form-datlich #mota').attr('data-error');
		var error7=$('#form-datlich #mucdo').attr('data-error');
		var error8=$('#form-datlich #vaitro').attr('data-error');
		var error9=$('#form-datlich #tuvan').attr('data-error');
		
		$("#form-datlich").validate({
			rules: {
				name: "required",
				donvi: "required",
				chuyenmon: "required",
				email: {
					required: true,
					email: true
				},
				phone: "required",
				mota: "required",
				mucdo: "required",
				'vaitro[]': "required",
				tuvan: "required",
			},
			messages: {
				name: error1,
				donvi: error2,
				chuyenmon: error3,
				email: error4,
				phone: error5,
				mota: error6,
				mucdo: error7,
				'vaitro[]': error8,
				tuvan: error9,
			}
		});	
	}

	/* thanh vien */
	
	if($(".form-register").length) {
		var error1=$('.form-register #tai_khoan').attr('data-error');
		var error_username=$('.form-register #tai_khoan').attr('data-error-1');
		var error2=$('.form-register #pass').attr('data-error');
		var error3=$('.form-register #re_pass').attr('data-error');
		var error4=$('.form-register #ho_ten').attr('data-error');
		var error5=$('.form-register #email').attr('data-error');
		var error_email=$('.form-register #email').attr('data-error-1');
		var error6=$('.form-register #dien_thoai').attr('data-error');
		var error7=$('.form-register #dia_chi').attr('data-error');
		
		$(".form-register").validate({
			rules: {
				tai_khoan: {
					required: true,
					remote: {
						url: './sources/ajax.php',
						type: "post",
						data: {
							tai_khoan: function() {
								return $('.form-register #tai_khoan').val();
							},
							'do' : 'check_tai_khoan'
						}					
					}
				},
				pass: "required",
				re_pass: {
					required: true,
					equalTo: ".form-register #pass",
				},				
				ho_ten: "required",
				email: {
					required: true,
					email: true,
					remote: {
						url: './sources/ajax.php',
						type: "post",
						data: {
							email: function() {
								return $('.form-register #email').val();
							},
							'do' : 'check_email'
						}
					}
				},
				dien_thoai: "required",
				dia_chi: "required",
				ngay: "required",	
				thang: "required",	
				nam: "required",	
				gioi_tinh: "required",	
			},
			messages: {
				tai_khoan: {
					required: error1,
					remote: error_username
				},
				pass: error2,
				re_pass: {
					required: error2,
					equalTo: error3,
				},
				ho_ten: error4,
				email: {
					required: error5,
					email: error5,
					remote: error_email,
				},
				dien_thoai: error6,
				dia_chi: error7,
				ngay: '',
				thang: '',
				nam: '',
				gioi_tinh: '',	
			},
			highlight : function (element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
			submitHandler : function(form) {				
				$.ajax({
					url: './sources/ajax.php',
					type: 'post',
					data: $(form).serialize() + '&do=dang_ky',
					//dataType: "json",
					beforeSend: function() {
						$('.custom-tab2 .mask').fadeIn();
					},
					success: function(data) {
						if(data=='ok') {
							$(form).get(0).reset();
							$(".form-register .alert").removeClass('hide');
							setTimeout(function() {
								$(".form-register .alert").addClass('hide');
								$('#model_user').modal('hide');
							},1000);
						}
						else {
							alert('error');
						}
					},
					complete: function() {
						$('.custom-tab2 .mask').hide();
					},					
				});				
			}
		});	
	}	
	
	
	if($(".form-login").length) {

		var error1=$('.form-login #username').attr('data-error');
		var error2=$('.form-login #pass').attr('data-error');
		
		$(".form-login").validate({
			rules: {
				username: "required",
				pass: "required",					
			},
			messages: {
				username: error1,
				pass: error2,
			},
			highlight : function (element) {
				$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight : function (element) {
				$(element).closest('.form-group').removeClass('has-error');
			},
			submitHandler : function(form) {				
				$.ajax({
					url: './sources/ajax.php',
					type: 'post',
					data: $(form).serialize() + '&do=dang_nhap',
					//dataType: "json",
					beforeSend: function() {
						$('.custom-tab2 .mask').fadeIn();
					},
					success: function(data) {
						if(data=='ok') {
							$(form).get(0).reset();
							$(".form-login .alert.alert-success").removeClass('hide');
							setTimeout(function() {
								$(".form-login .alert").addClass('hide');
								$('#model_user').modal('hide');
								parent.window.location.reload(true);
							},1000);
						}
						else {
							$(".form-login .alert.alert-danger").removeClass('hide');
							setTimeout(function() {
								$(".form-login .alert.alert-danger").addClass('hide');
							},1000);
						}
						$('.custom-tab2 .mask').hide();
					}  				
				});				
			}
		});	
	}		
	
	$('.link_logout').on('click',function() {
		var token = $(this).attr('data-token');
		$.ajax({
			url: './sources/ajax.php',
			type: 'post',
			data: {'do':'dang_xuat'},
			success: function(data) {
				if(data=='ok') {
					parent.window.location.reload(true);
				}
			}  				
		});				
	})
	$('#check_search input').on('change',function() {
		
		// var myCheckboxes = new Array();
		//  myCheckboxes.push($(this).val());
		// $.ajax({
		// 		url: "./sources/ajax.php",
		// 		type: 'post',
		// 		data: $("#check_search").serialize() + "&do=tim_kiem",
		// 		success: function(data){
		// 			window.location=(data);
		// 		}
		// 	})

			
	})


			
});

function isValidEmailAddress(emailAddress) {
	var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
	return pattern.test(emailAddress);
};