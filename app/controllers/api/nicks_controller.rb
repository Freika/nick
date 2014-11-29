module Api
  class NicksController < ApplicationController

    def index

    end

    def show
      @nick = set_nick
    end

    def new
      @nick = Nick.new
    end

    def wow
      if params[:race] == 'human' #answers to http://localhost:3000/api/nicks/wow.json?race=human
        @nick = "Human!"
        render json: @nick
      end
    end

    def create
      @nick = Nick.new

      respond_to do |format|
        if @nick.save
          format.html { redirect_to @nick, notice: 'Nick was successfully created.' }
          format.json { render action: 'show', status: :created, location: @nick }
        else
          format.html { render action: 'new' }
          format.json { render json: @nick.errors, status: :unprocessable_entity }
        end
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
