/* Portfolio */


var $ = require('jquery');
var jQueryBridget = require('jquery-bridget');
var Isotope = require('isotope-layout');
// make Isotope a jQuery plugin
jQueryBridget( 'isotope', Isotope, $ );
// now you can use $().isotope()


            function initIsotope() {
               /* Portfolio */

               $(window).on('load', function(){
            //initialize isotope



                $('#isotope-container').isotope({
                getSortData: {
                age : function(elem) { // function
                return parseInt(elem.dataset.age, 10);
                }

                }
                });

                //filter items on button click
              var filters = {};

              $(".filters").on('click', 'button', function(event)

             {

              var $button = $(event.currentTarget);
              var $buttonGroup = $button.parents('.button-group');
              var filterGroup = $buttonGroup.attr('data-filter-group');
              filters[filterGroup] = $button.attr('data-filter');
              var filterValue = concatValues(filters);

                  // get filter value
                  //
            //var filterValue = $(this).attr('data-filter');
                  // filter portfolio
                  //
                  //


            $("#isotope-container").isotope({
              filter: filterValue
              });

            /*$("#isotope-container").isotope({
              sortBy: 'age',
              sortAscending: false

            });*/

          $("#isotope-container").isotope('updateSortData').isotope();

            $('.button-group').each( function( i, buttonGroup ) {
 var $buttonGroup = $( buttonGroup );
  $buttonGroup.on( 'click', 'button', function( event ) {
    $buttonGroup.find('.active').removeClass('active');
    var $button = $( event.currentTarget );
   $button.addClass('active');
  });
});

              // active button
            /*$('.filters').find('.active').removeClass('active');
            $(this).addClass('active');*/



              //$("#isoptope-container").isotope('updateSortData').isotope();
});

 });

function concatValues( obj ) {
  var value = '';
  for ( var prop in obj ) {
    value += obj[ prop ];
  }
  return value;
}


}

export { initIsotope };

