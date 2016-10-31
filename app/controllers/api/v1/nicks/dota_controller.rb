class Api::V1::Nicks::DotaController < ApplicationController
  before_action :check_gender

  def create
    if params[:race] == 'crab'
      nick = Nickname.generate_dota(params[:race], 'male')
      render json: nick, status: 200
    else
      render_500
    end
  end
end
