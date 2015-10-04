class RacesController < ApplicationController
  before_action :set_race, only: [:show, :edit, :update, :destroy]

  def index
    @races = Race.all
  end

  def show
    @game = @race.game
  end

  def new
    @race = Race.new
  end

  def edit
  end

  def create
    @race = Race.new(race_params)
    if @race.save
      redirect_to @race, notice: 'Раса создана'
    else
      render action: 'new'
    end
  end

  def update
    if @race.update(race_params)
      redirect_to @race, notice: 'Раса обновлена'
    else
      render action: 'edit'
    end
  end

  def destroy
    @race.destroy
    redirect_to races_url
  end

  private

  def set_race
    @race = Race.friendly.find(params[:id])
  end

  def race_params
    params.require(:race).permit(:title, :slug, :content, :description, :name)
  end
end
