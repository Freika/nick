class MinecraftsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_minecraft, only: [:show, :edit, :update, :destroy]

  # GET /minecrafts
  # GET /minecrafts.json
  def index
    @minecrafts = Minecraft.all
  end

  # GET /minecrafts/1
  # GET /minecrafts/1.json
  def show
  end

  # GET /minecrafts/new
  def new
    @minecraft = Minecraft.new
  end

  # GET /minecrafts/1/edit
  def edit
  end

  # POST /minecrafts
  # POST /minecrafts.json
  def create
    @minecraft = Minecraft.new(minecraft_params)

    respond_to do |format|
      if @minecraft.save
        format.html { redirect_to @minecraft, notice: 'Minecraft was successfully created.' }
        format.json { render action: 'show', status: :created, location: @minecraft }
      else
        format.html { render action: 'new' }
        format.json { render json: @minecraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minecrafts/1
  # PATCH/PUT /minecrafts/1.json
  def update
    respond_to do |format|
      if @minecraft.update(minecraft_params)
        format.html { redirect_to @minecraft, notice: 'Minecraft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @minecraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minecrafts/1
  # DELETE /minecrafts/1.json
  def destroy
    @minecraft.destroy
    respond_to do |format|
      format.html { redirect_to minecrafts_url }
      format.json { head :no_content }
    end
  end

  def steve_male
  name_start = Syllable.where(game: 'minecraft', race: 'steve', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'minecraft', race: 'steve', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_end.sample.capitalize + " " + name_start.sample.capitalize

  fullname = name
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'minecraft', race: 'steve', sex: 'male', name: fullname)
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minecraft
      @minecraft = Minecraft.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minecraft_params
      params.require(:minecraft).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end
end