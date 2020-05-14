Rails.application.routes.draw do

 
  devise_for :users
  root to:"products#index"

  resources :users_page 
  resources :categories
  resources :searches
  resources :products  do 
  
    resources :wains 
  end
      resources :wains 
      resources :boughts 
  get '/wains', to: 'wains#index'


end
