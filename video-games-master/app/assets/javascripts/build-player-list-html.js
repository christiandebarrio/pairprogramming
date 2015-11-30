function buildPlayerListHtml (players) {
  function buildItemHtml (previous, player) {
    return previous + buildPlayerHtml(player)
  }

  var listItems = players.reduce(buildItemHtml, '')

  return '\
    <select data-hook="player-list">\
      ' + listItems + '\
    </select>\
  '
}