require 'rails_helper'

describe 'Nickname generation API V1' do

  # minecraft nicks

  it 'have all proper attributes' do
    get '/api/v1/nicks/minecraft.json?race=steve&sex=male'
    json = JSON.parse(response.body)
    expect(json.count).to eq(7)
  end

  it 'generates minecraft nick' do
    get '/api/v1/nicks/minecraft.json?race=steve&sex=male'
    expect(response).to be_success
  end

  it 'generates minecraft nick' do
    get '/api/v1/nicks/minecraft.json?race=steve&sex=female'
    expect(response).to be_success
  end


  # gw2 nicks
  gw = %w(human charr norn sylvari asura)

  gw.each do |race|
    it 'generates gw nick' do
      get "/api/v1/nicks/gw.json?race=#{race}&sex=male"
      expect(response).to be_success
    end

    it 'generates gw nick' do
      get "/api/v1/nicks/gw.json?race=#{race}&sex=female"
      expect(response).to be_success
    end
  end

  # wow nicks

  wow = %w(human gnome dwarf draenei worgen pandaren nightelf orc troll tauren
    bloodelf goblin undead)

  wow.each do |race|

    it 'generates wow nick' do
      get "/api/v1/nicks/wow.json?race=#{race}&sex=male"
      expect(response).to be_success
    end

    it 'generates wow nick' do
      get "/api/v1/nicks/wow.json?race=#{race}&sex=female"
      expect(response).to be_success
    end

  end

  # samp nicks
  samp = %w(english german french danish spanish swedish italian)

  samp.each do |race|

    it 'generates samp nick' do
      get "/api/v1/nicks/samp.json?race=#{race}&sex=male"
      expect(response).to be_success
    end

    it 'generates samp nick' do
      get "/api/v1/nicks/samp.json?race=#{race}&sex=male"
      expect(response).to be_success
    end

  end

end
