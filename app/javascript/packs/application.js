require("@rails/ujs").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";
import { cardsHover } from "./cards-hover.js";
import { currentPageLink } from "./current-page-link.js";
import { toggleMenu } from "./toggle-mobile-menu.js";
import { toggleCarousel } from "./toggle-carousel.js";

// import { initAutocomplete } from '../plugins/init_mapbox';

cardsHover();
currentPageLink();
toggleMenu();
toggleCarousel();

window.onorientationchange = function () {
  var orientation = window.orientation;
  switch (orientation) {
    case 0:
    case 90:
    case -90:
      window.location.reload();
      break;
  }
};
