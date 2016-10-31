class Api::V1::Nicks::WowController < ApplicationController
  before_action :check_gender

  def create
    if Nickname::WOW_RACES.include?(params[:race])
      nick = Nickname.generate_wow(params[:race], params[:sex])
      render json: nick, status: 200
    else
      render_500
    end
  end
end
