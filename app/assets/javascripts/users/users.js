
// header jQuery

$(function() {
  var $win = $(window),
      $header = $('header'),
      animationClass = 'is-animation';

  $win.on('load scroll', function() {
    var value = $(this).scrollTop();
    if ( value > 100 ) {
      $header.addClass(animationClass);
    } else {
      $header.removeClass(animationClass);
    }
  });
});

// flexslider

$(window).load(function() {
$('.flexslider').flexslider({
  fade: true,
  speed: 800 });
});

