$(document).ready(function() {
  $('#circle').on('click', function() {

    if($('#circle').hasClass('back')) {
      $(this).removeClass('back')
    }

    $(this).addClass('click');
    $('#circle').css('cursor', 'default');

    setTimeout(function() {
      $('.bar').css('opacity','0');
    }, 250)

    setTimeout(function() {
      $('#menu').css('display','block');
    }, 300)
  });

  $('#back').on('click', function() {
    $('#circle').removeClass('click');
    $('#circle').addClass('back');
    $('#menu').css('display', 'none');
    $('#circle').css('cursor', 'pointer');

    setTimeout(function() {
      $('.bar').css('opacity', '1');
    }, 100)
  });
});
