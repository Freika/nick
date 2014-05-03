class StatisticsController < InheritedResources::Base
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

end
