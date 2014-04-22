Nick::Application.routes.draw do
  #devise_for :admins
  resources :statistics

  resources :syllables
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

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
