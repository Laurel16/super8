var $ = require('jquery');
var jQueryBridget = require('jquery-bridget');
var Isotope = require('isotope-layout');
// make Isotope a jQuery plugin
jQueryBridget( 'isotope', Isotope, $ );
// now you can use $().isotope()


            function initHomeIsotope() {
               $(window).on('load', function(){
            //initialize isotope

                $("#home-container").isotope({

                });
              });
            }
export { initHomeIsotope };
