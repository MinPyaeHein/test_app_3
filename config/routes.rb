Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :users
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new, :destroy]
  delete 'users/:id', to: 'users#destroy', as: :destroy_user
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
