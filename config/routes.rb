Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  root to: 'pages#home'
  resources :movies
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
