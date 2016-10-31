class Api::V1::Nicks::MinecraftController < ApplicationController
  before_action :check_gender

  def create
    if params[:race] == 'steve'
      nick = Nickname.generate_minecraft(params[:race], 'male')
      render json: nick, status: 200
    else
      render_500
    end
  end

  def create_skin
    if params[:race] == 'player'
      nick = Nickname.generate_minecraft_skin(params[:race], 'male')
      render json: nick, status: 200
    else
      render_500
    end
  end
end
