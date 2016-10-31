Nick::Application.routes.draw do
  get '/wow', to: redirect('/ru/wow')
  get '/samp', to: redirect('/ru/samp')
  get '/minecraft', to: redirect('/ru/minecraft')
  get '/gw2', to: redirect('/ru/gw2')
  get '/:locale', to: 'games#index'

  root 'games#index'

  namespace :api do
    namespace :v1 do
      namespace :nicks do
        post 'wow/create', to: 'wow#create'
        post 'gw/create', to: 'guild_wars#create'
        post 'samp/create', to: 'samp#create'
        post 'minecraft/create', to: 'minecraft#create'
        post 'minecraft_skin/create', to: 'minecraft#create_skin'
        post 'dota/create', to: 'dota#create'
      end
    end
  end

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

  get '*path', to: redirect(status: 301) {|params| "/#{I18n.default_locale}/#{CGI::unescape(params[:path])}"}, constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
end
