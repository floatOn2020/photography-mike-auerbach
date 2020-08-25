const indicators = document.querySelector(".carousel");
const carouselInner = document.querySelector(".carousel-inner");
const controls = document.querySelector(".controls");
const mobileViews = document.querySelectorAll(".mobile-img-show");

const toggleOn =
  window.matchMedia("(max-width: 598px)").matches && indicators;

const toggleCarousel = () => {
  if (toggleOn) {
    indicators.classList.add("hide");
    carouselInner.classList.add("hide");
    controls.classList.add("hide");
    mobileViews.forEach((img) => {
      img.classList.remove("hide");
    });
  } else {
    indicators.classList.remove("hide");
    carouselInner.classList.remove("hide");
    controls.classList.remove("hide");
    mobileViews.forEach((img) => {
      img.classList.add("hide");
    });
  }
};

export { toggleCarousel };
