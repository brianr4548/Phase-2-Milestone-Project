Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #root 'home#index' 
  #-- this should create a homepage? but first we need to run
  root 'sessions#new'
  

  # -- rails generate controller home index -- in the terminal
  resources :users, only: [:new, :create, :show ]

  post '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout' 
  
  resources :cities
  resources :restaurants

  resources :reviews do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
 
  



end
