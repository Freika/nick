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




def english_male
  name = Syllable.where(game: 'samp', race: 'english', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'english', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'english', sex: 'male', name: @name)
end

def english_female
  name = Syllable.where(game: 'samp', race: 'english', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'english', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'english', sex: 'female', name: @name)
end

def swedish_male
  name = Syllable.where(game: 'samp', race: 'swedish', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'swedish', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'swedish', sex: 'male', name: @name)
end

def swedish_female
  name = Syllable.where(game: 'samp', race: 'swedish', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'swedish', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'swedish', sex: 'female', name: @name)
end

def german_male
  name = Syllable.where(game: 'samp', race: 'german', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'german', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'german', sex: 'male', name: @name)
end

def german_female
  name = Syllable.where(game: 'samp', race: 'german', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'german', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'german', sex: 'female', name: @name)
end

def italian_male
  name = Syllable.where(game: 'samp', race: 'italian', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'italian', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'italian', sex: 'male', name: @name)
end

def italian_female
  name = Syllable.where(game: 'samp', race: 'italian', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'italian', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'italian', sex: 'female', name: @name)
end

def french_male
  name = Syllable.where(game: 'samp', race: 'french', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'french', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'french', sex: 'male', name: @name)
end

def french_female
  name = Syllable.where(game: 'samp', race: 'french', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'french', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'french', sex: 'female', name: @name)
end

def spanish_male
  name = Syllable.where(game: 'samp', race: 'spanish', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'spanish', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'spanish', sex: 'male', name: @name)
end

def spanish_female
  name = Syllable.where(game: 'samp', race: 'spanish', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'spanish', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'spanish', sex: 'female', name: @name)
end

def danish_male
  name = Syllable.where(game: 'samp', race: 'danish', sex: 'male', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'danish', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'danish', sex: 'male', name: @name)
end

def danish_female
  name = Syllable.where(game: 'samp', race: 'danish', sex: 'female', position: 'start', namepart: 'name').pluck(:syllable).sample

  surname = Syllable.where(game: 'samp', race: 'danish', sex: 'male', position: 'start', namepart: 'surname').pluck(:syllable).sample

  @name = "#{name} #{surname}"
  render :json => @name.to_json
  Statistic.create(game: 'samp', race: 'danish', sex: 'female', name: @name)
end

  private
    def set_samp
      @samp = Samp.friendly.find(params[:id])
    end

    def samp_params
      params.require(:samp).permit(:game, :racename, :pagename, :title, :desc, :customcode, :seo_description)
    end


end
