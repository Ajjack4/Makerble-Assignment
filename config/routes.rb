Rails.application.routes.draw do
  root 'sessions#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # resources :patients
  resources :patients, only: [:index, :new, :create]

  
end