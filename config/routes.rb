Rails.application.routes.draw do
  root to: 'places#index'
  
  resources :places
  resources :posts
  delete '/logout', to: 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
end
