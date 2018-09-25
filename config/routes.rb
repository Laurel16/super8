Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
   get 'crédits', to: 'pages#credits', as: :credits
   get 'search', to: 'pages#search', as: :search
  get 'about', to: 'pages#about', as: :about


  devise_for :users
  root to: 'pages#home'
  resources :movies



  resources :users

  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  match "/old_path_to_posts/:id", to: redirect("/posts/%{id}s")

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
