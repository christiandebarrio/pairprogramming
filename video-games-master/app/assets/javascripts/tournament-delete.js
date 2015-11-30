function deleteTournament (event) {
  event.preventDefault;
  var tournamentId = $(event.currentTarget).val();

  var $formAlerts = $('[data-hook~=form-alerts]')
  var request = $.ajax({
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
      });

  request.done(respondeDeleteTournament);
  request.fail(showError);

  function showError (error) {
    console.log('Errrrorororororo')
  //   console.error('Error deleting tournament.', '\n' + error.responseText)
  //   var message = 'There was a problem deleting the tournament.'
  //   $('.formAlerts').prepend(buildErrorHtml(message))
  // }
  }

  function respondeDeleteTournament (response, status, jsWraperResponse) {
    if(jsWraperResponse.status !== 204) {
      message = 'Your API didn\'t send a 204 status code!'
      $formAlerts.prepend(buildErrorHtml(message))
    } else {
      
      tournamentsIndex();
    }
  }


}