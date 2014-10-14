Rails.application.routes.draw do

  # You can have the root of your site routed with "root"


   get 'description/:id' => 'event#description'
   get 'apply/:id' => 'event#apply'
   post 'event_apply' => 'event#event_apply'

   get 'applicant/:id' => 'event#applicant'
   get 'event/new' => 'event#new'
   match 'event/edit/:id' => 'event#edit', via: [:get]
   post 'event/save' => 'event#save'

  root 'home_page#index'

  resources 'event', as: :event, controller: 'event' do
    collection do

    end
    member do
      get '/' => :index
      post '/save-design' => :save_design
    end
  end

  resources 'home', as: :home, controller: 'home_page' do
    collection do

    end
    member do
      get '/swatches' => :swatches, as: 'swatches'
      post '/save-design' => :save_design, as: 'save_design'
    end
  end

  resources 'user', as: :user, controller: 'user' do
    collection do
      get '/new' => :new
      post '/signup' => :signup
      get '/logout' => :logout
      get '/login-form' => :login_form
      post '/login' => :login
    end
    member do
      get '/swatches' => :swatches, as: 'swatches'
      get '/more-collection-products' => 'product#more_collection_products'
      post '/save-design' => :save_design, as: 'save_design'
      post '/share-design' => :share_design, as: 'share_design'
      get '/get-price-and-image' => :get_price_and_image
    end
  end

  get 'about' =>'event#about'
  get 'login' => 'user#login'

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
