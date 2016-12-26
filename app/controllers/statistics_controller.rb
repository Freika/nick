class StatisticsController < ApplicationController
  before_action :set_nav_variables

  def index
    @wows = Statistic.sum(:wow)
    @samps = Statistic.sum(:samp)
    @gws = Statistic.sum(:gw)
    @minecrafts = Statistic.sum(:minecraft)
    @total = @wows + @samps + @gws + @minecrafts
  end
end
