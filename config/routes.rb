Nick::Application.routes.draw do

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

  resources :samps, :path => 'samp'

  resources :gw2s, :path => 'gw2' 

  resources :wows, :path =>'wow'

  root 'wows#index'

#WoW

get 'api/wow/human/male' => 'wows#human_male'
get 'api/wow/dwarf/male' => 'wows#dwarf_male'
get 'api/wow/gnome/male' => 'wows#gnome_male'
get 'api/wow/draenei/male' => 'wows#draenei_male'
get 'api/wow/worgen/male' => 'wows#worgen_male'
get 'api/wow/nightelf/male' => 'wows#nightelf_male'
get 'api/wow/orc/male' => 'wows#orc_male'
get 'api/wow/troll/male' => 'wows#troll_male'
get 'api/wow/tauren/male' => 'wows#tauren_male'
get 'api/wow/goblin/male' => 'wows#goblin_male'
get 'api/wow/bloodelf/male' => 'wows#bloodelf_male'
get 'api/wow/undead/male' => 'wows#undead_male'
get 'api/wow/pandaren/male' => 'wows#pandaren_male'

get 'api/wow/human/female' => 'wows#human_female'
get 'api/wow/dwarf/female' => 'wows#dwarf_female'
get 'api/wow/gnome/female' => 'wows#gnome_female'
get 'api/wow/draenei/female' => 'wows#draenei_female'
get 'api/wow/worgen/female' => 'wows#worgen_female'
get 'api/wow/nightelf/female' => 'wows#nightelf_female'
get 'api/wow/orc/female' => 'wows#orc_female'
get 'api/wow/troll/female' => 'wows#troll_female'
get 'api/wow/tauren/female' => 'wows#tauren_female'
get 'api/wow/goblin/female' => 'wows#goblin_female'
get 'api/wow/bloodelf/female' => 'wows#bloodelf_female'
get 'api/wow/undead/female' => 'wows#undead_female'
get 'api/wow/pandaren/female' => 'wows#pandaren_female'

#GW2
get 'api/gw2/charr/male' => 'gw2s#charr_male'
get 'api/gw2/charr/female' => 'gw2s#charr_female'
get 'api/gw2/human/male' => 'gw2s#human_male'
get 'api/gw2/human/female' => 'gw2s#human_female'
get 'api/gw2/norn/male' => 'gw2s#norn_male'
get 'api/gw2/norn/female' => 'gw2s#norn_female'
get 'api/gw2/asura/male' => 'gw2s#asura_male'
get 'api/gw2/asura/female' => 'gw2s#asura_female'
get 'api/gw2/sylvari/male' => 'gw2s#sylvari_male'
get 'api/gw2/sylvari/female' => 'gw2s#sylvari_female'

#SAMP
get 'api/samp/english/male' => 'samps#english_male'
get 'api/samp/english/female' => 'samps#english_female'
get 'api/samp/swedish/male' => 'samps#swedish_male'
get 'api/samp/swedish/female' => 'samps#swedish_female'
get 'api/samp/french/male' => 'samps#french_male'
get 'api/samp/french/female' => 'samps#french_female'
get 'api/samp/italian/male' => 'samps#italian_male'
get 'api/samp/italian/female' => 'samps#italian_female'
get 'api/samp/german/male' => 'samps#german_male'
get 'api/samp/german/female' => 'samps#german_female'
get 'api/samp/spanish/male' => 'samps#spanish_male'
get 'api/samp/spanish/female' => 'samps#spanish_female'
get 'api/samp/danish/male' => 'samps#danish_male'
get 'api/samp/danish/female' => 'samps#danish_female'

end
