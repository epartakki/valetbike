Rails.application.routes.draw do
  
  resources :users, only: [:new, :create, :checkout]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'about', to: 'sessions#about'
  get 'FAQ', to: 'sessions#FAQ'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'payment', to: 'sessions#payment'
  post 'logout', to: 'sessions#logout'

  resources :places
  root to: "home#index"
end
