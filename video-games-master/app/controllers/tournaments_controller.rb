class TournamentsController < ApplicationController

  def index
    render(:index)
  end
  
  def json
    tournaments = Tournament.all
    render json: tournaments
  end  

  def create
    render(:index)
  end

  def json_create
    tournament = Tournament.create tournament_params
    render status: 201, json: tournament
  end
  
  private
    def tournament_params
      params.require(:tournament).permit(:name)
    end
end
