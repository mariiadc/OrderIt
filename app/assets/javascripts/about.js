$(document).ready(function () {
  var previousScroll = 0;
  $(window).scroll(function () {
    var currentScroll = $(this).scrollTop();
    if (currentScroll < 100) {
      showToNav();
    } else if (currentScroll > 0 && currentScroll < $(document).height() - $(window).height()) {
      if (currentScroll > previousScroll) {
        hideNav();
      } else {
        showNav();
      }
      previousScroll = currentScroll;
    }
  });

  function hideNav() {
    $(".about").removeClass("is-visible").addClass("is-hidden");
  }

  function showNav() {
    $(".about").removeClass("is-hidden").addClass("is-visible").addClass("scrolling");
  }
});
