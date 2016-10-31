class GamesController < ApplicationController
  def index
    @game = Game.where(slug: 'wow').first
  end

  def show
    @game = Game.find_by(slug: params[:id])
  end
end
