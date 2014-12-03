class StatisticsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def index
    @statistics = Statistic.all
  end

  def graph
    @wows = Statistic.last.wow
    @samps = Statistic.last.samp
    @gws = Statistic.last.gw
    @minecrafts = Statistic.last.minecraft
    @total = @wows + @samps + @gws + @minecrafts
  end

end
