class RacesController < ApplicationController
  before_action :set_nav_variables

  def show
    @race = Race.includes(:game).find_by(slug: params[:id])
    @game = @race.game
  end
end
