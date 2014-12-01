module API
  module V1
    class NicksController < ApplicationController


      def wow
        if Nickname::WOW_RACES.include?(params[:race]) && Nickname::SEX.include?(params[:sex])
          @nick = Nickname.generate_wow(params[:race], params[:sex])
          render json: @nick, status: 200
        else
          render json: 'Обратитесь с правильными параметрами', status: 500
        end
      end

      def gw
        if params[:race] == 'asura' && Nickname::SEX.include?(params[:sex])
          @nick = Nickname.generate_gw_asura(params[:race], params[:sex])
          render json: @nick, status: 200
        elsif params[:race] == 'sylvari' && Nickname::SEX.include?(params[:sex])
          @nick = Nickname.generate_gw_sylvari(params[:race], params[:sex])
          render json: @nick, status: 200
        elsif Nickname::GW_RACES.include?(params[:race]) && Nickname::SEX.include?(params[:sex])
          @nick = Nickname.generate_gw(params[:race], params[:sex])
          render json: @nick, status: 200
        else
          render json: 'Обратитесь с правильными параметрами', status: 500
        end
      end

      def samp
        if Nickname::SAMP_RACES.include?(params[:race]) && Nickname::SEX.include?(params[:sex])
          @nick = Nickname.generate_samp(params[:race], params[:sex])
          render json: @nick, status: 200
        else
          render json: 'Обратитесь с правильными параметрами', status: 500
        end
      end

      def minecraft
        if params[:race] == 'steve' && Nickname::SEX.include?(params[:sex])
          @nick = Nickname.generate_minecraft(params[:race], params[:sex])
          render json: @nick, status: 200
        else
          render json: 'Обратитесь с правильными параметрами', status: 500
        end
      end

    end
  end
end
