require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { cardsHover } from './cards-hover.js';
import { currentPageLink } from './current-page-link.js';

// import { initAutocomplete } from '../plugins/init_mapbox';


cardsHover();
currentPageLink();
