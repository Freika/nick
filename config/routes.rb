Nick::Application.routes.draw do

  get '/:locale', to: 'games#index'
  root 'games#index'

  namespace :api do
    namespace :v1 do
      get 'nicks/wow', to: 'nicks#wow'
      get 'nicks/gw', to: 'nicks#gw'
      get 'nicks/samp', to: 'nicks#samp'
      get 'nicks/minecraft', to: 'nicks#minecraft'
      get 'nicks/minecraft_skin', to: 'nicks#minecraft_skin'
      get 'nicks/dota', to: 'nicks#dota'
    end
  end


  links = %w(admin wp-admin wp-admin.php adminstrator wp-login wp-login.php admin.php)
  links.each do |link|
    get link, to: redirect('pages/this_is_not_cms')
  end
  get 'pages/this_is_not_cms'

  # legacy routes
  get 'gw2/human',            to: redirect('ru/gw2/human-of-tyria')
  get '/wow/orcs.php',        to: redirect('ru/wow/orc')
  get 'wow/trolls.php',       to: redirect('ru/wow/troll')
  get 'wow/taurens.php',      to: redirect('ru/wow/tauren')
  get 'wow/goblins.php',      to: redirect('ru/wow/goblin')
  get 'wow/blood_elves.php',  to: redirect('ru/wow/bloodelf')
  get 'wow/undeads.php',      to: redirect('ru/wow/undead')
  get 'wow/pandarens.php',    to: redirect('ru/wow/pandaren')
  get 'wow/humans.php',       to: redirect('ru/wow/human')
  get 'wow/gnomes.php',       to: redirect('ru/wow/gnome')
  get 'wow/dwarves.php',      to: redirect('ru/wow/dwarf')
  get 'wow/draeneis.php',     to: redirect('ru/wow/draenei')
  get 'wow/night_elves.php',  to: redirect('ru/wow/nightelf')
  get 'wow/worgens.php',      to: redirect('ru/wow/worgen')

  get 'gw2/human.php',        to: redirect('ru/gw2/human')
  get 'gw2/asura.php',        to: redirect('ru/gw2/asura')
  get 'gw2/norn.php',         to: redirect('ru/gw2/norn')
  get 'gw2/charr.php',        to: redirect('ru/gw2/charr')
  get 'gw2/sylvari.php',      to: redirect('ru/gw2/sylvari')

  get 'samp/english.php',     to: redirect('ru/samp/english')
  get 'samp/german.php',      to: redirect('ru/samp/german')
  get 'samp/french.php',      to: redirect('ru/samp/french')
  get 'samp/italian.php',     to: redirect('ru/samp/italian')
  get 'samp/danish.php',      to: redirect('ru/samp/danish')
  get 'samp/spanish.php',     to: redirect('ru/samp/spanish')
  get 'samp/swedish.php',     to: redirect('ru/samp/swedish')

  scope '/:locale', locale: /en|ru/ do
    get 'minecraft/skins', to: 'pages#skins'
    get 'dota/generator', to: 'pages#dota'
    get 'statistics/graph'

    resources :statistics, only: [:index]
    resources :games, path: '', only: :show do
      resources :races, path: '', only: :show
    end


  end
end
