Rails.application.routes.draw do
  root to: "sessions#welcome"

  resources :users, only: [:new, :create, :checkout]

  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#login'
  put 'login', to: 'sessions#login'
  get 'welcome', to: 'sessions#welcome'
  get 'about', to: 'sessions#about'
  get 'FAQ', to: 'sessions#FAQ'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'payment', to: 'sessions#payment'
  post 'logout', to: 'sessions#logout'

  resources :places
end
