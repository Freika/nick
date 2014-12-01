Nick::Application.routes.draw do

  root 'wows#index'
  namespace :api do
    namespace :v1 do
      get 'nicks/wow', to: 'nicks#wow'
      get 'nicks/gw', to: 'nicks#gw'
      get 'nicks/samp', to: 'nicks#samp'
      get 'nicks/minecraft', to: 'nicks#minecraft'
    end
  end

  get 'pages/this_is_not_cms'
  get 'auth/bnet/callback', to: 'statistics#index'
  get 'statistics/graph'
  devise_for :users

  resources :statistics, only: [:index]

  links = %w(admin wp-admin wp-admin.php adminstrator wp-login wp-login.php admin.php)
  links.each do |link|
    get link, to: redirect('pages/this_is_not_cms')
  end

  #old routes
  get 'wow/orcs.php', to: redirect('wow/orc')
  get 'wow/trolls.php', to: redirect('wow/troll')
  get 'wow/taurens.php', to: redirect('wow/tauren')
  get 'wow/goblins.php', to: redirect('wow/goblin')
  get 'wow/blood_elves.php', to: redirect('wow/bloodelf')
  get 'wow/undeads.php', to: redirect('wow/undead')
  get 'wow/pandarens.php', to: redirect('wow/pandaren')
  get 'wow/humans.php', to: redirect('wow/human')
  get 'wow/gnomes.php', to: redirect('wow/gnome')
  get 'wow/dwarves.php', to: redirect('wow/dwarf')
  get 'wow/draeneis.php', to: redirect('wow/draenei')
  get 'wow/night_elves.php', to: redirect('wow/nightelf')
  get 'wow/worgens.php', to: redirect('wow/worgen')

  get 'gw2/human.php', to: redirect('gw2/human')
  get 'gw2/asura.php', to: redirect('gw2/asura')
  get 'gw2/norn.php', to: redirect('gw2/norn')
  get 'gw2/charr.php', to: redirect('gw2/charr')
  get 'gw2/sylvari.php', to: redirect('gw2/sylvari')

  get 'samp/english.php', to: redirect('samp/english')
  get 'samp/german.php', to: redirect('samp/german')
  get 'samp/french.php', to: redirect('samp/french')
  get 'samp/italian.php', to: redirect('samp/italian')
  get 'samp/danish.php', to: redirect('samp/danish')
  get 'samp/spanish.php', to: redirect('samp/spanish')
  get 'samp/swedish.php', to: redirect('samp/swedish')

  resources :samps, path: 'samp'

  resources :gw2s, path: 'gw2'

  resources :wows, path:'wow'

  resources :minecrafts, path: 'minecraft'
end
