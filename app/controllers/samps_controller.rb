class SampsController < ApplicationController
  before_action :set_samp, only: [:show, :edit, :update, :destroy]

  # GET /samps
  # GET /samps.json
  def index
    @samps = Samp.all
  end

  # GET /samps/1
  # GET /samps/1.json
  def show
  end

  # GET /samps/new
  def new
    @samp = Samp.new
  end

  # GET /samps/1/edit
  def edit
  end

  # POST /samps
  # POST /samps.json
  def create
    @samp = Samp.new(samp_params)

    respond_to do |format|
      if @samp.save
        format.html { redirect_to @samp, notice: 'Samp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @samp }
      else
        format.html { render action: 'new' }
        format.json { render json: @samp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samps/1
  # PATCH/PUT /samps/1.json
  def update
    respond_to do |format|
      if @samp.update(samp_params)
        format.html { redirect_to @samp, notice: 'Samp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @samp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samps/1
  # DELETE /samps/1.json
  def destroy
    @samp.destroy
    respond_to do |format|
      format.html { redirect_to samps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samp
      @samp = Samp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def samp_params
      params.require(:samp).permit(:game, :racename, :pagename, :title, :desc, :customcode)
    end
end
