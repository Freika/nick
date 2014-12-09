class RacesController < ApplicationController
  before_action :set_race, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :create, :new, :destroy]

  def index
    @races = Race.all
  end

  def show
  end

  def new
    @race = Race.new
  end

  def edit
  end

  def create
    @race = Race.new(race_params)

    respond_to do |format|
      if @race.save
        format.html { redirect_to @race, notice: 'Race was successfully created.' }
        format.json { render action: 'show', status: :created, location: @race }
      else
        format.html { render action: 'new' }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @race.update(race_params)
        format.html { redirect_to @race, notice: 'Race was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @race.destroy
    respond_to do |format|
      format.html { redirect_to races_url }
      format.json { head :no_content }
    end
  end

  private
    def set_race
      @race = Race.friendly.find(params[:id])
    end

    def race_params
      params.require(:race).permit(:title, :slug, :content, :description, :name)
    end
end
