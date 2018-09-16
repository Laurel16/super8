Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
  get 'contact', to: 'pages#contact', as: :contact
   get 'crédits', to: 'pages#credits', as: :credits
   get 'search', to: 'pages#search', as: :search
  get 'about', to: 'pages#about', as: :about

  devise_for :users
  root to: 'pages#home'
  resources :movies

  put 'like' => 'movies#upvote'
  put 'unlike' => 'movies#downvote'

  resources :users



  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
