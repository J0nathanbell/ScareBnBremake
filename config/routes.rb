# config/routes.rb
Rails.application.routes.draw do
  root to: 'pages#home'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch 'users/:id', to: 'users#update', as: 'update_user'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
