Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :cards, only: [:index, :show, :new, :create, :edit, :update]
  resources :pools, only: [:index, :show]
  resources :programs, only: [:new, :create]
  resources :trainings, only: [:new, :create]
end
