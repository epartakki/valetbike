Rails.application.routes.draw do
  
  resources :users, only: [:new, :create, :checkout]

  get 'login', to: 'stations#new'
  post 'login', to: 'stations#create'
  get 'welcome', to: 'stations#welcome'
  get 'about', to: 'stations#about'
  get 'how_it_works', to: 'stations#how_it_works'
  get 'FAQ', to: 'stations#FAQ'
  get 'authorized', to: 'stations#page_requires_login'
  get 'payment', to: 'stations#payment'
  get 'checkout', to: 'stations#checkout'
  post 'checkout', to: 'stations#check'
  post 'logout', to: 'stations#logout'
  get 'ride', to: 'stations#ride'
  get 'checkin', to: 'stations#checkin'
  post 'checkin', to: 'stations#process_checkin'

  resources :places
  root to: "stations#index"
end
