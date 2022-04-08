Rails.application.routes.draw do

  root to: 'sessions#welcome'
  
  resources :users, only: [:new, :create, :checkout]

  get 'about', to: 'sessions#about'
  get 'map', to: 'sessions#map'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'about', to: 'sessions#about'
  get 'FAQ', to: 'sessions#FAQ'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'payment', to: 'sessions#payment'
  post 'logout', to: 'sessions#logout'

  resources :places
end