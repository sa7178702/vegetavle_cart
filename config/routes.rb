Rails.application.routes.draw do
  get 'orders/index'
  devise_for :users
  get 'home/index'
  get 'home/index'
  root to: "home#index"
  resources :vegetables
  resources :categories
  resources :maps
  resources :addresses
  resources :orders
  post '/add_to_cart', to: 'vegetables#add_to_cart'
  post '/create', to: 'orders#create'
  post '/incr_quantity', to: 'vegetables#incr_quantity'
  post '/decr_quantity', to: 'vegetables#decr_quantity'
  resources :cart_items

end

