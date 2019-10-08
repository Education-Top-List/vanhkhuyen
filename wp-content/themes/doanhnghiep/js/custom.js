jQuery(document).ready(function(){
				// SCROLL TO DIV
				jQuery(window).scroll(function(){
					if(jQuery(this).scrollTop()>500){
						jQuery('.scrolltop').addClass('go_scrolltop');
					}
					else{
						jQuery('.scrolltop').removeClass('go_scrolltop');
					}
				});
				jQuery('.scrolltop').click(function (){
					jQuery('html, body').animate({
						scrollTop: jQuery("html").offset().top
					}, 1000);
				}); 

		// STICKY NAVBAR
		// var sticky = document.querySelector('.sticky');
		// if (sticky.style.position !== 'sticky') {
		// 	var stickyTop = sticky.offsetTop;
		// 	document.addEventListener('scroll', function () {
		// 		window.scrollY >= stickyTop ?
		// 		sticky.classList.add('fixed_menu') :
		// 		sticky.classList.remove('fixed_menu');
		// 	});
		// }
		// MENU MOBILE
		jQuery(".ham1").click(function(){
			jQuery("#menu_mobile_full").addClass('menu_show').toggleClass('toggle_menu_mobile');
  			jQuery(this).attr('class', function(index, attr){
   				 return attr == 'active ' ? null : 'active';
			});;
			jQuery('.bg_opacity').show();
			jQuery('.logo_dark , .logo_light').toggle();

		});
		jQuery('.bg_opacity').click(function(){
			jQuery("#menu_mobile_full").animate({left: "-340px"},500).removeClass('menu_show');
			jQuery("#page_wrapper").removeClass('page_wrapper_active');
			jQuery('.close_menu').hide();
			jQuery(this).hide();
			jQuery('.icon_mobile_click').fadeIn(300);
		});
		jQuery("#menu_mobile_full ul li a").click(function(){
			jQuery(".icon_mobile_click").fadeIn(300);
			jQuery("#page_wrapper").removeClass('page_wrapper_active');
		});
		jQuery('.mobile-menu ul.menu').children().has('ul.sub-menu').click(function(){
			jQuery(this).children('ul').slideToggle();
			jQuery(this).siblings().has('ul.sub-menu').find('ul.sub-menu').slideUp();
		}).children('ul').children().click(function(event){event.stopPropagation()});
		jQuery('.mobile-menu ul.menu').children().find('ul.sub-menu').children().has('ul.sub-menu').click(function(){
			jQuery(this).find('ul.sub-menu').slideToggle();
		});
		jQuery('.mobile-menu ul.menu li').has('ul.sub-menu').click(function(event){
			jQuery(this).toggleClass('editBefore_mobile');
		});
		jQuery('.mobile-menu ul.menu').children().has('ul.sub-menu').addClass('menu-item-has-children');
		jQuery('.mobile-menu ul.menu li').click(function(){
			$(this).addClass('active').siblings().removeClass('active, editBefore_mobile');
		});
		
// external JS: masonry.pkgd.js

var $grid = $('.grid').masonry({
	itemSelector: '.grid-item',
	percentPosition: true,
	columnWidth: '.grid-sizer',

});

// fancybox
jQuery('.fancybox').fancybox({
	buttons : [ 
	'slideShow',
	'share',
	'zoom',
	'fullScreen',
	'close'
	],
	thumbs : {
		autoStart : true
	}
});



});

$(window).load(function(){
	$('#loader').slideUp(1200);
});

document.onreadystatechange = function(e)
{
	if(document.readyState=="interactive")
	{
		var all = document.getElementsByTagName("*");
		for (var i=0, max=all.length; i < max; i++) 
		{
			set_ele(all[i]);
		}
	}
}

function check_element(ele)
{
	var all = document.getElementsByTagName("*");
	var totalele=all.length;
	var per_inc=100/all.length;
	if($(ele).on())
	{
		var prog_width=per_inc+Number(document.getElementById("progress_width").value);
		document.getElementById("progress_width").value=prog_width;
		$("#bar1").animate({width:prog_width+"%"},10,function(){
			if(document.getElementById("bar1").style.width=="100%")
			{
				$(".progress").fadeOut("slow");
			}			
		});
	}
	else	
	{
		set_ele(ele);
	}
}

function set_ele(set_element)
{
	check_element(set_element);
}