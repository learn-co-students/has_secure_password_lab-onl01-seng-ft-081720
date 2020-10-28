Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sesssions#destroy'
  
  root 'users#home'

  resources :users

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'

  # resources :users, only: [:new, :create]

  # root 'welcome#home'
end
