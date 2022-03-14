Rails.application.routes.draw do
  get 'buy/index'
    namespace 'v1' do
      resources :api_tables
    end
  get 'orders/index'
  get 'orders_history/index'
  devise_for :users
  get 'home/index'
  get 'home/index'
  root to: "home#index"
  resources :vegetables
  resources :categories
  resources :maps
  resources :addresses
  resources :orders
  resources :order_histories
  resources :user_profiles
  resources :cart_items
  resources :buy
  post '/add_to_cart', to: 'vegetables#add_to_cart'
  post '/create', to: 'orders#create'
  post '/incr_quantity', to: 'vegetables#incr_quantity'
  post '/decr_quantity', to: 'vegetables#decr_quantity'
  get '/send_mail' => 'orders#send_mail'
  # resources :charges, only: [:new, :create]


end

