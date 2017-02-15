$(function() {
  $('#click-bait').on('click', function(eventObject) {
    eventObject.preventDefault();
    window.alert('#click-bait was clicked!');
  });

  function secondLevelEventHandler(eventObject) {
    eventObject.stopPropagation();
    window.alert('#second-level was clicked!');
  }

  $('#second-level').on('click', secondLevelEventHandler);

  var firstLevelEventHandler = function() {
    window.alert('#first-level was clicked!');
  }

  $('#first-level').on('click', firstLevelEventHandler);
});

// $(document).on('ready', function() {
//
// });

// $(document).ready(function() {
//
// });
