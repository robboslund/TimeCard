Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'employees#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  post 'employees/check' => 'employees#check', as: :check
  get 'employees/punch_hours' => 'employees#punch_hours', as: :punch_hours
  get 'employees/view_hours' => 'employees#view_hours', as: :view_hours
  post 'employees/add_hours' => 'employees#add_hours', as: :add_hours
  get 'employees/manager_view_hours' => 'managers#manager_view_hours', as: :manager_view_hours
  post 'employees/manager_view_hours/change_status' => 'managers#change_status', as: :status
  get 'employees/logout' => 'employees#logout', as: :logout
  
  get 'sessions/index' => 'sessions#index', as: :session_index
  get 'sessions/logout' => 'sessions#destroy', as: :session_logout

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  

  resources :sessions, only: [:create, :destroy]
  resources :employees
  
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
