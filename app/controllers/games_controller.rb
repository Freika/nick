class GamesController < ApplicationController
  before_action :set_game, only: :show

  def index
    @game = Game.where(slug: 'wow').first
  end

  def show
  end

  private

  def set_game
    @game = Game.friendly.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :slug, :content, :description, :name)
  end
end
