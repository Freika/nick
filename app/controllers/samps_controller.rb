class SampsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_samp, only: [:show, :edit, :update, :destroy]

  def index
    @samps = Samp.all
  end

  def show
  end

  def new
    @samp = Samp.new
  end

  def edit
  end

  def create
    @samp = Samp.new(samp_params)
    if @samp.save
      redirect_to @samp, notice: 'Samp was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @samp.update(samp_params)
      redirect_to @samp, notice: 'Samp was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @samp.destroy
    redirect_to samps_url
  end

  private
    def set_samp
      @samp = Samp.friendly.find(params[:id])
    end

    def samp_params
      params.require(:samp).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end


end
