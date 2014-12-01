require 'rails_helper'

describe 'Nickname generation API' do

  # minecraft nicks

  it 'have all proper attributes' do
    get '/api/nicks/minecraft.json?race=steve&sex=male'
    json = JSON.parse(response.body)
    expect(json.count).to eq(7)
  end

  it 'generates minecraft nick' do
    get '/api/nicks/minecraft.json?race=steve&sex=male'
    expect(response).to be_success
  end

  it 'generates minecraft nick' do
    get '/api/nicks/minecraft.json?race=steve&sex=female'
    expect(response).to be_success
  end

  # gw2 nicks

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=human&sex=female'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=charr&sex=female'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=asura&sex=female'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=norn&sex=female'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=sylvari&sex=female'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=human&sex=male'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=charr&sex=male'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=asura&sex=male'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=norn&sex=male'
    expect(response).to be_success
  end

  it 'generates gw nick' do
    get '/api/nicks/gw.json?race=sylvari&sex=male'
    expect(response).to be_success
  end

  # wow nicks

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=human&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=gnome&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=dwarf&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=draenei&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=worgen&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=nightelf&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=orc&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=troll&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=tauren&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=undead&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=bloodelf&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=goblin&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=pandaren&sex=female'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=human&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=gnome&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=dwarf&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=draenei&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=worgen&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=nightelf&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=orc&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=troll&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=tauren&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=undead&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=bloodelf&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=goblin&sex=male'
    expect(response).to be_success
  end

  it 'generates wow nick' do
    get '/api/nicks/wow.json?race=pandaren&sex=male'
    expect(response).to be_success
  end

  # samp nicks

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=english&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=german&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=french&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=italian&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=danish&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=swedish&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=spanish&sex=male'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=english&sex=female'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=german&sex=female'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=french&sex=female'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=italian&sex=female'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=danish&sex=female'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=swedish&sex=female'
    expect(response).to be_success
  end

  it 'generates samp nick' do
    get '/api/nicks/samp.json?race=spanish&sex=female'
    expect(response).to be_success
  end
end
