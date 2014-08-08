$(document).ready(function(){

	/* Active Class Navbar on Click */
	var active = $('.navbar-nav > li.active > a').attr('class');
	$('.navbar-nav > li > a').on('click', function(){
		$('.navbar-nav > li').removeClass('active');
		//var active = $(this).attr('class');
    	$(this).parent().addClass('active');  
	});

	/* Scrolling */
	$('ul.navbar-nav > li > a').click(function(){
        $('html, body').animate({
            scrollTop: jQuery( $(this).attr('href') ).offset().top - 60
        }, 1000);
        return false;
    });
    $('.navbar-brand, .footer-menu > li > a, .icon-home').click(function(){
        $('html, body').animate({
            scrollTop: jQuery( $(this).attr('href') ).offset().top - 60
        }, 1000);
        return false;
    });

     $('.scroll-ref > a').click(function(){
        $('html, body').animate({
            scrollTop: jQuery( $(this).attr('href') ).offset().top - 60
        }, 1000);
        return false;
    });

	/* Show Search Box on Click */
	var searchBox = $('.star-search');
	$('#search').on('click', function(){
		$(this).toggleClass('search-active');
		searchBox.toggleClass('star-search-show');
	});

	var width = $(window).width();
	if(width > 767){
		/* Hide Search Box on Mouseleave */
		$(".star-search").mouseleave(function(){
	    	$("#search").toggleClass('search-active');
	   		searchBox.toggleClass('star-search-show');
		});
	}

	/* Carousel Slider */
	$('#theoverview').carousel({
		interval: false
	});

	$('#overviewslide').carousel({
		interval: 4500
	});

	$('#testimonial').carousel({
		interval: 7500
	});

	/* Closing nav-collapse when click menu */
	$('.navbar-collapse > .nav.navbar-nav > li > a').on('click',function(){
		$('.navbar-toggle').addClass('collapsed');
		$('.navbar-collapse').removeClass('in');
		$('.navbar-collapse').addClass('collapse')
		$('.navbar-collapse').attr('style','height:1px');
	});

	/* Maps */
	/*$("#map").gmap3({
        map: {
            options: {
              center: [-7.866315,110.389574],
              zoom: 10,
              scrollwheel: false
            }  
         },
        marker:{
            latLng: [-7.866315,110.389574],
            options: {
             icon: new google.maps.MarkerImage(
               "https://dl.dropboxusercontent.com/u/29545616/Preview/location.png",
               new google.maps.Size(48, 48, "px", "px")
             )
            }
         }
    });*/

    /* Toggle Map */	
	/*var mapContainer = $('.mapcontainer');
	$('#openmap').on('click', function(){
		$(this).toggleClass('closemap');
		$('#map').toggleClass('showMap');
		mapContainer.toggleClass('hidecontainer');
	});*/

});