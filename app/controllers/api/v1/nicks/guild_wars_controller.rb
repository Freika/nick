class Api::V1::Nicks::GuildWarsController < ApplicationController
  before_action :check_gender

  def create
    case params[:race]
    when 'asura'
      nick = Nickname.generate_gw_asura(params[:race], params[:sex])
      render json: nick, status: 200
    when 'sylvari'
      nick = Nickname.generate_gw_sylvari(params[:race], params[:sex])
      render json: nick, status: 200
    when *Nickname::GW_RACES
      nick = Nickname.generate_gw(params[:race], params[:sex])
      render json: nick, status: 200
    else
      render_500
    end
  end
end
