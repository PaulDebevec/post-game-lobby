Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :game_blogs
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
