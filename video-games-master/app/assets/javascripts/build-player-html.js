function buildPlayerHtml (player) {
  return '\
    <option value="'+ player.name +'">\
      ' + player.name + '\
    </option>\
  '
}