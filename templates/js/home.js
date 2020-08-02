

function ResizeWindows() {
	var Xwidth=$(window).width();
	var Yheight=$(window).height();
	if($('.custom-tintuc').length) {
		var h = 0;
		$('.custom-tintuc .bao-tintuc').css('height','');
		$('.custom-tintuc').each(function() {
			var i = $(this).find('.bao-tintuc').innerHeight();
			if(i>h) h=i;
		});
		$('.bao-tintuc').css('height',h);
	}
	
	if($('#adv-fixed-left').length && Xwidth>1200) {
		MainContentW = 1000;LeftBannerW = 170;RightBannerW = 170;LeftAdjust = 15;RightAdjust = 15;TopAdjust = 10;
		ShowAdDiv();
	}
	
}

function FloatTopDiv() {
	startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80;
	startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80;
	var d = document;
	function ml(id) {
		var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
		el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};
		el.x = startRX;
		el.y = startRY;
		return el;
	}

	function m2(id) {
		var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
		e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};
		e2.x = startLX;
		e2.y = startLY;
		return e2;
	}
	window.stayTopLeft=function() {
		if (document.documentElement && document.documentElement.scrollTop)
			var pY =  document.documentElement.scrollTop;
		else if (document.body)
			var pY =  document.body.scrollTop;
		if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;};
		ftlObj.y += (pY+startRY-ftlObj.y)/16;
		ftlObj.sP(ftlObj.x, ftlObj.y);
		ftlObj2.y += (pY+startLY-ftlObj2.y)/16;
		ftlObj2.sP(ftlObj2.x, ftlObj2.y);
		setTimeout("stayTopLeft()", 1);
	}
	ftlObj = ml("adv-fixed-right");
	//stayTopLeft();
	ftlObj2 = m2("adv-fixed-left");
	stayTopLeft();
}
function ShowAdDiv() {
	var objAdDivRight = document.getElementById("adv-fixed-right");
	var objAdDivLeft = document.getElementById("adv-fixed-left");       
	if (document.body.clientWidth < 1000) {
		objAdDivRight.style.display = "none";
		objAdDivLeft.style.display = "none";
	}
	else {
		objAdDivRight.style.display = "block";
		objAdDivLeft.style.display = "block";
		FloatTopDiv();
	}
}

$(document).ready(function() {
	
	// new WOW().init();
	AOS.init({
	    easing: 'ease-in-out-sine',
	    once: true,
	    disable: 'mobile'
	});

	$('[data-toggle="tooltip"]').tooltip()
	
	$(window).on('resize load',function() {
		ResizeWindows();	
	});
	


	
	if($('.owl-partner').length) {
		$('.owl-partner').owlCarousel({
			items : 6,
			itemsDesktop : [1199, 6],
			itemsDesktopSmall : [979, 3],
			itemsTablet : [768, 2],
			itemsTabletSmall : false,
			itemsMobile : [479, 2],
			navigation : false,
			navigationText : ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			rewindNav:true,
			autoHeight : false,
			autoPlay:true,
			afterAction: function(){
			
			}
		});	
	}
	
	
	if($('.slide').length) {
		var lsjQuery = jQuery;
		var curSkin = 'v5';	
		lsjQuery(document).ready(function() {
			if (typeof lsjQuery.fn.layerSlider == "undefined") {
				lsShowNotice('layerslider_1', 'jquery');
			} else {
				lsjQuery("#layerslider_1").layerSlider({
					startInViewport: false,
					pauseOnHover: false,
					forceLoopNum: false,
					autoPlayVideos: false,
					skinsPath: './templates/extra/layerslider/skins/',
					skin: 'v5',
					thumbnailNavigation: 'hover'
				})
			}
		});		
		
	}
	
	if($('.owl-product').length) {
		$('.owl-product').owlCarousel({
			items : 4,
			itemsDesktop : [1199, 4],
			itemsDesktopSmall : [979, 3],
			itemsTablet : [768, 2],
			itemsTabletSmall : false,
			itemsMobile : [479, 1],
			navigation : true,
			navigationText : ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:false,
			rewindNav:true,
			autoHeight : false,
			autoPlay:true,
			afterAction: function(){
			
			}
		});	
	}	
		
	if($('#owl-custom').length) {
		$('#owl-custom').owlCarousel({
			items : 1,
			itemsDesktop : [1199, 1],
			itemsDesktopSmall : [979, 1],
			itemsTablet : [768, 1],
			itemsTabletSmall : false,
			itemsMobile : [479, 1],
			navigation : false,
			navigationText : ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
			pagination:true,
			rewindNav:true,
			autoHeight : false,
			autoPlay:true,
			afterAction: function(){
			
			}
		});	
	}

			
})
