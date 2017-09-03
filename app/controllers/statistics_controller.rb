class StatisticsController < ApplicationController
  before_action :set_nav_variables

  def index
    @wows = Statistic.sum(:wow)
    @samps = Statistic.sum(:samp)
    @gws = Statistic.sum(:gw)
    @total = @wows + @samps + @gws
  end
end
