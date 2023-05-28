Rails.application.routes.draw do
  root to: 'places#index'
  
  resources :places
  resources :posts
 
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  
  get "logout", :to => "sessions#destroy", as: :logout
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
end
