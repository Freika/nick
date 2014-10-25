class StatisticsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def index
    @statistics = Statistic.all
  end

  def new
    @statistic = Statistic.new
  end

  def graph
    @wows = Statistic.where(game: 'wow')
    @samps = Statistic.where(game: 'samp')
    @gws = Statistic.where(game: 'gw2')
    @minecrafts = Statistic.where(game: 'minecraft')
    @total = Statistic.count
  end

end
