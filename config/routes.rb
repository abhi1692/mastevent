Rails.application.routes.draw do

  # You can have the root of your site routed with "root"


   get 'description/:id' => 'event#description'
   get 'apply/:event_id' => 'event#apply'
   get 'event/new' => 'event#new'
   match 'event/edit/:id' => 'event#edit', via: [:get]
   post 'event/save/(:id)' => 'event#save'

  root 'home_page#index'

  resources 'event', as: :event, controller: 'event' do
    collection do
      get '/user/' => :user_event
    end
    member do
      get '/' => :index    
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
      get '/more_info' => :more_info_form
      post '/save_more_info' => :save_more_info
      get '/logout' => :logout
      get '/login-form' => :login_form
      post '/login' => :login
    end
    member do
      get '/swatches' => :swatches, as: 'swatches'
    end
  end

  resources 'volunteer', as: :volunteer, controller: 'applicant' do
    collection do
      get '/:id' => :index
    end
    member do
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
