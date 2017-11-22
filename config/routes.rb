Rails.application.routes.draw do
 

  resources :users, only: [:new, :create]
  get '/signup', to: 'users#new'
  root to: 'blog_page#blogpage'


  resources :session, only: [:create]
  get '/signin', to: 'sessions#new'
  post  '/logout', to: 'sessions#logout'

end
