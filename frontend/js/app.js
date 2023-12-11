// function setupNavbar() {
//   function initializeNavbar() {
//     // Burger menus
//     const burger = document.querySelectorAll(".navbar-burger");
//     const menu = document.querySelectorAll(".navbar-menu");

//     if (burger.length && menu.length) {
//       for (var i = 0; i < burger.length; i++) {
//         burger[i].addEventListener("click", function () {
//           for (var j = 0; j < menu.length; j++) {
//             menu[j].classList.toggle("hidden");
//           }
//         });
//       }
//     }

//     // close
//     const close = document.querySelectorAll(".navbar-close");
//     const backdrop = document.querySelectorAll(".navbar-backdrop");

//     if (close.length) {
//       for (var i = 0; i < close.length; i++) {
//         close[i].addEventListener("click", function () {
//           for (var j = 0; j < menu.length; j++) {
//             menu[j].classList.toggle("hidden");
//           }
//         });
//       }
//     }

//     if (backdrop.length) {
//       for (var i = 0; i < backdrop.length; i++) {
//         backdrop[i].addEventListener("click", function () {
//           for (var j = 0; j < menu.length; j++) {
//             menu[j].classList.toggle("hidden");
//           }
//         });
//       }
//     }
//   }

//   fetch("navbar.html")
//     .then((response) => response.text())
//     .then((html) => {
//       document.getElementById("navbar").innerHTML = html;
//       initializeNavbar();
//     });

//   fetch("footer.html")
//     .then((response) => response.text())
//     .then((html) => {
//       document.getElementById("footer").innerHTML = html;
//     });

//   $(window).on("load", function () {
//     function handleNavLinkClick(link) {
//       document.querySelectorAll("nav a").forEach((navLink) => {
//         navLink.classList.remove("bg-[#6b7e42]");
//       });

//       link.classList.add("bg-[#6b7e42]");
//     }

//     const navbar = document.querySelector("nav");
//     const logo = document.querySelector(".logo");

//     window.addEventListener("scroll", () => {
//       if (window.scrollY > 0) {
//         navbar.style.backgroundColor = "rgba(0, 0, 0, 0.25)";
//         navbar.classList.add("backdrop-blur-md");
//         logo.classList.remove("grayscale");
//         logo.style.transform = "scale(0.75)";
//       } else {
//         navbar.style.backgroundColor = "transparent";
//         navbar.classList.remove("backdrop-blur-md");
//         logo.classList.add("grayscale");
//         logo.style.transform = "scale(1)";
//       }
//     });
//   });
// }

// document.addEventListener("DOMContentLoaded", setupNavbar);

fetch("navbar.html")
  .then((response) => response.text())
  .then((html) => {
    document.getElementById("navbar").innerHTML = html;
    initializeNavbar();
  });

fetch("footer.html")
  .then((response) => response.text())
  .then((html) => {
    document.getElementById("footer").innerHTML = html;
  });

function initializeNavbar() {
  // Burger menus
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
}

$(window).on("load", function () {
  function handleNavLinkClick(link) {
    document.querySelectorAll("nav a").forEach((navLink) => {
      navLink.classList.remove("bg-[#6b7e42]");
    });

    link.classList.add("bg-[#6b7e42]");
  }

  const navbar = document.querySelector("nav");
  const logo = document.querySelector(".logo");

  window.addEventListener("scroll", () => {
    if (window.scrollY > 0) {
      navbar.classList.add("backdrop-blur-sm");
    } else {
      navbar.classList.remove("backdrop-blur-sm");
    }
  });

  window.addEventListener("scroll", () => {
    if (window.scrollY > 0) {
      // logo.classList.remove("grayscale");
      logo.style.backgroundColor = "transparent";
      logo.style.transform = "scale(0.75)";
    } else {
      logo.style.backgroundColor = "#f5f5dc";
      // logo.classList.add("grayscale");
      logo.style.transform = "scale(1)";
    }
  });
});

// Rooms carousel
$(document).ready(function () {
  $(".owl-carousel").owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    autoplayTimeout: 3000,
    autoplayHoverPause: true,
  });

  lightbox.option({
    resizeDuration: 200,
    wrapAround: true,
  });
});
