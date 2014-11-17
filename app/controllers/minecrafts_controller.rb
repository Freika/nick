class MinecraftsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def index
    @minecrafts = Minecraft.all
  end

  def show
    @minecraft = set_minecraft
  end

  def new
    @minecraft = Minecraft.new
  end

  def edit
    @minecraft = set_minecraft
  end

  def create
    @minecraft = Minecraft.new(minecraft_params)

    respond_to do |format|
      if @minecraft.save
        redirect_to @minecraft, notice: 'Minecraft was successfully created.'
      else
        render action: 'new'
      end
    end
  end

  def update
    @minecraft = set_minecraft
    respond_to do |format|
      if @minecraft.update(minecraft_params)
        redirect_to @minecraft, notice: 'Minecraft was successfully updated.'
      else
        render action: 'edit'
      end
    end
  end

  def destroy
    @minecraft = set_minecraft
    @minecraft.destroy
     redirect_to minecrafts_url
  end

  def steve_male
    name_start = Syllable.where(game: 'minecraft', race: 'steve', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
    name_end = Syllable.where(game: 'minecraft', race: 'steve', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
    name = "#{name_end.sample.capitalize} #{name_start.sample.capitalize}"

    @name = name
    render :json => @name.to_json
  Statistic.create(game: 'minecraft', race: 'steve', sex: 'male', name: @name)
  end

  private
    def set_minecraft
      @minecraft = Minecraft.friendly.find(params[:id])
    end

    def minecraft_params
      params.require(:minecraft).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end
end
