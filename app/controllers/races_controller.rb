class RacesController < ApplicationController
  def show
    @race = Race.includes(:game).find_by(slug: params[:id])
    @game = @race.game
  end
end
