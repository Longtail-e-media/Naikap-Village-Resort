document.addEventListener("DOMContentLoaded", function () {
  new Glide(".glide", {
    type: "carousel",
    startAt: 0,
    perView: 1,
    focusAt: "center",
    autoplay: 5000,
    hoverpause: true,
    gap: 0,
    breakpoints: {
      768: {
        perView: 1,
      },
      1024: {
        perView: 1,
      },
    },
  }).mount();
});
