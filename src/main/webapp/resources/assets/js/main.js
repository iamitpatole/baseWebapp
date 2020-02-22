
jQuery(document).ready(function($) {


	jQuery('.selectpicker').selectpicker;

	$('#menuToggle').on('click', function(event) {
		$('body').toggleClass('open');
	});

	$('.search-trigger').on('click', function(event) {
		event.preventDefault();
		event.stopPropagation();
		$('.search-trigger').parent('.header-left').addClass('open');
	});

	$('.search-close').on('click', function(event) {
		event.preventDefault();
		event.stopPropagation();
		$('.search-trigger').parent('.header-left').removeClass('open');
	});

	 $('.user-area').on('click', function(event) {
		 console.log("clicked");
	 	event.preventDefault();
	 	event.stopPropagation();
	 	$('.user-menu').parent().removeClass('open');
	 	$('.user-menu').parent().toggleClass('open');
	 });

});