Rails.application.routes.draw do
resources :users, only:  [:create]
get '/signup', to: 'users#new'
root to: 'users#show'

resources :sessions, only: [:create]
get '/signin', to: 'sessions#new'
post '/logout', to: 'sessions#logout'
end
