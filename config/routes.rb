Rails.application.routes.draw do

  # homepage
  root to: 'sessions#welcome'

  # static pages
  get 'about', to: 'sessions#about'
  get 'faq', to: 'sessions#faq'

  # routes for map
  get 'map', to: 'sessions#map'
  
  resources :bikes, only: [:read]
  resources :stations, only: [:read]

  # routes for pricing/payment
  get   'pricing', to: 'sessions#pricing'
  get   'payment', to: 'sessions#payment'

  # routes for signup/login/logout
  resources :users, only: [:create] # user for creating a new user (signing up)
  get   'signup', to: 'users#new'

  get   'login',  to: 'sessions#new'
  post  'login',  to: 'sessions#create' # logs in a user by creating a new session

  get   'account', to: 'sessions#account' # requires authorization to access acount page
  post  'logout', to: 'sessions#destroy' # logs user out

end