Rails.application.routes.draw do

  root to: 'sessions#welcome'
  
  resources :users, only: [:new, :create, :checkout]

  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#login'
  put 'login', to: 'sessions#login'

  get 'signup', to: 'sessions#signup'
  post 'signup', to: 'sessions#signup'
  put 'signup', to: 'sessions#signup'

  get 'pricing', to: 'sessions#pricing'
  post 'pricing', to: 'sessions#pricing'
  put 'pricing', to: 'sessions#pricing'

  get 'payment', to: 'sessions#payment'
  post 'payment', to: 'sessions#payment'
  put 'payment', to: 'sessions#payment'


  get 'map', to: 'sessions#map'
  get 'welcome', to: 'sessions#welcome'
  get 'about', to: 'sessions#about'
  get 'faq', to: 'sessions#faq'
  get 'authorized', to: 'sessions#page_requires_login'
  post 'logout', to: 'sessions#logout'
  get 'account', to: 'sessions#account'

  resources :places

end
