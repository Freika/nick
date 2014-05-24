class Gw2sController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

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

def charr_male
  name_start = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'charr', sex: 'male', name: fullname)
end

def charr_female
  name_start = Syllable.where(game: 'gw2', race: 'charr', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'charr', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'charr', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'charr', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'charr', sex: 'female', name: fullname)
end

def human_male
  name_start = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'human', sex: 'male', name: fullname)
end

def human_female
  name_start = Syllable.where(game: 'gw2', race: 'human', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'human', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'human', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'human', sex: 'female', name: fullname)
end

def norn_male
  name_start = Syllable.where(game: 'gw2', race: 'norn', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'norn', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'norn', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'norn', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'norn', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'norn', sex: 'male', name: fullname)
end

def norn_female
  name_start = Syllable.where(game: 'gw2', race: 'norn', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'norn', sex: 'female', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'norn', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'human', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'norn', sex: 'female', name: fullname)
end

def asura_male
  name_start = Syllable.where(game: 'gw2', race: 'asura', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'asura', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'asura', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'asura', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname

  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'asura', sex: 'male', name: fullname)
end

def asura_female
  name_start = Syllable.where(game: 'gw2', race: 'asura', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'asura', sex: 'female', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_end.sample

  surname_start = Syllable.where(game: 'gw2', race: 'asura', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable)
  surname_end = Syllable.where(game: 'gw2', race: 'asura', sex: 'male', position: 'end', namepart: 'surname').pluck(:syllable)

  surname = surname_start.sample + surname_end.sample

  fullname = name + " " + surname
  @name = fullname

  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'asura', sex: 'female', name: fullname)
end

def sylvari_male
  name_start = Syllable.where(game: 'gw2', race: 'sylvari', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'sylvari', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'sylvari', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample
  @name = name
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'sylvari', sex: 'male', name: name)
end

def sylvari_female
  name_start = Syllable.where(game: 'gw2', race: 'sylvari', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable)
  name_middle = Syllable.where(game: 'gw2', race: 'sylvari', sex: 'male', position: 'middle', namepart: 'name').pluck(:syllable)
  name_end = Syllable.where(game: 'gw2', race: 'sylvari', sex: 'male', position: 'end', namepart: 'name').pluck(:syllable)
  name = name_start.sample + name_middle.sample + name_end.sample
  @name = name
  render :json => @name.to_json
  Statistic.create(game: 'gw2', race: 'sylvari', sex: 'male', name: name)
end







  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gw2
      @gw2 ||= Gw2.find_by_slug!(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gw2_params
      params.require(:gw2).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end
end
