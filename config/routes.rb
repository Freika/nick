Nick::Application.routes.draw do
  get '/wow', to: redirect('/ru/wow')
  get '/samp', to: redirect('/ru/samp')
  get '/gw2', to: redirect('/ru/gw2')
  get '/:locale', to: 'games#index'

  root 'games#index'

  namespace :api do
    namespace :v1 do
      namespace :nicks do
        post 'wow/create', to: 'wow#create'
        post 'gw/create', to: 'guild_wars#create'
        post 'samp/create', to: 'samp#create'
      end
    end
  end

  scope '/:locale', locale: /en|ru/ do

    resources :statistics, only: [:index]
    resources :games, path: '', only: :show do
      resources :races, path: '', only: :show
    end
  end

  get '*path', to: redirect(status: 301) {|params| "/#{I18n.default_locale}/#{CGI::unescape(params[:path])}"}, constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
end
