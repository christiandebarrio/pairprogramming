function selectPlayer(event) {
  event.preventDefault;

  var tournamentId = $(event.currentTarget).attr('data-tournament');

  var request = $.get('/api/players.json')
  request.fail(showError)
  request.done(showPlayers)

  var $playerSection = $('.js-player-section[data-tournament = ' + tournamentId + ']')

  function showError (error) {
    console.error('Error fetching player list.', '\n' + error.responseText)
    var message = 'There was a problem fetching the list of players.'
    
    $playerSection.append(buildErrorHtml(message))
  }

  function showPlayers (players) {
    var html
    $('.js-player-section').empty();

    if (players.length === 0) {
      html = buildErrorHtml('Looks like there aren\'t any players yet.')
    } else {
      html = buildPlayerListHtml(players)
    }

    $playerSection.append(html)
  }
}