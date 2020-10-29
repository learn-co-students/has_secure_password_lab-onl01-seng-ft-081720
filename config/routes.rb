Rails.application.routes.draw do
  resources :users
  get '/', to: 'users#index'

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
end
