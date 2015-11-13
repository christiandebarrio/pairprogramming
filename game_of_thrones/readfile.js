var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log("Title: " + episodes[0].title + "  Episode #:" + episodes[0].episode_number + "\r\n" +
      episodes[0].description + "\r\n" +
      "Rating: " + episodes[0].rating + " " + ratingPicture(episodes[0].rating) + "\r\n");

    function ratingPicture(episode) {
      var points = episode;
      var ratingstar = "";
      for(i = 1; i < points; i++) {
        ratingstar += "*"
      }
      return ratingstar
    }

}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);