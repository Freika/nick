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
    @race = Race.friendly.find(params[:id])
  end

  def race_params
    params.require(:race).permit(:title, :slug, :content, :description, :name)
  end
end
