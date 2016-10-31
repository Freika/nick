class GamesController < ApplicationController
  def index
    @game = Game.find_by(slug: 'wow')
  end

  def show
    @game = Game.find_by(slug: params[:id])
  end
end
