Nick::Application.routes.draw do
  
  get 'statistics/graph'
  devise_for :users

  resources :statistics
  
  resources :syllables

  #old routes
  get 'wow/orcs.php' => redirect('wow/orc')
  get 'wow/trolls.php' => redirect('wow/troll')
  get 'wow/taurens.php' => redirect('wow/tauren')
  get 'wow/goblins.php' => redirect('wow/goblin')
  get 'wow/blood_elves.php' => redirect('wow/bloodelf')
  get 'wow/undeads.php' => redirect('wow/undead')
  get 'wow/pandarens.php' => redirect('wow/pandaren')
  get 'wow/humans.php' => redirect('wow/human')
  get 'wow/gnomes.php' => redirect('wow/gnome')
  get 'wow/dwarves.php' => redirect('wow/dwarf')
  get 'wow/draeneis.php' => redirect('wow/draenei')
  get 'wow/night_elves.php' => redirect('wow/nightelf')
  get 'wow/worgens.php' => redirect('wow/worgen')

  get 'gw2/human.php' => redirect('gw2/human')
  get 'gw2/asura.php' => redirect('gw2/asura')
  get 'gw2/norn.php' => redirect('gw2/norn')
  get 'gw2/charr.php' => redirect('gw2/charr')
  get 'gw2/sylvari.php' => redirect('gw2/sylvari')

  get 'samp/english.php' => redirect('samp/english')
  get 'samp/german.php' => redirect('samp/german')
  get 'samp/french.php' => redirect('samp/french')
  get 'samp/italian.php' => redirect('samp/italian')
  get 'samp/danish.php' => redirect('samp/danish')
  get 'samp/spanish.php' => redirect('samp/spanish')
  get 'samp/swedish.php' => redirect('samp/swedish')

  resources :samps, path: 'samp'

  resources :gw2s, path: 'gw2' 

  resources :wows, path:'wow'

  resources :minecrafts, path: 'minecraft'

  root 'wows#index'

#WoW
scope path: '/api/wow' do
  get 'human/male' => 'wows#human_male'
  get 'dwarf/male' => 'wows#dwarf_male'
  get 'gnome/male' => 'wows#gnome_male'
  get 'draenei/male' => 'wows#draenei_male'
  get 'worgen/male' => 'wows#worgen_male'
  get 'nightelf/male' => 'wows#nightelf_male'
  get 'orc/male' => 'wows#orc_male'
  get 'troll/male' => 'wows#troll_male'
  get 'tauren/male' => 'wows#tauren_male'
  get 'goblin/male' => 'wows#goblin_male'
  get 'bloodelf/male' => 'wows#bloodelf_male'
  get 'undead/male' => 'wows#undead_male'
  get 'pandaren/male' => 'wows#pandaren_male'

  get 'human/female' => 'wows#human_female'
  get 'dwarf/female' => 'wows#dwarf_female'
  get 'gnome/female' => 'wows#gnome_female'
  get 'draenei/female' => 'wows#draenei_female'
  get 'worgen/female' => 'wows#worgen_female'
  get 'nightelf/female' => 'wows#nightelf_female'
  get 'orc/female' => 'wows#orc_female'
  get 'troll/female' => 'wows#troll_female'
  get 'tauren/female' => 'wows#tauren_female'
  get 'goblin/female' => 'wows#goblin_female'
  get 'bloodelf/female' => 'wows#bloodelf_female'
  get 'undead/female' => 'wows#undead_female'
  get 'pandaren/female' => 'wows#pandaren_female'
end

#GW2
scope path: '/api/gw2' do
  get 'charr/male' => 'gw2s#charr_male'
  get 'charr/female' => 'gw2s#charr_female'
  get 'human/male' => 'gw2s#human_male'
  get 'human/female' => 'gw2s#human_female'
  get 'norn/male' => 'gw2s#norn_male'
  get 'norn/female' => 'gw2s#norn_female'
  get 'asura/male' => 'gw2s#asura_male'
  get 'asura/female' => 'gw2s#asura_female'
  get 'sylvari/male' => 'gw2s#sylvari_male'
  get 'sylvari/female' => 'gw2s#sylvari_female'
end

#SAMP
scope path: '/api/samp' do
  get 'english/male' => 'samps#english_male'
  get 'english/female' => 'samps#english_female'
  get 'swedish/male' => 'samps#swedish_male'
  get 'swedish/female' => 'samps#swedish_female'
  get 'french/male' => 'samps#french_male'
  get 'french/female' => 'samps#french_female'
  get 'italian/male' => 'samps#italian_male'
  get 'italian/female' => 'samps#italian_female'
  get 'german/male' => 'samps#german_male'
  get 'german/female' => 'samps#german_female'
  get 'spanish/male' => 'samps#spanish_male'
  get 'spanish/female' => 'samps#spanish_female'
  get 'danish/male' => 'samps#danish_male'
  get 'danish/female' => 'samps#danish_female'
end

#MINECRAFT
get 'api/minecraft/steve/male' => 'minecrafts#steve_male'


end
