$(function(){
  $('.contents-header').slick({
    autoplay: true,
    dots: true,
    autoplaySpeed: 4000,
    fade: true,
    cssEase: 'linear',
    infinite: true,
    responsive: [{
      breakpoint: 768,
           settings: {
               fade: false,
               slidesToShow: 1,
               slidesToScroll: 1,
      }
    }
  ]});
});
$(function() {
  $('.mid-wrapper__images').slick({
		infinite: true,
		dots:false,
		slidesToShow: 4,
		slidesToScroll: 4,
		autoplay: true,
		autoplaySpeed: 4000,
		responsive: [{
			breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
					}
			},{
				breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1,
					}
				}
			]
   });
});
