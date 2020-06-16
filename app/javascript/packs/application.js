require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { cardsHover } from './cards-hover.js';
import { hoverHome } from './homepage-hover.js';

// import { initAutocomplete } from '../plugins/init_mapbox';


cardsHover();
hoverHome();

