class Api::V1::Nicks::SampController < ApplicationController
  before_action :check_gender

  def create
    if Nickname::SAMP_RACES.include?(params[:race])
      nick = Nickname.generate_samp(params[:race], params[:sex])
      render json: nick, status: 200
    else
      render_500
    end
  end
end
