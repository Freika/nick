class StatisticsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def index
    @statistics = Statistic.all
  end

end
