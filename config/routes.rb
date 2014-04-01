AffableBean::Application.routes.draw do

  root 'market#index'

  get '/category/:id', to: 'market#category', as: 'category'
  post '/addtocart/:id', to: 'market#add_to_cart', as: 'add_to_cart'
  get '/viewcart', to: 'market#view_cart', as: 'view_cart'
  post '/updatecart/:id', to: 'market#update_cart', as: 'update_cart'
  get '/checkout', to: 'market#checkout', as: 'checkout'
  post '/purchase', to: 'market#purchase', as: 'purchase'
  get '/clearcart', to: 'market#clear_cart', as: 'clear_cart'
  get '/chooseLanguage', to: 'market#index', as: 'choose_language'

  get '/admin', to: 'admin#index', as: 'admin'
  post '/admin/sign_in', to: 'admin#sign', as: 'sign_in'
  get '/admin/login', to: 'admin#login', as: 'login'
  get '/admin/logout', to: 'admin#logout', as: 'logout'
  get '/admin/viewCustomers', to: 'admin#view_customers', as: 'customers'
  get '/admin/viewOrders', to: 'admin#view_orders', as: 'orders'
  get '/admin/customerRecord/:id', to: 'admin#customer_record', as: 'customer_record'
  get '/admin/orderRecord/:id', to: 'admin#order_record', as: 'order_record'


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
