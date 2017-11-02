Rails.application.routes.draw do
  resources :trips
  get 'pages/confirmation'
  get 'pages/profile'

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  get 'profile', to: 'users#show', as: 'profile'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'showtrip', to: 'trips#index', as: 'showtrip'

  get 'plantrip', to: 'trips#new', as: 'plantrip'

  root 'sessions#new'


  resources :pages, only: [:confirmation, :profile]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
