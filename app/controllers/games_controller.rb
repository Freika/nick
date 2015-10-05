class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @game = Game.where(slug: 'wow').first
  end

  def show
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game, notice: 'Игра создана'
    else
      render action: 'new'
    end
  end

  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Игра обновлена'
    else
      render action: 'edit'
    end
  end

  def destroy
    @game.destroy
    redirect_to games_url
  end

  private

  def set_game
    @game = Game.friendly.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :slug, :content, :description, :name)
  end
end
