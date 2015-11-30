function buildTourneyHtml (tournament) {
  return '\
    <li>\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
      <button class="btn btn-info" data-tournament="' + tournament.id + '" data-hook="player-select">SELECT PLAYER</button>\
      <button class="btn btn-danger" data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id + '">DELETE</button>\
      <div class="js-player-section" data-tournament="' + tournament.id + '"></div>\
    </li>\
  '
}
