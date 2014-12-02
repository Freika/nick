class Gw2sController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_gw2, only: [:show, :edit, :update, :destroy]

  def index
    @gw2s = Gw2.all
  end

  def show
  end

  def new
    @gw2 = Gw2.new
  end

  def edit
  end

  def create
    @gw2 = Gw2.new(gw2_params)

    if @gw2.save
      redirect_to @gw2, notice: 'Gw2 was successfully created.'
    else
      render :new
    end
  end

  def update
    if @gw2.update(gw2_params)
      redirect_to @gw2, notice: 'Gw2 was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @gw2.destroy
    redirect_to gw2s_url
  end

  private
    def set_gw2
      @gw2 = Gw2.friendly.find(params[:id])
    end

    def gw2_params
      params.require(:gw2).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end
end
