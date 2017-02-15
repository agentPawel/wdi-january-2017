// Global scope

$(document).ready(function() {
  // Function scope

  $('#box-maker').on('click', function() {
      var x = Math.ceil(Math.random() * 400),
          y = Math.ceil(Math.random() * 200),
          c = Math.ceil(Math.random() * 8);

      $('<div class="circle"></div>')
          .css({
              top: y,
              left: x,
              backgroundColor: colors[c]
          })
          .html(count++)
          .appendTo('#container');

      console.log('link was clicked');
  });

  $('#container').on('click', '.circle', function() {
    $(this).remove();
  });

  // These variable definitions will be hoisted to the top,
  //  AND they'll be closed over (a reference to them will be kept)
  //  in the 'click' event handler defined above.
  var count = 0,
      colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'yellow', 'chocolate'];
});
