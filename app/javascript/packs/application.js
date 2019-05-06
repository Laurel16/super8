import "bootstrap";




import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();


import { initPreloader } from '../components/preloader';
initPreloader();

import { initIsotope } from '../components/isotope';
initIsotope();

import { initHomeIsotope } from '../components/isotope_home';
initHomeIsotope();


import ReactOnRails from 'react-on-rails';
import Search from '../components/Search';

ReactOnRails.register({
  Search

});


