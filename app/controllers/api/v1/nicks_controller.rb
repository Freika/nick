class Api::V1::NicksController < ApplicationController
  before_action :check_gender

  def wow
    if Nickname::WOW_RACES.include?(params[:race])
      nick = Nickname.generate_wow(params[:race], params[:sex])
      render json: nick, status: 200
    else
      render_500
    end
  end

  def gw
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

  def samp
    if Nickname::SAMP_RACES.include?(params[:race])
      nick = Nickname.generate_samp(params[:race], params[:sex])
      render json: nick, status: 200
    else
      render_500
    end
  end

  def minecraft
    if params[:race] == 'steve'
      nick = Nickname.generate_minecraft(params[:race], 'male')
      render json: nick, status: 200
    else
      render_500
    end
  end

  def minecraft_skin
    if params[:race] == 'player'
      nick = Nickname.generate_minecraft_skin(params[:race], 'male')
      render json: nick, status: 200
    else
      render_500
    end
  end

  def dota
    if params[:race] == 'crab'
      nick = Nickname.generate_dota(params[:race], 'male')
      render json: nick, status: 200
    else
      render_500
    end
  end

  private

  def check_gender
    render_500 unless Nickname::SEX.include?(params[:sex])
  end

  def render_500
    render json: 'Обратитесь с правильными параметрами', status: 500
  end
end
