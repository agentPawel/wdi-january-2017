$(function() {

  $('#load-monsters').on('click', function() {
    $.ajax({
      crossDomain: false, // Needed for dataType because monsters-api is not the same origin
      url: 'http://monsters-api.herokuapp.com/monsters',
      data: { limit: 5 },
      dataType: 'html',
      method: 'GET'
    }).done(function(data) {
      $('body').append(data);
    }).fail(function(jqXHR, textStatus, errorThrown){
      console.log('Ajax Request Failed!');
      console.log(jqXHR);
    }).always(function(){
      console.log('Ajax Request Sent!');
    });

    console.log('Next Line after .ajax')
  });
});

  $('#add-monster').on('click', function() {
    $.ajax({
      // crossDomain: false, // Needed for dataType because monsters-api is not the same origin
      url: 'http://monsters-api.herokuapp.com/monsters',
      data: {
        monster: {
          name: 'Frankenstein',
          home: 'Transylvania',
          creepiness: 15
        }
      },
      method: 'POST'
    }).done(function(data) {
      $('body').append('SUCCESS: Monster Created!');
    }).fail(function(){
      $('body').append('ERROR: Could not create a monster.');
    }).always(function(){
      $('body').append('Add operation complete.');
    });
});
