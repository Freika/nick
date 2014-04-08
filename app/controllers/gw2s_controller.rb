class Gw2sController < ApplicationController
  before_action :set_gw2, only: [:show, :edit, :update, :destroy]

  # GET /gw2s
  # GET /gw2s.json
  def index
    @gw2s = Gw2.all
  end

  # GET /gw2s/1
  # GET /gw2s/1.json
  def show
  end

  # GET /gw2s/new
  def new
    @gw2 = Gw2.new
  end

  # GET /gw2s/1/edit
  def edit
  end

  # POST /gw2s
  # POST /gw2s.json
  def create
    @gw2 = Gw2.new(gw2_params)

    respond_to do |format|
      if @gw2.save
        format.html { redirect_to @gw2, notice: 'Gw2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gw2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @gw2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gw2s/1
  # PATCH/PUT /gw2s/1.json
  def update
    respond_to do |format|
      if @gw2.update(gw2_params)
        format.html { redirect_to @gw2, notice: 'Gw2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gw2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gw2s/1
  # DELETE /gw2s/1.json
  def destroy
    @gw2.destroy
    respond_to do |format|
      format.html { redirect_to gw2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gw2
      @gw2 = Gw2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gw2_params
      params.require(:gw2).permit(:game, :racename, :pagename, :title, :desc, :customcode)
    end
end
