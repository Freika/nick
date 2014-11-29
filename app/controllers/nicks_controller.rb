class NicksController < ApplicationController
  before_action :set_nick, only: [:show, :edit, :update, :destroy]

  def index
    @nicks = Nick.all
  end

  def show
  end

  def new
    @nick = Nick.new
  end

  def edit
  end

  def create
    @nick = Nick.new(nick_params)

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

  def update
    respond_to do |format|
      if @nick.update(nick_params)
        format.html { redirect_to @nick, notice: 'Nick was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nick.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @nick.destroy
    respond_to do |format|
      format.html { redirect_to nicks_url }
      format.json { head :no_content }
    end
  end

  private
    def set_nick
      @nick = Nick.find(params[:id])
    end

    def nick_params
      params[:nick]
    end
end
