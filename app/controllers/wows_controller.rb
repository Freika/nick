class WowsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  before_action :set_wow, only: [:show, :edit, :update, :destroy]

  def index
    @wows = Wow.all
  end

  def show
  end

  def new
    @wow = Wow.new
  end

  def edit
  end

  def create
    @wow = Wow.new(wow_params)

    respond_to do |format|
      if @wow.save
        format.html { redirect_to @wow, notice: 'Wow was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @wow.update(wow_params)
        format.html { redirect_to @wow, notice: 'Wow was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @wow.destroy
    respond_to do |format|
      format.html { redirect_to wows_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wow
      @wow = Wow.friendly.find(params[:id])
    end

    helper_method :set_wow

    # Never trust parameters from the scary internet, only allow the white list through.
    def wow_params
      params.require(:wow).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end
end
