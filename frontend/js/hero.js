const main_slider = $("#main-slider");
main_slider.owlCarousel({
  rtl: false,
  loop: true,
  nav: false,
  dots: false,
  autoplay: true,
  autoplayTimeout: 5000,
  autoplaySpeed: 1000,
  autoplayHoverPause: false,
  animateOut: "fadeOut",
  responsive: {
    0: {
      items: 1,
    },
  },
});

const slider_thumb = $("#slider-thumb");
slider_thumb.owlCarousel({
  rtl: false,
  loop: true,
  margin: 12,
  nav: false,
  dots: false,
  autoplay: true,
  autoplayTimeout: 5000,
  autoplaySpeed: 1000,
  autoplayHoverPause: false,
  responsive: {
    0: {
      items: 2,
    },
  },
});

$(".customNextBtn").click(function () {
  main_slider.trigger("next.owl.carousel");
  slider_thumb.trigger("next.owl.carousel");
});

$(".customPrevBtn").click(function () {
  main_slider.trigger("prev.owl.carousel");
  slider_thumb.trigger("prev.owl.carousel");
});

main_slider.on("translate.owl.carousel", function (event) {
  $(".owl-item.active", main_slider)
    .find("[data-animation]")
    .each(function () {
      $(this).removeClass("animated " + $(this).data("animation"));
    });
});

main_slider.on("translated.owl.carousel", function (event) {
  $(".owl-item.active", main_slider)
    .find("[data-animation]")
    .each(function () {
      $(this).addClass("animated " + $(this).data("animation"));
    });
});
