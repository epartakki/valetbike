Rails.application.routes.draw do

  # homepage
  root to: 'sessions#welcome'
  # get 'home', to: "home#index"

  # static pages
  get 'about', to: 'static_pages#about'
  get 'faq', to: 'static_pages#faq'

  # routes for map
  get 'map', to: 'map#index'
  
  resources :bikes, only: [:read]
  resources :stations, only: [:read]

  # routes for pricing/payment
  get   'pricing', to: 'static_pages#pricing'
  get   'payment', to: 'sessions#payment'

  # routes for signup/login/logout
  resources :users, only: [:new, :create] # user for creating a new user (signing up)

  get   'login',  to: 'sessions#new'
  post  'login',  to: 'sessions#create' # logs in a user by creating a new session

  get   'account', to: 'sessions#account' # requires authorization to access acount page
  post  'logout', to: 'sessions#destroy' # logs user out

  # resources :places

end
