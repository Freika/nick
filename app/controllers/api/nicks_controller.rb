module Api
  class NicksController < ApplicationController


    def wow
      if Nickname::WOW_RACES.include?(params[:race]) && Nickname::SEX.include?(params[:sex])
        @nick = Nickname.generate_wow(params[:race], params[:sex])
        render json: @nick.name, status: 200
      else
        render json: 'Обратитесь с правильными параметрами', status: 500
      end
    end

    def gw
      if params[:race] == 'asura' && Nickname::SEX.include?(params[:sex])
        @nick = Nickname.generate_asura(params[:race], params[:sex])
        render json: @nick.name, status: 200
      elsif params[:race] == 'sylvari' && Nickname::SEX.include?(params[:sex])
        @nick = Nickname.generate_asura(params[:race], params[:sex])
        render json: @nick.name, status: 200
      elsif Nickname::GW_RACES.include?(params[:race]) && Nickname::SEX.include?(params[:sex])
        @nick = Nickname.generate_gw(params[:race], params[:sex])
        render json: @nick.name, status: 200
      else
        render json: 'Обратитесь с правильными параметрами', status: 500
      end
    end

    def samp
      if Nickname::SAMP_RACES.include?(params[:race]) && Nickname::SEX.include?(params[:sex])
        @nick = Nickname.generate_samp(params[:race], params[:sex])
        render json: @nick.name, status: 200
      else
        render json: 'Обратитесь с правильными параметрами', status: 500
      end
    end


    private
      def set_nick
        nick = Nick.find(params[:id])
      end

      def nick_params
        params.require(:nick).permit(:race, :sex)
      end
  end
end
