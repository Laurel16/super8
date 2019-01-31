function initPreloader() {
$(window).on('load', function(){// makes sure that all site is loaded
  $('#status').fadeOut('slow');
  $('#preloader').delay(350).fadeOut('slow');

});
}

export { initPreloader };

