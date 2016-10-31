class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :set_nav_variables

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge(options)
  end

  def set_nav_variables
    @gw2_races = Race.includes(:translations)
                     .where(game: Game.find_by(slug: 'gw2'))
    @samp_races = Race.includes(:translations)
                      .where(game: Game.find_by(slug: 'samp'))
    @minecraft_races= Race.includes(:translations)
                          .where(game: Game.find_by(slug: 'minecraft'))
  end

  protected

  def render_500
    render json: 'Обратитесь с правильными параметрами', status: 500
  end

  def check_gender
    render_500 unless Nickname::SEX.include?(params[:sex])
  end
end
