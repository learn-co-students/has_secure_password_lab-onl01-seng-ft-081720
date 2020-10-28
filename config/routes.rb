Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'welcome#home'

  resources :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/login', to: 'sessions#destroy'


  get '/home/:user', to:'welcome#home', as: 'homepage'



end
