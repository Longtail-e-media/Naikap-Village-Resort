$(document).ready(function () {
  $("[data-fancybox]").fancybox({
    loop: true,
    infobar: false,
    buttons: ["slideShow", "fullScreen", "thumbs", "close"],
  });

  $(".owl-carousel").owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    autoplayTimeout: 3000,
    autoplayHoverPause: true,
  });
});
