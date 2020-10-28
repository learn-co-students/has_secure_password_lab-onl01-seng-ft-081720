Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/new' => 'users#new'
  post '/new' => 'sessions#create'
  post '/new' => 'users#create'
  get '/home' => 'users#home'
end
