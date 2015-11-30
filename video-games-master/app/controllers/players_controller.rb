class PlayersController < ApplicationController
 
  def json
    players = Player.all
    render json: players
  end

end


