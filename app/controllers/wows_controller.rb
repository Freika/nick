class WowsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  before_action :set_wow, only: [:show, :edit, :update, :destroy]

  # GET /wows
  # GET /wows.json
  def index
    @wows = Wow.all
  end

  # GET /wows/1
  # GET /wows/1.json
  def show
  end

  # GET /wows/new
  def new
    @wow = Wow.new
  end

  # GET /wows/1/edit
  def edit
  end

  # POST /wows
  # POST /wows.json
  def create
    @wow = Wow.new(wow_params)

    respond_to do |format|
      if @wow.save
        format.html { redirect_to @wow, notice: 'Wow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wow }
      else
        format.html { render action: 'new' }
        format.json { render json: @wow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wows/1
  # PATCH/PUT /wows/1.json
  def update
    respond_to do |format|
      if @wow.update(wow_params)
        format.html { redirect_to @wow, notice: 'Wow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wows/1
  # DELETE /wows/1.json
  def destroy
    @wow.destroy
    respond_to do |format|
      format.html { redirect_to wows_url }
      format.json { head :no_content }
    end
  end


def human_male
  name_start = Syllable.where(game: 'wow', race: 'human', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'human', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'human', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample
  @name = name
  render :json => @name.to_json
  Statistic.create(game: 'wow', race: 'human', sex: 'male', name: name)
end

  def human_female
  name_start = Syllable.where(game: 'wow', race: 'human', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'human', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'human', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'human', sex: 'female', name: name)

end

  def dwarf_male
  name_start = Syllable.where(game: 'wow', race: 'dwarf', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'dwarf', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'dwarf', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'dwarf', sex: 'male', name: name)
end

  def dwarf_female
  name_start = Syllable.where(game: 'wow', race: 'dwarf', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'dwarf', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'dwarf', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'dwarf', sex: 'female', name: name)
end

  def gnome_male
  name_start = Syllable.where(game: 'wow', race: 'gnome', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'gnome', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'gnome', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'gnome', sex: 'male', name: name)
end

  def gnome_female
  name_start = Syllable.where(game: 'wow', race: 'gnome', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'gnome', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'gnome', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'gnome', sex: 'female', name: name)
end

  def nightelf_male
  name_start = Syllable.where(game: 'wow', race: 'nightelf', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'nightelf', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'nightelf', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'nightelf', sex: 'male', name: name)
end

  def nightelf_female
  name_start = Syllable.where(game: 'wow', race: 'nightelf', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'nightelf', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'nightelf', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'nightelf', sex: 'female', name: name)
end

  def draenei_male
  name_start = Syllable.where(game: 'wow', race: 'draenei', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'draenei', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'draenei', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'draenei', sex: 'male', name: name)
end

  def draenei_female
  name_start = Syllable.where(game: 'wow', race: 'draenei', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'draenei', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'draenei', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'draenei', sex: 'female', name: name)
end

  def worgen_male
  name_start = Syllable.where(game: 'wow', race: 'worgen', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'worgen', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'worgen', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'worgen', sex: 'male', name: name)
end

  def worgen_female
  name_start = Syllable.where(game: 'wow', race: 'worgen', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'worgen', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'worgen', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'worgen', sex: 'female', name: name)
end

  def orc_male
  name_start = Syllable.where(game: 'wow', race: 'orc', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'orc', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'orc', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'orc', sex: 'male', name: name)
end

  def orc_female
  name_start = Syllable.where(game: 'wow', race: 'orc', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'orc', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'orc', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'orc', sex: 'female', name: name)
end

  def troll_male
  name_start = Syllable.where(game: 'wow', race: 'troll', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'troll', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'troll', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'troll', sex: 'male', name: name)
end

  def troll_female
  name_start = Syllable.where(game: 'wow', race: 'troll', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'troll', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'troll', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'troll', sex: 'female', name: name)
end

  def tauren_male
  name_start = Syllable.where(game: 'wow', race: 'tauren', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'tauren', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'tauren', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'tauren', sex: 'male', name: name)
end

  def tauren_female
  name_start = Syllable.where(game: 'wow', race: 'tauren', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'tauren', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'tauren', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'tauren', sex: 'female', name: name)
end

  def undead_male
  name_start = Syllable.where(game: 'wow', race: 'undead', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'undead', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'undead', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'undead', sex: 'male', name: name)
end

  def undead_female
  name_start = Syllable.where(game: 'wow', race: 'undead', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'undead', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'undead', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'undead', sex: 'female', name: name)
end

  def bloodelf_male
  name_start = Syllable.where(game: 'wow', race: 'bloodelf', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'bloodelf', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'bloodelf', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'bloodelf', sex: 'male', name: name)
end

  def bloodelf_female
  name_start = Syllable.where(game: 'wow', race: 'bloodelf', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'bloodelf', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'bloodelf', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'bloodelf', sex: 'female', name: name)
end

  def goblin_male
  name_start = Syllable.where(game: 'wow', race: 'goblin', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'goblin', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'goblin', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'goblin', sex: 'male', name: name)
end

  def goblin_female
  name_start = Syllable.where(game: 'wow', race: 'goblin', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'goblin', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  #name_end = Syllable.where(game: 'wow', race: 'goblin', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample#+name_end.sample
  #perhaps there is an error in database with goblin name_end
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'goblin', sex: 'female', name: name)
end

  def pandaren_male
  name_start = Syllable.where(game: 'wow', race: 'pandaren', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'pandaren', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'pandaren', sex: 'male', name: name)
end

  def pandaren_female
  name_start = Syllable.where(game: 'wow', race: 'pandaren', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'wow', race: 'pandaren', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'wow', race: 'pandaren', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample+name_middle.sample+name_end.sample
  @name = name
  render :json => @name.to_json
Statistic.create(game: 'wow', race: 'pandaren', sex: 'female', name: name)
end






  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wow
      @wow ||= Wow.find_by_slug!(params[:id])
    end

    helper_method :set_wow

    # Never trust parameters from the scary internet, only allow the white list through.
    def wow_params
      params.require(:wow).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end
end
