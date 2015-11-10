Rails.application.routes.draw do

  root 'welcome#index'

  post 'create'     => 'welcome#create'
  get 'new'         => 'welcome#new'

  get 'projects' => 'welcome#projects'
  get 'misc'     => 'welcome#miscellaneous'


 #  welcome_index GET    /welcome(.:format)          welcome#index
 #              POST   /welcome(.:format)          welcome#create
 #  new_welcome GET    /welcome/new(.:format)      welcome#new
 # edit_welcome GET    /welcome/:id/edit(.:format) welcome#edit
 #      welcome GET    /welcome/:id(.:format)      welcome#show
 #              PATCH  /welcome/:id(.:format)      welcome#update
 #              PUT    /welcome/:id(.:format)      welcome#update
 #              DELETE /welcome/:id(.:format)      welcome#destroy

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
