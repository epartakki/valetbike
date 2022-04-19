Rails.application.routes.draw do

  # homepage
  root to: 'sessions#welcome'
  # root to: 'static_pages#home'
  # get 'home', to: "home#index"

<<<<<<< HEAD
  # static pages
  get 'about', to: 'sessions#about'
  get 'faq', to: 'sessions#faq'
=======
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#login'
  put 'login', to: 'sessions#login'
  get 'map', to: 'sessions#map'
>>>>>>> origin/master
  get 'welcome', to: 'sessions#welcome'

  # routes for map
  get 'map', to: 'sessions#map'
  
  resources :bikes, only: [:read]
  resources :stations, only: [:read]

  # routes for pricing/payment
  get   'pricing', to: 'sessions#pricing'
  get   'payment', to: 'sessions#payment'

  # routes for signup/login/logout
  resources :users, only: [:new, :create] # user for creating a new user (signing up)

  get   'login',  to: 'sessions#new'
  post  'login',  to: 'sessions#create' # logs in a user by creating a new session

  get   'signup',  to: 'sessions#signup'
  post  'signup',  to: 'sessions#signup' # logs in a user by creating a new session

  get   'account', to: 'sessions#account' # requires authorization to access acount page
  post  'logout', to: 'sessions#destroy' # logs user out

  # resources :places

end