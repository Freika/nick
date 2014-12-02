require 'rails_helper'

describe 'Nickname generation API V1' do

  gw = { name: 'gw', races: %w(human charr norn sylvari asura) }
  wow = { name: 'wow', races: %w(human gnome dwarf draenei worgen pandaren
    nightelf orc troll tauren bloodelf goblin undead) }
  samp = { name: 'samp', races: %w(english german french danish spanish swedish italian) }
  genders = %w(male female)
  games = [gw, wow, samp]

  games.each do |game|
    game[:races].each do |race|
      genders.each do |gender|

        it "generates #{game[:name]} #{race} nick" do
          get "/api/v1/nicks/#{game[:name]}.json?race=#{race}&sex=#{gender}"
          json = JSON.parse(response.body)
          expect(json['name']).not_to be_nil
        end

        it "responses to #{game[:name]} and #{race} request successfully" do
          get "/api/v1/nicks/#{game[:name]}.json?race=#{race}&sex=#{gender}"
          expect(response).to be_success
        end

      end

      it "it responses with 500 to wrong parameters" do
        get "/api/v1/nicks/#{game[:name]}.json?race=#{race}&sex=shemale"
        expect(response.status).to eq(500)
      end

    end
  end

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

  it 'fails with wrong parameters' do
    get "/api/v1/nicks/minecraft.json?race=steve&sex=shemale"
    expect(response.status).to eq(500)
  end

end
