class GamesController < ApplicationController
  before_action :set_game, only: :show

  def index
    @game = Game.where(slug: 'wow').first
  end

  def show
  end

  private

  def set_game
    @game = Game.find_by(slug: params[:id])
  end
end
