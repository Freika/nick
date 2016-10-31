class RacesController < ApplicationController
  before_action :set_race, only: :show

  def index
    @races = Race.all
  end

  def show
    @game = @race.game
  end

  private

  def set_race
    @race = Race.find_by(slug: params[:id])
  end
end
