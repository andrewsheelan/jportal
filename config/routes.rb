Rails.application.routes.draw do


  resources :categories

  get 'employersessions/new'

  match '/postJobs' => 'jobs#new', via: :post
  match '/signup' => 'users#new', via: :post
  match '/signin' => 'sessions#new', via: :get
  match '/signout' => 'sessions#destroy', via: :delete
  match '/searchJobs' => 'jobs#search', via: :get
  match '/searchForm' => 'jobs#searchForm', via: :get
  match '/jobList' => 'jobs#indexUser', via: :get
  match '/addEmp' => 'employers#new', via: :get
  match '/viewJobApplicants' => 'jobapplications#indexEmp', via: :get
  match '/admin/signup' => 'admins#new', via: :get
  match '/admin/signin' => 'admin_sessions#new', via: :get
  match '/admin/signout' => 'admin_sessions#destroy', via: :delete
  match '/searchPublic' => 'jobs#searchFormPublic', via: :get
  match '/searchPublicJobs' => 'jobs#searchPublic', via: :get
  match '/recommed'=>'jobs#recommend',via: :get
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :jobs
  resources :jobapplications
  resources :employers
  resources :employersessions, :only => [:new, :create, :destroy]
  resources :admins
  resources :admin_sessions, :only => [:new, :create, :destroy]
  resources :home
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
