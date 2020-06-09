require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { hoverHome } from './homepage-hover.js';
import { hoverLogo } from './logo-hover.js';
import { carouselControl } from './carousel-control.js';

// import { initAutocomplete } from '../plugins/init_mapbox';


hoverHome();
hoverLogo();
carouselControl();
