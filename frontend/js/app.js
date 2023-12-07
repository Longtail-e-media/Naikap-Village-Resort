// Burger menus
document.addEventListener("DOMContentLoaded", function () {
  // open
  const burger = document.querySelectorAll(".navbar-burger");
  const menu = document.querySelectorAll(".navbar-menu");

  if (burger.length && menu.length) {
    for (var i = 0; i < burger.length; i++) {
      burger[i].addEventListener("click", function () {
        for (var j = 0; j < menu.length; j++) {
          menu[j].classList.toggle("hidden");
        }
      });
    }
  }

  // close
  const close = document.querySelectorAll(".navbar-close");
  const backdrop = document.querySelectorAll(".navbar-backdrop");

  if (close.length) {
    for (var i = 0; i < close.length; i++) {
      close[i].addEventListener("click", function () {
        for (var j = 0; j < menu.length; j++) {
          menu[j].classList.toggle("hidden");
        }
      });
    }
  }

  if (backdrop.length) {
    for (var i = 0; i < backdrop.length; i++) {
      backdrop[i].addEventListener("click", function () {
        for (var j = 0; j < menu.length; j++) {
          menu[j].classList.toggle("hidden");
        }
      });
    }
  }
});

function handleNavLinkClick(link) {
  document.querySelectorAll("nav a").forEach((navLink) => {
    navLink.classList.remove("bg-[#6b7e42]");
  });

  link.classList.add("bg-[#6b7e42]");
}

$(window).on("load", function () {
  const navbar = document.querySelector("nav");
  const logo = document.querySelector(".logo");

  window.addEventListener("scroll", () => {
    if (window.scrollY > 0) {
      navbar.style.backgroundColor = "rgba(0, 0, 0, 0.25)";
      navbar.classList.add("backdrop-blur-md");
    } else {
      navbar.style.backgroundColor = "transparent";
      navbar.classList.remove("backdrop-blur-md");
    }
  });
  window.addEventListener("scroll", () => {
    if (window.scrollY > 0) {
      logo.classList.remove("grayscale");
      logo.style.transform = "scale(0.75)";
    } else {
      logo.classList.add("grayscale");
      logo.style.transform = "scale(1)";
    }
  });
});

// Hero Slider
const main_slider = $("#main-slider");
main_slider.owlCarousel({
  rtl: false,
  loop: true,
  nav: false,
  dots: false,
  autoplay: true,
  autoplayTimeout: 3000,
  autoplayHoverPause: false,
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
  autoplayTimeout: 3000,
  autoplayHoverPause: false,
  responsive: {
    0: {
      items: 2,
    },
  },
});

// Custom Navigation Events
$(".customNextBtn").click(function () {
  main_slider.trigger("next.owl.carousel");
});
$(".customPrevBtn").click(function () {
  main_slider.trigger("prev.owl.carousel");
});

$(".customNextBtn").click(function () {
  slider_thumb.trigger("next.owl.carousel");
});
$(".customPrevBtn").click(function () {
  slider_thumb.trigger("prev.owl.carousel");
});
